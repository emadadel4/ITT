function Add-Log {

   <#
        .SYNOPSIS
        Logs a message to the console with a specified severity level and color.

        .DESCRIPTION
        This function writes a log message to the console with a timestamp and specified severity level. The message's color varies based on the log level (INFO, WARNING, ERROR) to help differentiate the severity of log entries. The function also handles default colors for any unspecified levels.

        .PARAMETER Message
        The content of the log message to be displayed. This parameter is required.

        .PARAMETER Level
        The severity level of the message. Options are:
        - INFO (default): Standard informational messages.
        - WARNING: Warnings that indicate potential issues.
        - ERROR: Error messages indicating critical issues.

        .OPTIONS
        INFO
        WARNING
        ERROR

        .EXAMPLE
        Add-Log -Message "ARE YOU 0 OR 1?" -Level "WARNING"
        Logs the message "ARE YOU 0 OR 1?" to the console with a yellow color indicating a warning.

        .NOTES
        - The `Level` parameter is case-insensitive and can be specified in any case format.
        - The default color for log messages is white if the level is not specified or does not match predefined options.
        - The function uses `Write-Host` for output, which may not be suitable for all logging scenarios (e.g., persistent logs).
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
    Write-Host " $date" -ForegroundColor $color ; Write-Host " $logMessage" -ForegroundColor $color 
    Write-Host "" -ForegroundColor $color

}