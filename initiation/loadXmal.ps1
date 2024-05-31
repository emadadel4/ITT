# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'sync',$sync,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

# Create the runspace pool
$sync.runspace = [runspacefactory]::CreateRunspacePool(
    1,                      
    $maxthreads,            
    $InitialSessionState,   
    $Host                   
)

# Open the RunspacePool instance
$sync.runspace.Open()

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML

# Read the XAML file
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
try { 
    
    $sync["window"] = [Windows.Markup.XamlReader]::Load( $reader )
    $currentCulture = [System.Globalization.CultureInfo]::CurrentCulture
    $shortCulture = $currentCulture.Name.Substring(0,2)
    
    # Check if the registry key exists
    if (-not (Test-Path $sync.registryPath))
    {
        New-Item -Path "HKCU:\Software\itt.emadadel" -Force *> $null
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value "false" -Force 
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "$shortCulture" -Force 
    }

    $sync.isDarkMode = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode").DarkMode
    $sync.Langusege  = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales").locales

    if($sync.Langusege -ne "en")
    {
        switch ($sync.Langusege) {
            "en" {
                $sync["window"].DataContext = $sync.database.locales.en
            }
            "ar" {
                $sync["window"].DataContext = $sync.database.locales.ar
            }
            default {
                # Default to English for any other culture or invalid input
                $sync["window"].DataContext = $sync.database.locales.$($shortCulture)
                Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "$shortCulture" -Force 
                #Write-Host "fallback to default lang"
            }
        }
    }
    else
    {
        $sync["window"].DataContext = $sync.database.locales.$($sync.Langusege)
    }

    # Check if $themeValue is equal to "true"
    if ($sync.isDarkMode -eq "true")
    {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))

    } else {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
    }

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

# Select all elements with a Name attribute using XPath and iterate over them
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {
    # Assign each element to a variable in $sync dictionary
    $sync[$($_.Name)] = $sync["window"].FindName($_.Name)
}

# Iterate over keys in $sync dictionary
$sync.Keys | ForEach-Object {
    $element = $sync[$_]

    # Check if the element exists
    if ($element) {

        # Check if the element is a Button
        if ($element.GetType().Name -eq "Button") {
            # Add a click event handler to the button

            $element.Add_Click({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a MenuItem
        if ($element.GetType().Name -eq "MenuItem") {
            # Add a click event handler to the MenuItem

            $element.Add_Click({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a TextBox
        if ($element.GetType().Name -eq "TextBox") {

            $element.Add_TextChanged({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })

            $element.Add_GotFocus({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a Ellipse
        if ($element.GetType().Name -eq "Ellipse") {
                # Add a click event handler to the Ellipse
    
                $element.add_MouseLeftButtonDown({
                    param([System.Object]$s)
                    Invoke-Button $s.Name
                })
        }

        # Check if the element is a ComboBox
        if ($element.GetType().Name -eq "ComboBox") {
            # Add a click event handler to the ComboBox

            $element.add_SelectionChanged({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a TabControl
        if ($element.GetType().Name -eq "TabControl") {
            # Add a click event handler to the TabControl

            $element.add_SelectionChanged({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }
    }
}

# Catch controls
$sync.AppsListView = $sync['window'].FindName("appslist")
$sync.TweaksListView = $sync['window'].FindName("tweakslist")
$sync.currentList

# Buttons
$sync.Description = $sync['window'].FindName("description")
$sync.Quotes = $sync['window'].FindName("quotes")
$sync.itemLink = $sync['window'].FindName('itemLink')
$sync.installBtn = $sync['window'].FindName('installBtn') 
$sync.applyBtn = $sync['window'].FindName('applyBtn') 
$sync.category = $sync['window'].FindName('category')
$sync.searchInput = $sync['window'].FindName('searchInput')