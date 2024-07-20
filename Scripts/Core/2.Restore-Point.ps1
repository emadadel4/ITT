function RestorePoint {

    Invoke-ScriptBlock -ScriptBlock {

        function Add-Log {
            param (
                [string]$Message, # Content of Message
                [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
            )
        
            # Get the current timestamp
            $timestamp = Get-Date -Format "hh:mm tt"
        
            # Determine the color based on the log level
            switch ($Level.ToUpper()) {
                "INFO" { $color = "Green" }
                "WARNING" { $color = "Yellow" }
                "ERROR" { $color = "Red" }
                default { $color = "White" }
            }
        
            # Construct the log message
            $logMessage = "$Message"
            $date =  "[$timestamp $Level]"
        
            # Write the log message to the console with the specified color
            Write-Host "`n` " -ForegroundColor $color
            Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
            Write-Host "" -ForegroundColor $color
        }

        Try {
            Add-Log -Message "Creating Restore point..." -Level "INFO"
            Checkpoint-Computer -Description "ITT" -ErrorAction Stop
            Add-Log -Message "Created successfully" -Level "INFO"
        } Catch {
            Write-Host "Failed to create a restore point. Error: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}
