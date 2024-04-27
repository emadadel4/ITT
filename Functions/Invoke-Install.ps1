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
        $msg = "...يوجد عملية جإرية الان يرجى الأنتظار"
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
  
    $choco += Get-SelectedApps

    if(Get-SelectedApps -ne $null)
    {

        Invoke-RunspaceWithScriptBlock -ArgumentList  $choco -ScriptBlock {

            param($choco)
            
            try{

                $msg = [System.Windows.MessageBox]::Show("هل تريد تثبيت البرامج المحددة", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($msg -eq "Yes")
                {

                    $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                    if (Test-Path $chocoTempPath) {
                        Remove-Item -Path $chocoTempPath -Force -Recurse
                        Write-Output "Clear Chocolatey temp folder"
                    }


                    $sync.ProcessRunning = $true

                    $sync.installBtn.Dispatcher.Invoke([Action]{
                        $sync.installBtn.Content = "...جإري التثبيت"
                    })

                   
                    $sync.Description.Dispatcher.Invoke([Action]{
                        $sync.Description.Text = "...جإري التحميل و التثبيت"
                    })

                    Write-Host "Installing the following programs $choco "
                    Start-Process -FilePath "choco" -ArgumentList "install $choco -y --force --ignore-checksums" -NoNewWindow -Wait
                    [System.Windows.MessageBox]::Show("تم التثبيت بنجاح", "ITT @emadadel4", "OK", "Information")

                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })


                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "تم التثبيت بنجاح"
                    })

                  
        
                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False


                    $sync.installBtn.Dispatcher.Invoke([Action]{
                        $sync.installBtn.Content = "تثبيت"
                    })
                  
                   
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
        [System.Windows.MessageBox]::Show("أختار برنامج واحد على الاقل", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
}

function ApplyTweaks() {

    if($sync.ProcessRunning)
    {
        $msg = "...يوجد عملية جإرية الان يرجى الأنتظار"
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
  
    $tweeaks += Get-SelectedTweeaks

    if(Get-SelectedTweeaks -ne $null)
    {

        Invoke-RunspaceWithScriptBlock -ArgumentList  $tweeaks -ScriptBlock {

            param($tweeaks)
            
            try{

                $msg = [System.Windows.MessageBox]::Show("هل تريد تطبيق الإعدادات المختارة", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($msg -eq "Yes")
                {
                    $sync.ProcessRunning = $true

                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "جإري التطبيق"
                    })

                    #Write-Host "Applying tweeak(s) $tweeaks "
                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$tweeaks`"" -NoNewWindow -Wait
                    Write-Host "The operation was successful."    
                    [System.Windows.MessageBox]::Show("تمت العملية بنجاح", "ITT @emadadel4", "OK", "Information")

                    $sync.TweeaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweeaksListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })

                 
                    $sync.description.Dispatcher.Invoke([Action]{
                        $sync.description.Text = "تم التطبيق"
                    })

                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False

               

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
        [System.Windows.MessageBox]::Show("أختار الأمر المراد تطبيقه", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
}

