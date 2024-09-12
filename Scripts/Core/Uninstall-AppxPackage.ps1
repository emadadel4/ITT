function Uninstall-AppxPackage  {
        
    param (
        $Name
    )
       
    try {
        Add-Log -Message "Trying to remove $($Name)" -Level "INFO"
        #Get-AppxPackage "*$Name*" | Remove-AppxPackage -ErrorAction SilentlyContinue
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxPackage '*$Name*' | Remove-AppxPackage -ErrorAction SilentlyContinue" -NoNewWindow -Wait
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$Name*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" -NoNewWindow -Wait
    } catch {
        
    }
}