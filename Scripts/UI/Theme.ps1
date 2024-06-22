function ToggleTheme {
    
    try {

        if ($sync.searchInput = $sync['window'].FindName('themeText').IsChecked -eq $true)
        {
            Switch-ToDarkMode
        } 
        else
        {
            Switch-ToLightMode
        }
        
    }
    catch {
        Write-Host "Error toggling theme: $_"
    }

    $sync['window'].FindName('themeText').IsChecked = -not $sync['window'].FindName('themeText').IsChecked

}
function Switch-ToDarkMode {
    try {

        $theme = $sync['window'].FindResource("Dark")
        Update-Theme $theme "true"
    } catch {
        Write-Host "Error switching to dark mode: $_"
    }
}
function Switch-ToLightMode {
    try {
        $theme = $sync['window'].FindResource("Light")
        Update-Theme $theme "false"
    } catch {
        Write-Host "Error switching to light mode: $_"
    }
}
function Update-Theme ($theme, $mode) {
    $sync['window'].Resources.MergedDictionaries.Clear()
    $sync['window'].Resources.MergedDictionaries.Add($theme)
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value $mode -Force

}
function SwitchToSystem {

    try {

        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value "none" -Force

        $AppsTheme = (Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme")

        switch ($AppsTheme) {
            "0" {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))
            }
            "1" {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
            }
            Default {
                Write-Host "Unknown theme value: $AppsTheme"
            }
        }
    }
    catch {
        Write-Host "Error occurred: $_"
    }
}