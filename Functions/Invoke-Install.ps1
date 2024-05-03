
function Get-SelectedApps {

    $items = @()

    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.configs.applications)
            {
                if($item.Content -eq $program.Name)
                {
                    $items += @{
                        Name = $program.Name
                        Choco = $program.Choco
                        Scoop = $program.Scoop
                    }
                }
            }
        }
    }

    return $items 
}

function Invoke-Install {
    if($sync.ProcessRunning)
    {
        $msg = "Please wait for the software to be installed."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $selectedApps = Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        Invoke-RunspaceWithScriptBlock -ArgumentList $selectedApps -ScriptBlock {
            param($selectedApps)
            try {
                $msg = [System.Windows.MessageBox]::Show("Do you want to install selected apps", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                if($msg -eq "Yes")
                {

                    $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                    if (Test-Path $chocoTempPath) {
                        Remove-Item -Path $chocoTempPath -Force -Recurse
                        Write-Output "Clear Chocolatey temp folder"
                    }

                    $sync.Description.Dispatcher.Invoke([Action]{
                        $sync.installBtn.Content = "Installing..."
                        $sync.Description.Text = "Downloading and Installing..."
                    })

                    $sync.ProcessRunning = $true
                    foreach ($app in $selectedApps) {
                        if ($app.Choco -ne "none") {

                            Start-Process -FilePath "choco" -ArgumentList "install $($app.Choco) -y  --ignore-checksums" -NoNewWindow -Wait
                            Write-Host $app.Choco

                        } elseif ($app.Scoop) {
                            Start-Process -FilePath "powershell.exe" -ArgumentList "scoop install $($app.Scoop)" -NoNewWindow -Wait
                            Write-Host $app.Scoop

                        }
                    }
                    
                    [System.Windows.MessageBox]::Show("Installed successfully", "ITT @emadadel4", "OK", "Information")

                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "Installed successfully"
                        $sync.installBtn.Content = "Install"

                    })
                  
                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False


                    Start-Sleep -Seconds 2

                    Clear-Host

Write-Host "
+------------------------------------------------------------------------------+
|   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |
|  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |
|   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |
|   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |
|  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |
| Everything work fine You Good to go                                          |
+------------------------------------------------------------------------------+
" -ForegroundColor green

                }else {
                    
                    # Uncheck all checkboxes in $list
                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })

                }
            }
            catch {

                Write-Host "Error: $_"
            }
        }
    }else {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}
