function Remove-Registry {
    param (
        [Parameter(Mandatory=$true)]
        [string]$RegistryPath,
        [Parameter(Mandatory=$true)]
        [string]$Folder
    )

    try {
        # Combine the registry path and folder to create the full registry key path
        $KeyPath = "$RegistryPath\\$Folder"

        # Check if the registry key exists
        if (Test-Path "Registry::$KeyPath") {
            # Delete the registry key and all subkeys recursively
            Remove-Item -Path "Registry::$KeyPath" -Recurse -Force
        } else {
            Add-Log -Message "Registry key '$KeyPath' does not exist." -Level "INFO"
        }
    }
    catch {
        Write-Host "An error occurred: $_" -ForegroundColor red
    }
}