function Get-SelectedApps {

    $items = @()

    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.configs.applications)
            {
                if($item.Content -eq $program.name)
                {
                    $items += $program.choco
                }
            }
        }
    }

    return $items 
}

function Get-SelectedTweeaks {

    $items = @()

    foreach ($item in $sync.TweeaksListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($tweeak in $sync.configs.tweaks)
            {

                if($item.Content -eq $tweeak.name)
                {
                    $items += $tweeak.script
                }
            }
        }
    }

    return $items 
}

function Invoke-Install{


    if($sync.ProcessRunning)
    {
        $msg = "Please wait for the software to be installed."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
  
    $sync['window'].FindName('cat').SelectedIndex = 0
    ClearFilter
    $choco += Get-SelectedApps

    if(Get-SelectedApps -ne $null)
    {

        Invoke-RunspaceWithScriptBlock -ArgumentList  $choco -ScriptBlock {

            param($choco)
            
            try{

                $msg = [System.Windows.MessageBox]::Show("Do you want to install selected apps", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($msg -eq "Yes")
                {

                    
                    $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                    if (Test-Path $chocoTempPath) {
                        Remove-Item -Path $chocoTempPath -Force -Recurse
                        Write-Output "Clear Chocolatey temp folder"
                    }

                    $sync.ProcessRunning = $true

                    $sync.installBtn.Dispatcher.Invoke([Action]{
                        $sync.installBtn.Content = "Installing..."
                    })

                   
                    $sync.Description.Dispatcher.Invoke([Action]{
                        $sync.Description.Text = "Downloading and Installing..."
                    })

                    Write-Host "Installing the following programs $choco "
                    Start-Process -FilePath "choco" -ArgumentList "install $choco -y --force --ignore-checksums" -NoNewWindow -Wait
                    [System.Windows.MessageBox]::Show("Installed successfully", "ITT @emadadel4", "OK", "Information")

                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })


                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "Installed successfully"
                    })

                  
        
                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False


                    $sync.installBtn.Dispatcher.Invoke([Action]{
                        $sync.installBtn.Content = "Install"
                    })

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
                   
                }
                else
                {
                    # Uncheck all checkboxes in $list
                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })
                 
                }
            }
            Catch
            {
                Write-Host "Error: $_"
            }

          
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}

function Invoke-ApplyTweaks() {

    if($sync.ProcessRunning)
    {
        $msg = "Please wait for applying to be done."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
  
    $tweeaks += Get-SelectedTweeaks

    if(Get-SelectedTweeaks -ne $null)
    {

        Invoke-RunspaceWithScriptBlock -ArgumentList  $tweeaks -ScriptBlock {

            param($tweeaks)
            
            try{

                $msg = [System.Windows.MessageBox]::Show("Do you want to apply the selected settings", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($msg -eq "Yes")
                {
                    $sync.ProcessRunning = $true

                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "Applying"
                    })

                    #Write-Host "Applying tweeak(s) $tweeaks"
                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$tweeaks`"" -NoNewWindow -Wait
                    Write-Host "The operation was successful."    
                    [System.Windows.MessageBox]::Show("The operation was successful", "ITT @emadadel4", "OK", "Information")

                    $sync.TweeaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweeaksListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })

                 
                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "Done"
                    })

                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False

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

                }
                else 
                {
                    $sync.TweeaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweeaksListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })
                }
            }
            Catch
            {
                Write-Host "Error: $_"
            }
         
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one" , "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}

