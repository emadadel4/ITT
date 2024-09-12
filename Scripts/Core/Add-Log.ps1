function Add-Log {

    <#
    .Options
    INFO
    WARNING
    ERROR

    .Example
        Add-Log -Message "ARE YOU 0 OR 1?" -Level "WARNING"
    #>

    param (
        [string]$Message, # Content of Message
        [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
    )

    # Get the current timestamp
    $timestamp = Get-Date -Format "hh:mm tt"

    # Determine the color based on the log level
    switch ($Level.ToUpper()) {
        "INFO" { $color = "White" }
        "WARNING" { $color = "Yellow" }
        "ERROR" { $color = "Red" }
        default { $color = "White" }
    }

    # Construct the log message
    $logMessage = "$Message"
    $date =  "[$timestamp $Level]"

    # Write the log message to the console with the specified color
    Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
    Write-Host "" -ForegroundColor $color

}