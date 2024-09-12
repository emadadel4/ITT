function RestorePoint {

    Invoke-ScriptBlock -ScriptBlock {

        Try {
            Add-Log -Message "Creating Restore point..." -Level "INFO"
            Checkpoint-Computer -Description "ITT" -ErrorAction Stop
            Add-Log -Message "Created successfully" -Level "INFO"
        } Catch {
            Write-Host "Failed to create a restore point. Error: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}
