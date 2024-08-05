function Invoke-NumLock {

    param(
        [Parameter(Mandatory = $true)]
        [bool]$Enabled
    )

    try {
        $value = if ($Enabled) { 0 } else { 2 }

        New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS -ErrorAction Stop
        $Path = "HKU:\.Default\Control Panel\Keyboard"
        Set-ItemProperty -Path $Path -Name InitialKeyboardIndicators -Value $value -ErrorAction Stop
    }
    catch {
        Write-Warning "An error occurred: $($_.Exception.Message)"
    }
}
