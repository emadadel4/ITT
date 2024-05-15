function Get-SelectedApps
{

    $items = @()

    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.database.Applications)
            {
                if($item.Content -eq $program.Name)
                {
                    $items += @{
                        Name = $program.Name
                        Choco = $program.Choco
                        Scoop = $program.Scoop
                        URL = $program.url

                    }
                }
            }
        }
    }

    return $items 
}

function ShowSelectedItems {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

    $filterPredicate = {
       param($item)

       $tagToFilter =  $true
       # Check if the item has the tag
       $itemTag = $item.IsChecked
       return $itemTag -eq $tagToFilter
   }

   $collectionView.Filter = $filterPredicate

}

function Invoke-Install
{
    
    if($sync.ProcessRunning)
    {
        $msg = "Please wait for the software to be installed."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $selectedApps = Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        $sync['window'].FindName('category').SelectedIndex = 0
        ShowSelectedItems

        Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

            param($selectedApps)

            function UpdateUI {

                param($InstallBtn,$Description)
               
                $sync['window'].Dispatcher.Invoke([Action]{
                    $sync.installBtn.Content = "$InstallBtn"
                    $sync.Description.Text = "$Description"
                })
            }

            function ClearTemp {
                
                $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                if (Test-Path $chocoTempPath) {
                    Remove-Item -Path $chocoTempPath -Force -Recurse
                    Write-Output "Clear Chocolatey temp folder"
                }
            }

            function CustomMsg 
            {
                param (

                    $title,
                    $msg,
                    $MessageBoxButton,
                    $MessageBoxImage,
                    $answer

                )

                [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
            }

            function Notify {
                param(
                    [string]$title,
                    [string]$msg,
                    [string]$icon,
                    [Int32]$time
                )
               
                $notification = New-Object System.Windows.Forms.NotifyIcon
                $notification.Icon = [System.Drawing.SystemIcons]::Information
                $notification.BalloonTipIcon = $icon
                $notification.BalloonTipText = $msg
                $notification.BalloonTipTitle = $title
                $notification.Visible = $true

                $notification.ShowBalloonTip($time)  # Display for specified time
            
                # Clean up resources
                $notification.Dispose()
            }
            

            function Finish {

                $sync.AppsListView.Dispatcher.Invoke([Action]{
                    foreach ($item in $sync.AppsListView.Items)
                    {
                        $item.IsChecked = $false
                        $sync['window'].FindName('list').Clear()
                        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
                        $collectionView.Filter = $null
                    }
                })

                UpdateUI -InstallBtn "Install" -Description "Installed successfully."

                Clear-Host

Write-Host "
+----------------------------------------------------------------------------+
|  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _      |
| |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |     |
|  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |     |
|  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___  |
| |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |
|                                                                            |
+----------------------------------------------------------------------------+
You ready to Install anything.

(IT Tools) is open source, You can contribute to improving the tool.
If you have trouble installing a program, report the problem on feedback links
https://github.com/emadadel4/ITT/issues
https://t.me/emadadel4
" -ForegroundColor White
            }

            try 
            {
                $result = [System.Windows.MessageBox]::Show("Do you want to install $($selectedApps.Count) selected apps", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                
                if($result -eq "Yes")
                {

                    ClearTemp
                    UpdateUI -InstallBtn "Wait..." -Description "Downloading and Installing..." 

                    $sync.ProcessRunning = $true
                    foreach ($app in $selectedApps) 
                    {
                        if ($app.Choco -ne "none")
                        {
                            Start-Process -FilePath "choco" -ArgumentList "install $($app.Choco) --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum  --usepackagecodes --ignoredetectedreboot --ignore-checksums" -NoNewWindow -Wait 
                        }

                        if ($app.URL -ne "none")
                        {
                            #Start-Process -FilePath "choco" -ArgumentList "install $($app.Choco) -y  --ignore-checksums" -NoNewWindow -Wait

                           $FileUri = "$($app.URL)"
                           $Destination = "$env:temp/setup.exe"
                            
                            $bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination
                            
                            switch ($bitsJobObj.JobState) {
                            
                                'Transferred' {
                                    Complete-BitsTransfer -BitsJob $bitsJobObj
                                    break
                                }
                            
                                'Error' {
                                    throw 'Error downloading'
                                }
                            }
                            
                            $exeArgs = '/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
                            
                            Start-Process -Wait $Destination -ArgumentList $exeArgs
                        }
                    }
                    
                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False

                    #CustomMsg -title "ITT | Emad Adel" -msg "Installed successfully" -MessageBoxImage "Information" -MessageBoxButton "OK"

                    # Uncheck all checkboxes in $list
                    Start-Sleep -Seconds 1
                    Notify -title "ITT Emad Adel" -msg "Installed successfully" -icon "Info" -time 5666
                    Finish

                }
                else
                {
                    # Uncheck all checkboxes in $list
                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            $item.IsChecked = $false
                            $sync['window'].FindName('list').Clear()
                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
                            $collectionView.Filter = $null
                        }
                    })
                }
            }
            catch {

                Write-Host "Error: $_"
            }
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}