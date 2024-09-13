function Download-And-ExtractZip {

    <#
        .SYNOPSIS
        Downloads a ZIP file from a specified URL, extracts it to a destination directory, optionally creates a shortcut to an executable, and optionally runs the executable.

        .DESCRIPTION
        This function performs several tasks:
        1. Downloads a ZIP file from the given URL to a specified directory.
        2. Extracts the contents of the ZIP file to the destination directory.
        3. Optionally creates a desktop shortcut for a specified executable file extracted from the ZIP.
        4. Optionally runs the executable file with provided arguments.

        .PARAMETER url
        The URL from which to download the ZIP file.

        .PARAMETER destinationDir
        The directory where the ZIP file will be downloaded and extracted. The default is "C:\ProgramData\ITT\Downloads".

        .PARAMETER Createshortcut
        Specifies whether to create a shortcut to the executable file. Set to "yes" to create a shortcut.

        .PARAMETER exeFileName
        The name of the executable file for which to create a shortcut. This file should be present in the ZIP file.

        .PARAMETER run
        Specifies whether to run the executable after extraction. Set to "yes" to execute the file.

        .PARAMETER exeArgs
        Arguments to pass to the executable file when running it. This is used if the `run` parameter is set to "yes".

        .EXAMPLE
        Download-And-ExtractZip -url "http://example.com/file.zip" -Createshortcut "yes" -exeFileName "setup.exe" -run "yes" -exeArgs "/silent"

        .EXAMPLE
        Download-And-ExtractZip -url "http://example.com/file.zip" -Createshortcut "no" -exeFileName "app.exe" -run "no"

        .NOTES
        - Ensure that the destination directory has the appropriate permissions for creating files and shortcuts.
        - The function creates a shortcut on the desktop only if the executable file is found in the extracted contents.
        - Errors during download, extraction, shortcut creation, or execution will be logged and reported.
        - If `Createshortcut` or `run` is not specified as "yes", those actions will be skipped.
    #>

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

    <#
        .SYNOPSIS
        Downloads an executable file from a specified URL, optionally creates a desktop shortcut, and optionally runs the executable with given arguments.

        .DESCRIPTION
        This function performs the following tasks:
        1. Downloads an executable file from a specified URL to a defined destination directory.
        2. Optionally creates a shortcut to the executable on the desktop.
        3. Optionally runs the executable file with provided arguments.

        .PARAMETER name
        The name of the executable file (without the extension). Used for constructing the destination path and shortcut name.

        .PARAMETER url
        The URL from which to download the executable file.

        .PARAMETER type
        The file extension of the executable file (e.g., "exe").

        .PARAMETER exeArgs
        Arguments to pass to the executable file when running it. This is used if the `run` parameter is set to "yes".

        .PARAMETER outputDir
        The directory where the executable file will be downloaded. This path is relative to `C:\ProgramData`.

        .PARAMETER shortcut
        Specifies whether to create a shortcut to the executable on the desktop. Set to "yes" to create a shortcut.

        .PARAMETER run
        Specifies whether to run the executable after downloading. Set to "yes" to execute the file.

        .EXAMPLE
        Download-And-Install-Exe -name "setup" -url "http://example.com/setup.exe" -type "exe" -exeArgs "/silent" -outputDir "MyApp" -shortcut "yes" -run "yes"

        .EXAMPLE
        Download-And-Install-Exe -name "update" -url "http://example.com/update.exe" -type "exe" -exeArgs "/update" -outputDir "Updates" -shortcut "no" -run "yes"

        .NOTES
        - Ensure that the output directory exists or can be created with appropriate permissions.
        - The function creates a shortcut on the desktop only if the `shortcut` parameter is set to "yes" and the file is successfully downloaded.
        - The executable file will be run with the provided arguments if the `run` parameter is set to "yes".
        - Errors during download, shortcut creation, or execution will be logged and reported.
        - If `shortcut` or `run` is not specified as "yes", those actions will be skipped.
    #>

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