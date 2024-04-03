
#===========================================================================
# function
#===========================================================================


function Install()
{
    $Link = "https://ninite.com/"

    foreach ($item in $sync.list.Items)
    {
        if ($item.IsChecked)
        {
            $result = $item

            foreach ($data in $sync.configs.applications)
            {
                if($item.Content -eq $data.name)
                {
                    $Link = $Link + $data.ninite + "-"
                    $Link = $Link + $data.url + "-"
                }
            }
        }
        
    }

    if($result)
    {
        $msg = [System.Windows.MessageBox]::Show("Are you sure you want to install selected programs", "ITT", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

        if($msg -eq "Yes")
        {
            $Link = $Link + "/ninite.exe"
            $Destination = "$env:temp/Install.exe"
            
            if (Test-Path $Destination)
            {
                Remove-Item -Verbose -Force $Destination
            }

            Write-Host "Ninite Link: $($Link)"
            $discription.Text = "Starting Download"
            Invoke-WebRequest $Link -OutFile $Destination
            Start-Process -Filepath $Destination
            $discription.Text = "Installing..."
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Please select the program(s) to install", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}

function ApplyTweaks() {

    $1
    $2

    foreach ($item in $sync.tweaks.Items)
    {
       

        if ($item.IsChecked)
        {
            $result = $item

            foreach ($data in $sync.configs.tweaks)
            {
                if($item.Content -eq $data.name)
                {
                    if($data.fromUrl -eq "true")
                    {
                        #Invoke-RestMethod $data.script | Invoke-Expression 
                        $1 = $data
                    }
                    else
                    {
                        #powershell.exe -Command  $data.script
                        $2 = $data

                    }
                }
            }
        }
        
    }

    if($result)
    {
        $msg = [System.Windows.MessageBox]::Show("Are you sure you want to apply selected tweeaks", "ITT", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

        if($msg -eq "Yes")
        {
            Invoke-RestMethod $1.script | Invoke-Expression 
            powershell.exe -Command  $2.script
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Please select the Tweeak(s) to apply", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}