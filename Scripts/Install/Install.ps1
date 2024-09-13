function Invoke-Install {
  
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

        $selectedApps | ForEach-Object {

            if ($_.Choco -ne "none")
            {
                Install-App -appName $_.Name -appChoco $_.Choco

                # debug
                #Write-Host $_.Choco
                
            }elseif ($_.Winget -ne "none") {
                Install-App -appName $_.Name -appWinget $_.Winget

                # debug
                #Write-Host $_.Winget
            }
            else
            {
                if($_.default.IsExcute -eq "true")
                {
                    Download-And-Install-Exe -name "$($_.Name)" -url  $_.default.url -type $_.default.extinction -exeArgs $_.default.exeArgs -outputDir "ITT\Downloads\" -run $_.default.run -shortcut $_.default.shortcut
                }
                else
                {
                    Download-And-ExtractZip -url $_.default.url -shortcutName "$($_.Name)" -exeFileName $_.default.launcher -run $_.default.run -Createshortcut $_.default.shortcut -exeArgs $_.default.exeArgs
                }
            }
        }

        $itt.ProcessRunning = $false
        UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "InstallBtn" -TextIcon "installIcon" -Icon "  "
        Finish -ListView "AppsListView"
    }
}

function Invoke-ApplyTweaks {
    
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
        #Show-Selected -ListView "TweaksListView" -Mode "Default"
        Clear-Item -ListView "TweaksListView"
        return
    }

    Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

        param($selectedApps)

        $itt.ProcessRunning = $true
        UpdateUI -Button "ApplyBtn" -ButtonText "applyText" -Content "Applying" -TextIcon "applyIcon" -Icon "  " -Width "120"

        foreach ($tweak in $selectedApps) {

            Add-Log -Message $tweak.Name -Level "INFO" 

            switch ($tweak.Type) {        
        
                "command" {
                    $tweak.Command | ForEach-Object { ExecuteCommand -Name $tweak.Name -Command $_ }
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
                        Stop-Process -Name explorer -Force
                        Add-Log -Message "Restarting explorer" -Level "INFO"
                    }
                }
                "AppxPackage" {
                    $tweak.removeAppxPackage | ForEach-Object { Uninstall-AppxPackage -Name $_.Name }
                }
                "service" {
                    $tweak.Service | ForEach-Object { Disable-Service -ServiceName $_.Name -StartupType $_.StartupType }
                }
            }
        }

        $itt.ProcessRunning = $false
        UpdateUI -Button "ApplyBtn" -ButtonText "applyText" -Content "applyBtn" -TextIcon "applyIcon" -Icon "  "
        Finish -ListView "TweaksListView"
        Add-Log -Message "Finished, Some tweaks require restarting" -Level "INFO"
    }
}