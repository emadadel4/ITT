function ExecuteCommand {
    param (
        [string]$Name,
        [string]$Command
    )
    try {
        #Add-Log -Message "$Name" -Level "INFO"
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$Command`"" -NoNewWindow -Wait
    } catch {
        Write-Host "Error executing command '$Command': $_"
    }
}