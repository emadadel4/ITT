
function Get-SelectedTweeaks {

    $items = @()

    foreach ($item in $sync.TweeaksListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($tweeak in $sync.database.Tweaks)
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
                        $sync.applyBtn.Content = "Please wait..."
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
                        $sync.applyBtn.Content = "Apply"
                    })

                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False

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

