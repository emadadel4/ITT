function Invoke-Install {

    <#
        .SYNOPSIS
        Handles the installation of selected applications by invoking the appropriate installation methods.

        .DESCRIPTION
        The `Invoke-Install` function manages the process of installing applications based on user selection. It performs the following tasks:
        1. Checks if there are any selected applications to install.
        2. Displays a warning message if no applications are selected or if a process is already running.
        3. Shows a confirmation dialog to the user asking for permission to proceed with the installation.
        4. If confirmed, it filters the list view to show only selected items and starts the installation process.
        5. Updates the UI to reflect the installation status.
        6. Executes installation commands for applications using Chocolatey (`Choco`), Winget, or custom download methods.
        7. Updates the UI once the installation is complete and finishes the process.

        .PARAMETER None
        This function does not require any parameters.

        .EXAMPLE
        Invoke-Install

        .EXAMPLE
        To use this function in your script, simply call `Invoke-Install`. This will process the selected items for installation, check user confirmation, and execute the appropriate installation commands based on the type of application.

        .NOTES
        - The function starts by checking the count of selected applications using `Get-SelectedItems` with mode "Apps".
        - It uses a message box to confirm if the user wants to proceed with the installation.
        - The function updates the UI to reflect the installation status, including a button change and text update.
        - It installs applications using:
        - Chocolatey, if a `Choco` identifier is provided.
        - Winget, if a `Winget` identifier is provided.
        - Custom download methods (`Start-DownloadAndInstallExe` or `Start-DownloadAndUnzip`) for applications with default settings.
        - The function handles UI updates and cleanup operations post-installation using `UpdateUI` and `Finish`.
        - The `Invoke-ScriptBlock` function is used to execute the installation commands asynchronously.
    #>

  
    $selectedApps = Get-SelectedItems -Mode "Apps"

    if($itt.ProcessRunning) {
        Message -key "Pleasewait" -icon "Warning"
        return
    }


    if($selectedApps.Count -eq 0)
    {
        # Show Message
        Message -key "choseapp" -icon "Warning"
        return
    }
    else
    {
        # Show only selected item
        Show-Selected -ListView "AppsListView" -Mode "Filter"
    }

    $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).InstallMessage
    $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

   if($result -eq "no") {
        Show-Selected -ListView "AppsListView" -Mode "Default"
        Clear-Item -ListView "AppsListView"
        return
    }

    Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

        param($selectedApps)

        $itt.ProcessRunning = $true
        UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "downloading" -TextIcon "installIcon" -Icon "  " -Width "144"
        $itt["window"].Dispatcher.Invoke([action]{ Set-Taskbar -progress "Indeterminate" -value 0.01 -icon "logo" })

        $selectedApps | ForEach-Object {

            if ($_.Winget -ne "none" -or $_.Choco -ne "none")
            {
                Install-App -appName $_.Name -appWinget $_.Winget -appChoco $_.Choco

                # Debug
                #Write-Host $_.Winget $_.Choco
            }
            else
            {
                if($_.default.IsExcute -eq "true")
                {
                    Start-DownloadAndInstallExe -name "$($_.Name)" -url  $_.default.url -type $_.default.extinction -exeArgs $_.default.exeArgs -outputDir "ITT\Downloads\" -run $_.default.run -shortcut $_.default.shortcut
                }
                else
                {
                    Start-DownloadAndUnzip -url $_.default.url -shortcutName "$($_.Name)" -exeFileName $_.default.launcher -run $_.default.run -Createshortcut $_.default.shortcut -exeArgs $_.default.exeArgs
                }
            }
        }
        
        Finish -ListView "AppsListView"
        $itt.ProcessRunning = $false
    }
}

function Invoke-ApplyTweaks {

    <#
        .SYNOPSIS
        Handles the application of selected tweaks by executing the relevant commands, registry modifications, and other operations.

        .DESCRIPTION
        The `Invoke-ApplyTweaks` function manages the process of applying selected tweaks based on user selection. It performs the following tasks:
        1. Retrieves the list of selected tweaks using `Get-SelectedItems` with mode "Tweaks".
        2. Displays a warning message if a process is already running or if no tweaks are selected.
        3. Filters the list view to show only selected items and asks for user confirmation to proceed with applying tweaks.
        4. If confirmed, it starts the application of the selected tweaks.
        5. Executes the appropriate tweak operations based on the type of tweak (e.g., commands, registry modifications, Appx package removal, service management).
        6. Updates the UI to reflect the progress and completion of the tweak application.
        7. Finishes the process and logs a message indicating that some tweaks may require a restart.

        .PARAMETER None
        This function does not require any parameters.

        .EXAMPLE
        Invoke-ApplyTweaks

        .EXAMPLE
        To use this function in your script, call `Invoke-ApplyTweaks`. This will process the selected tweaks, ask for confirmation, and apply them according to their type.

        .NOTES
        - The function starts by checking the count of selected tweaks using `Get-SelectedItems` with mode "Tweaks".
        - It uses a message box to confirm if the user wants to proceed with applying the tweaks.
        - The function updates the UI to reflect the application status, including a button change and text update.
        - It applies tweaks by:
        - Executing commands specified in the tweak settings.
        - Modifying or deleting registry entries as per the tweak configuration.
        - Uninstalling Appx packages if specified.
        - Disabling services if required.
        - The function handles UI updates and cleanup operations post-application using `UpdateUI` and `Finish`.
        - The `Invoke-ScriptBlock` function is used to execute the tweak application commands asynchronously.
        - Additional logging is performed to track the status of the operation and provide feedback.
    #>

    
    $selectedApps = Get-SelectedItems -Mode "Tweaks"

    if($itt.ProcessRunning) {
        Message -key "Pleasewait" -icon "Warning"
        return
    }


    if($selectedApps.Count -eq 0)
    {
        Message -key "choseapp" -icon "Warning"
        return
    }
    else
    {
        Show-Selected -ListView "TweaksListView" -Mode "Filter"
    }

    $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).InstallMessage
    $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

   if($result -eq "no") 
    {
        Show-Selected -ListView "TweaksListView" -Mode "Default"
        Clear-Item -ListView "TweaksListView"
        return
    }

    Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

        param($selectedApps)

        $itt.ProcessRunning = $true
        UpdateUI -Button "ApplyBtn" -ButtonText "applyText" -Content "Applying" -TextIcon "applyIcon" -Icon "  " -Width "120"

        $itt["window"].Dispatcher.Invoke([action]{ Set-Taskbar -progress "Indeterminate" -value 0.01 -icon "logo" })


        foreach ($tweak in $selectedApps) {

            Add-Log -Message $tweak.Name -Level "INFO" 

            switch ($tweak.Type) {        
        
                "command" {
                    $tweak.Command | ForEach-Object { ExecuteCommand -Name $tweak.Name -Command $tweak.Command}
                }
                "Registry" {
                    $tweak.Modify | ForEach-Object {
                        Set-Registry -Name $_.Name -Type $_.Type -Path $_.Path -Value $_.Value
                    }
                    $tweak.Delete | ForEach-Object {
                        Remove-Registry -RegistryPath $_.Path -Folder $_.Name
                    }
                    if($tweak.Refresh -eq "true")
                    {
                        Add-Log -Message "Restarting explorer" -Level "INFO"
                        Refresh-Explorer
                    }
                }
                "AppxPackage" {
                    $tweak.removeAppxPackage | ForEach-Object { Uninstall-AppxPackage -Name $_.Name }
                    $tweak.Command | ForEach-Object {
                        ExecuteCommand -Name $tweak.Name -Command $tweak.Command 
                        # debug
                        #Write-Host $tweak.Command
                    }
                }
                "service" {
                    $tweak.Service | ForEach-Object { Disable-Service -ServiceName $_.Name -StartupType $_.StartupType }
                }
            }
        }

        Finish -ListView "TweaksListView"
        $itt.ProcessRunning = $false
    }
}