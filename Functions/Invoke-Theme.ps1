#region Theme Functions

# Function to toggle between dark and light modes
function Toggle-Theme {

    try {
    if ($sync.isDarkMode -eq "Dark")
     {
        Switch-ToLightMode
        $sync.isDarkMode = -not $sync.isDarkMode


    } else {
        Switch-ToDarkMode
        $sync.isDarkMode = -not $sync.isDarkMode


    }
    } catch {
        Write-Host "Error toggling theme: $_"
    }
}

# Function to switch to dark mode
function Switch-ToDarkMode {
    try {
        $sync['window'].FindName('themeText').Header = "Light Mode"
        $theme = $sync['window'].FindResource("DarkTheme")
        Update-Theme $theme "Dark"
    } catch {
        Write-Host "Error switching to dark mode: $_"
    }
}

# Function to switch to light mode
function Switch-ToLightMode {
    try {
        $sync['window'].FindName('themeText').Header = "Dark Mode"
        $theme = $sync['window'].FindResource("LightTheme")
        Update-Theme $theme "Light"
    } catch {
        Write-Host "Error switching to light mode: $_"
    }
}

# Function to update the theme
function Update-Theme ($theme, $mode) {
    $sync['window'].Resources.MergedDictionaries.Clear()
    $sync['window'].Resources.MergedDictionaries.Add($theme)
    Set-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "Theme" -Value $mode -Force
}

#endregion
