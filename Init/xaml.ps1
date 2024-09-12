# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'itt',$itt,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

$desiredFunctions = @(
    
'Invoke-Tweaks',
'Remove-Registry',
'Set-Registry',
'Invoke-Install' , 
'Install-App' , 
'InvokeCommand' ,
'Add-Log',
'Disable-Service',
'Uninstall-AppxPackage',
'Get-SelectedApps',
'Finish',
'Message',
'Notify',
'UpdateUI',
'Download-And-Install-Exe',
'Download-And-ExtractZip',
'Install-Choco',
'ExecuteCommand',
'Set-RegistryValue',
'Remove-RegistryValue',
'Disable-Service',
'Uninstall-AppxPackage',
'Remove-Registry'
)

$functions = Get-ChildItem function:\ | Where-Object { $_.Name -in $desiredFunctions }
foreach ($function in $functions) {
    $functionDefinition = Get-Content function:\$($function.name)
    $functionEntry = New-Object System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList $($function.name), $functionDefinition
    $initialSessionState.Commands.Add($functionEntry)
    Write-Output "Added function: $($function.Name)"
}

# Create and open the runspace pool
$itt.runspace = [runspacefactory]::CreateRunspacePool(1, $maxthreads, $InitialSessionState, $Host)
$itt.runspace.Open()

[xml]$XAML = $inputXML

# Read the XAML file
$reader = [System.Xml.XmlNodeReader]::new($xaml)

try {
    $itt["window"] = [Windows.Markup.XamlReader]::Load($reader)
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

try {
    
    #===========================================================================
    #region Create default keys 
    #===========================================================================
    
        $appsTheme = Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"
        $fullCulture = Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName"
        $shortCulture = $fullCulture.Split('-')[0]

        # Ensure registry key exists and set defaults if necessary
        if (-not (Test-Path $itt.registryPath)) {
            New-Item -Path $itt.registryPath -Force | Out-Null
            Set-ItemProperty -Path $itt.registryPath -Name "DarkMode" -Value "none" -Force
            Set-ItemProperty -Path $itt.registryPath -Name "locales" -Value $shortCulture -Force
            Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "100" -Force
            Set-ItemProperty -Path $itt.registryPath -Name "PopupWindow" -Value "On" -Force
        }

    #===========================================================================
    #endregion Create default keys 
    #===========================================================================

    #===========================================================================
    #region Set Language based on culture
    #===========================================================================
        
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
        $itt["window"].DataContext = $itt.database.locales.Controls.$locale
        $itt.Language = $locale

    #===========================================================================
    #endregion Set Language based on culture
    #===========================================================================

    #===========================================================================
    #region Check theme settings
    #===========================================================================
    
    $itt.isDarkMode = (Get-ItemProperty -Path $itt.registryPath -Name "DarkMode").DarkMode

    $themeResource = if ($itt.isDarkMode -eq "true") { "Dark" }
                     elseif ($itt.isDarkMode -eq "false") { "Light" }
                     else {
                         switch ($appsTheme) {
                             "0" { "Dark" }
                             "1" { "Light" }
                         }
                     }
    $itt["window"].Resources.MergedDictionaries.Add($itt["window"].FindResource($themeResource))
    $itt.CurretTheme = $themeResource
    #===========================================================================
    #endregion Check theme settings
    #===========================================================================

    #===========================================================================
    #region Get user Settings from registry
    #===========================================================================
    $itt.Music = (Get-ItemProperty -Path $itt.registryPath -Name "Music").Music
    $itt.mediaPlayer.settings.volume = "$($itt.Music)"

    switch($itt.Music){
        "100" { $itt["window"].title = "Install Tweak Tool #StandWithPalestine 🔊"}
        "0" {$itt["window"].title = "Install Tweak Tool #StandWithPalestine 🔈"}
    }

    $itt.PopupWindow = (Get-ItemProperty -Path $itt.registryPath -Name "PopupWindow").PopupWindow
    #===========================================================================
    #endregion Get user Settings from registry
    #===========================================================================
    
    # init taskbar icon
    $taskbarItemInfo = New-Object System.Windows.Shell.TaskbarItemInfo
    $itt["window"].TaskbarItemInfo = $taskbarItemInfo
    $taskbarItemInfo.Overlay = $itt.icon
}
catch {
    Write-Host "Error: $_"
    Write-Host "Error: Some keys not created or the key not found"
}

# List Views
$itt.TabControl = $itt["window"].FindName("taps")
$itt.AppsListView = $itt["window"].FindName("appslist")
$itt.TweaksListView = $itt["window"].FindName("tweakslist")
$itt.SettingsListView = $itt["window"].FindName("SettingsList")
$itt.currentList

# Buttons and Inputs
$itt.Description = $itt["window"].FindName("description")
$itt.Quotes = $itt["window"].FindName("quotes")
$itt.InstallBtn = $itt["window"].FindName("installBtn")
$itt.ApplyBtn = $itt["window"].FindName("applyBtn")
$itt.Category = $itt["window"].FindName("category")
$itt.SearchInput = $itt["window"].FindName("searchInput")
$itt.installText = $itt["window"].FindName("installText")
$itt.installIcon = $itt["window"].FindName("installIcon")
$itt.applyText = $itt["window"].FindName("applyText")
$itt.applyIcon = $itt["window"].FindName("applyIcon")