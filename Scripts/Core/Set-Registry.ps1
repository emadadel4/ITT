function Set-Registry {

    param (
        $Name,
        $Type,
        $Path,
        $Value
    )
    
    try
    {
        # Check if the registry path exists
        if (-not (Test-Path -Path $Path)) {
            Write-Output "Registry path does not exist. Creating it..."
            # Try to create the registry path
            try {
                New-Item -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop | Out-Null
                #Add-Log -Message "Registry path created successfully." -Level "INFO"
            } catch {
                Add-Log -Message "Failed to create registry path: $_" -Level "ERROR"
            }
        } else {
            Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
        }
    }

    catch {
        Write-Error "An error occurred: $_"
    }
}