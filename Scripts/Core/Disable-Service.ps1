function Disable-Service {
    
    param(
        $ServiceName,
        $StartupType
    )

    try {


        # Check if the service exists
        if (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue) {
            Set-Service -Name $ServiceName -StartupType $StartupType -ErrorAction Stop
            Stop-Service -Name $ServiceName 
            Add-Log -Message "Service '$ServiceName' disabled." -Level "INFO"
        }
        else {
            Add-Log -Message "Service '$ServiceName' not found." -Level "INFO"
        }
    }
    catch
    {
        Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
    }
}