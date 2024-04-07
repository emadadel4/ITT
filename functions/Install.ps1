
# Create a runspace to execute Winget command
$runspace = [runspacefactory]::CreateRunspace()
$runspace.Open()

# Define script block for downloading software
$scriptBlock = {

    param($packageIDs, $window, $statusLabel)

    foreach ($id in $packageIDs) {

        # Run Winget command to download software
        start-Process -FilePath winget -ArgumentList "install -e -h --accept-source-agreements --accept-package-agreements --id $id" -NoNewWindow -Wait
        
        # Update status label
        $window.Dispatcher.Invoke([Action]{
            #$window.FindName('description').Text = "Downloading $id..."
        })
    }

    # Update status label after downloading all programs
    $window.Dispatcher.Invoke([Action]{
        $window.FindName('description').Text = "Download Complete"
    })
}

$scriptBlockEE = {

    param($winget)
    $winget = Install-WinUtilWinget
}

function Install()
{

    $prog = @()

    $packageIDs = @()

    
    $winget = Install-WinUtilWinget

    # Start asynchronous download using runspace
    $ps2 = [powershell]::Create().AddScript($scriptBlockEE).AddArgument.($winget)
    $ps2.Runspace = $runspace
    $handle = $ps2.BeginInvoke()


    foreach ($item in $list.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.configs.applications)
            {
                if($item.Content -eq $program.name)
                {
                    $packageIDs += $program.winget
                    $prog = $program.name
                }
            }
        }
    }
    

    # Start asynchronous download using runspace
    $ps = [powershell]::Create().AddScript($scriptBlock).AddArgument($packageIDs).AddArgument($Window).AddArgument($StatusLabel)
    $ps.Runspace = $runspace
    $handle = $ps.BeginInvoke()
    
    # Update status label
    $window.FindName('description').Text = "Downloading... $prog"
}

function ApplyTweaks() {

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
                        Invoke-RestMethod $data.script | Invoke-Expression 
                    }
                    else
                    {
                        powershell.exe -Command  $data.script
                    }
                }
            }
        }
        
    }

    if($result)
    {
     
        
    }
    else
    {
        [System.Windows.MessageBox]::Show("Please select the Tweeak(s) to apply", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}

