Function Invoke-DarkMode {

    Param($DarkMoveEnabled)
    Try{

        $DarkMode = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode").DarkMode


        if ($DarkMoveEnabled -eq $false){
            $DarkMoveValue = 0

            if($DarkMode -eq "none")
            {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))
            }
        }
        else {
            $DarkMoveValue = 1

            if($DarkMode -eq "none")
            {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
            }
        }

        $Path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty -Path $Path -Name AppsUseLightTheme -Value $DarkMoveValue
        Set-ItemProperty -Path $Path -Name SystemUsesLightTheme -Value $DarkMoveValue

        Stop-Process -Name explorer -Force
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}