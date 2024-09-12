function Download-And-ExtractZip {
    param (
        [string]$url,
        [string]$destinationDir = "C:\ProgramData\ITT\Downloads",
        [string]$Createshortcut,
        [string]$exeFileName,
        [string]$run,
        [string]$exeArgs
    )

    # Ensure destination directory exists
    if (-not (Test-Path -Path $destinationDir)) {
        New-Item -ItemType Directory -Path $destinationDir -Force
    }

    # Define paths
    $zipFileName = [System.IO.Path]::GetFileName($url)
    $downloadPath = [System.IO.Path]::Combine($destinationDir, $zipFileName)
    $exePath = [System.IO.Path]::Combine($destinationDir, $exeFileName)
    
    # Create the shortcut name based on the .exe file name
    $shortcutName = [System.IO.Path]::GetFileNameWithoutExtension($exeFileName) + ".lnk"
    $desktopPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), $shortcutName)

    try {
        Add-Log -Message "Downloading using Invoke-WebRequest" -Level "INFO"
        Invoke-WebRequest -Uri $url -OutFile $downloadPath

        # Extract the file
        Write-Output "Extracting file to: $destinationDir"
        Expand-Archive -Path $downloadPath -DestinationPath $destinationDir -Force

        #create a shortcut
        if ($Createshortcut -eq "yes") {
            if (Test-Path -Path $exePath) {
                Write-Output "Creating shortcut at: $desktopPath"
                # Create a shortcut on the desktop
                $shell = New-Object -ComObject WScript.Shell
                $shortcut = $shell.CreateShortcut($desktopPath)
                $shortcut.TargetPath = $exePath
                $shortcut.Save()
                Write-Output "Shortcut created successfully."
            } else {
                Write-Error "The specified .exe file '$exeFileName' was not found in the extracted content."
            }
        }

        # Optionally run the executable
        if ($run -eq "yes") {
            Write-Output "Starting installation"
            Start-Process -FilePath $exePath -ArgumentList $exeArgs -NoNewWindow
        }
    } catch {
        Write-Error $_.Exception.Message
    }
}

function Download-And-Install-Exe {
    param (
        [string]$name,
        [string]$url,
        [string]$type,
        [string]$exeArgs,
        [string]$outputDir,
        [string]$shortcut,
        [string]$run
    )

    $destination = "$env:ProgramData\$outputDir\$name\$name.$type"
    $shortcutPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "$name.lnk")

    Add-Log -Message "Downloading using Invoke-WebRequest" -Level "INFO"

    try {
        # Create the output directory if it doesn't exist
        if (-not (Test-Path -Path (Split-Path -Path $destination -Parent))) {
            New-Item -ItemType Directory -Path (Split-Path -Path $destination -Parent) | Out-Null
        }
        # Download the file
        Invoke-WebRequest -Uri $url -OutFile $destination
        Add-Log -Message "Downloaded any saved in $destination " -Level "INFO"

        if ($shortcut -eq "yes") {
            # Create a shortcut on the desktop
            $shell = New-Object -ComObject WScript.Shell
            $shortcut = $shell.CreateShortcut($shortcutPath)
            $shortcut.TargetPath = $destination
            $shortcut.Save()
            Add-Log -Message "Shortcut created on desktop" -Level "INFO"
        }
        if ($run -eq "yes") {
            Start-Process -Wait $destination -ArgumentList $exeArgs
        }
    }
    catch {
        throw "Error downloading EXE file: $_"
    }
}