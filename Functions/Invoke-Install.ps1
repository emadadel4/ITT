function Get-SelectedApps {

    $items = @()

    foreach ($item in $sync.list.Items)
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

    foreach ($item in $sync.tweaks.Items)
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

function Invoke-Install() {

    # Check internet connection
    if (Test-InternetConnection) {
        Write-Host "Internet is available you good"
    } else {
        [System.Windows.MessageBox]::Show("Internet is not available.", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    if($sync.ProcessRunning)
    {
        $msg = "An Install process is currently running."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
  
    $choco += Get-SelectedApps

    if(Get-SelectedApps -ne $null)
    {
        Invoke-RunspaceWithScriptBlock -ArgumentList  $choco -ScriptBlock {

            param($choco)
            
            try{

                $msg = [System.Windows.MessageBox]::Show("Do you want to Install selected programs?", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($msg -eq "Yes")
                {
                    $sync.ProcessRunning = $true

                    Write-Host "Installing the following programs $choco "
                    Start-Process -FilePath "choco" -ArgumentList "install $choco -y --force --ignore-checksums" -NoNewWindow -Wait
                    Write-Host "Installs have finished"
                    [System.Windows.MessageBox]::Show("Installs have finished", "ITT @emadadel4", "OK", "Information")

                    # Uncheck all checkboxes in $list
                    $sync.list.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.list.Items)
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

            Start-Sleep -Seconds 1
            $sync.ProcessRunning = $False
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Select at lest one program", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
}


function ApplyTweaks() {


    # Check internet connection
    if (Test-InternetConnection) {
        Write-Host "Internet is available you good"
    } else {
        [System.Windows.MessageBox]::Show("Internet is not available.", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    if($sync.ProcessRunning)
    {
        $msg = "An Install process is currently running."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
  
    $tweeaks += Get-SelectedTweeaks

    if(Get-SelectedTweeaks -ne $null)
    {
        Invoke-RunspaceWithScriptBlock -ArgumentList  $tweeaks -ScriptBlock {

            param($tweeaks)
            
            try{

                $msg = [System.Windows.MessageBox]::Show("Do you want to apply selected tweeak(s) ?", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($msg -eq "Yes")
                {
                    $sync.ProcessRunning = $true
                    #Write-Host "Applying tweeak(s) $tweeaks "
                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$tweeaks`"" -NoNewWindow -Wait
                    Write-Host "The operation was successful."    
                    [System.Windows.MessageBox]::Show("The operation was successful.", "ITT @emadadel4", "OK", "Information")

                    $sync.tweaks.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.tweaks.Items)
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

            Start-Sleep -Seconds 1
            $sync.ProcessRunning = $False
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least something from the list", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
}
