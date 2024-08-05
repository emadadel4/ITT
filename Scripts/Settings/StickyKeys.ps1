Function Invoke-StickyKeys {

    Param($Enabled)
    Try {
        if ($Enabled -eq $false){
            $value = 510
        }
        else {
            $value = 58
        }
        $Path = "HKCU:\Control Panel\Accessibility\StickyKeys"
        Set-ItemProperty -Path $Path -Name Flags -Value $value
        Stop-Process -Name explorer -Force
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
    }
}