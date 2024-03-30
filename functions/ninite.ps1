
#===========================================================================
# function
#===========================================================================
function Nine
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
                    Write-Host $data.name
                    $Link = $Link + $data.url + "-"
                }
            }
        }
        
    }

    if($result)
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
        $discription.Text = "Click yes to any popup window"
        Start-Process -Filepath $Destination

    }
    else
    {
        [System.Windows.MessageBox]::Show("Please select the program(s) to install", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}