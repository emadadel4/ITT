# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'sync',$sync,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

# Create and open the runspace pool
$sync.runspace = [runspacefactory]::CreateRunspacePool(1, $maxthreads, $InitialSessionState, $Host)
$sync.runspace.Open()

# Load required assembly
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML

# Read the XAML file
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
try { 
        $sync["window"] = [Windows.Markup.XamlReader]::Load( $reader )

        $AppsTheme = (Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme")

        # Get the full LocaleName from the registry
        $fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")

        # Extract the short form (before the hyphen)
        $shortCulture = $fullCulture.Split('-')[0]

    
    # Check if the registry key exists if not then create one
    if (-not (Test-Path $sync.registryPath))
    {
        New-Item -Path "HKCU:\Software\itt.emadadel" -Force *> $null
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value "none" -Force 
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "$($shortCulture)" -Force 
    }

    $sync.isDarkMode = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode").DarkMode
    $sync.Langusege  = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales").locales

    #===========================================================================
    #region Check for Langusege 
    #===========================================================================
    if($shortCulture -ne "en")
    {
        switch ($shortCulture) {
            "ar" {
                $sync["window"].DataContext = $sync.database.locales.Controls.ar
            }
            "en" {
                $sync["window"].DataContext = $sync.database.locales.Controls.en
            }
            default {
                # fallback to default lang
                $sync["window"].DataContext = $sync.database.locales.Controls.en
                Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "en" -Force 
            }
        }
    }
    else
    {
        $sync["window"].DataContext = $sync.database.locales.Controls.$($sync.Langusege)
    }
    #===========================================================================
    #endregion Check for Langusege 
    #===========================================================================

    #===========================================================================
    #region Check Theme
    #===========================================================================

    if($sync.isDarkMode -eq "true")
    {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))

    }elseif ($sync.isDarkMode -eq "false") 
    {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
    }
    else
    {
        switch ($AppsTheme) {
            "0" {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))
            }
            "1" {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
            }
        }
    }
    
    #===========================================================================
    #endregion Check Theme
    #===========================================================================

 }
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    Write-Host $error[0].Exception.Message -ForegroundColor Red
    If ($error[0].Exception.Message -like "*button*") {
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
}

# Catch controls
$sync.AppsListView = $sync['window'].FindName("appslist")
$sync.TweaksListView = $sync['window'].FindName("tweakslist")
$sync.SettingsListView = $sync['window'].FindName("SettingsList")
$sync.currentList

# Buttons
$sync.Description = $sync['window'].FindName("description")
$sync.Quotes = $sync['window'].FindName("quotes")
$sync.installBtn = $sync['window'].FindName('installBtn') 
$sync.applyBtn = $sync['window'].FindName('applyBtn') 
$sync.category = $sync['window'].FindName('category')
$sync.searchInput = $sync['window'].FindName('searchInput')