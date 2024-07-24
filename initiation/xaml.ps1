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
$reader = [System.Xml.XmlNodeReader]::new($xaml)

try {
    $sync["window"] = [Windows.Markup.XamlReader]::Load($reader)

    # Get theme and locale settings
    $appsTheme = Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"
    $fullCulture = Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName"
    $shortCulture = $fullCulture.Split('-')[0]

    # Ensure registry key exists and set defaults if necessary
    if (-not (Test-Path "HKCU:\Software\itt.emadadel")) {
        New-Item -Path "HKCU:\Software\itt.emadadel" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value "none" -Force
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value $shortCulture -Force
    }

    # Update locale in registry
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value $shortCulture -Force

    # Set language based on culture
    switch ($shortCulture) {
        "ar" { $locale = "ar" }
        "en" { $locale = "en" }
        "fr" { $locale = "fr" }
        "tr" { $locale = "tr" }
        "zh" { $locale = "zh" }
        "ko" { $locale = "ko" }
        "de" { $locale = "de" }
        "ru" { $locale = "ru" }
        "es" { $locale = "es" }
        default { $locale = "en" }
    }
    $sync["window"].DataContext = $sync.database.locales.Controls.$locale
    $sync.Langusege = $locale

    # Check theme settings
    $sync.isDarkMode = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode").DarkMode
    $themeResource = if ($sync.isDarkMode -eq "true") { "Dark" }
                     elseif ($sync.isDarkMode -eq "false") { "Light" }
                     else {
                         switch ($appsTheme) {
                             "0" { "Dark" }
                             "1" { "Light" }
                         }
                     }
    $sync["window"].Resources.MergedDictionaries.Add($sync["window"].FindResource($themeResource))
}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "Problem with the XAML code. Check syntax."
    Write-Host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*") {
        Write-Warning "Ensure <button> in `$inputXML does NOT have a Click=ButtonClick property. PS can't handle this."
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Check syntax and .NET installation."
}

# List Views
$sync.AppsListView = $sync["window"].FindName("appslist")
$sync.TweaksListView = $sync["window"].FindName("tweakslist")
$sync.SettingsListView = $sync["window"].FindName("SettingsList")
$sync.currentList

# Buttons and Inputs
$sync.Description = $sync["window"].FindName("description")
$sync.Quotes = $sync["window"].FindName("quotes")
$sync.InstallBtn = $sync["window"].FindName("installBtn")
$sync.ApplyBtn = $sync["window"].FindName("applyBtn")
$sync.Category = $sync["window"].FindName("category")
$sync.SearchInput = $sync["window"].FindName("searchInput")


$sync.installText = $sync["window"].FindName("installText")
$sync.installIcon = $sync["window"].FindName("installIcon")

$sync.applyText = $sync["window"].FindName("applyText")
$sync.applyIcon = $sync["window"].FindName("applyIcon")



