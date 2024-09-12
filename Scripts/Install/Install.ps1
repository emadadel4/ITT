function Invoke-Install {
  
    $selectedApps = Get-CheckBoxes -mode "Install"

    if($itt.ProcessRunning) {
        Message -key "Pleasewait"
        return
    }

   if($selectedApps.Count -eq 0)
   {
       Write-Host "Select app"
       return
   }

    Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

        param($selectedApps)

        $itt.ProcessRunning = $true

        $selectedApps | ForEach-Object {

            if ($_.Choco -ne "none")
            {
                Install-App -appName $_.Name -appChoco $_.Choco
                #Write-Host $_.Choco
                
            }elseif ($_.Winget -ne "none") {
                Install-App -appName $_.Name -appWinget $_.Winget
                #Write-Host $_.Winget
            }
            else
            {
                if($_.default.IsExcute -eq "true")
                {
                    #Download-And-Install-Exe -name "$($_.Name)" -url  $_.default.url -type $_.default.extinction -exeArgs $_.default.exeArgs -outputDir "ITT\Downloads\" -run $_.default.run -shortcut $_.default.shortcut
                }
                else
                {
                    #Download-And-ExtractZip -url $_.default.url -shortcutName "$($_.Name)" -exeFileName $_.default.launcher -run $_.default.run -Createshortcut $_.default.shortcut -exeArgs $_.default.exeArgs
                }
            }
        }

        $itt.ProcessRunning = $false
    }
}
