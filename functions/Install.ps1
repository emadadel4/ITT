# Create a runspace to execute Winget command
$runspace = [runspacefactory]::CreateRunspace()
$runspace.Open()

# Create a runspace to execute Winget command
$runspace2 = [runspacefactory]::CreateRunspace()
$runspace2.Open()

# Define script block for downloading software
$scriptBlock = {

    param($packageIDs, $window,$winget)

    function UpdateStatusLabel($text) {
        $window.Dispatcher.Invoke([Action]{
            $window.FindName('description').Text = $text
        })
    }

    foreach ($id in $packageIDs) {

        # Run Winget command to download software
        start-Process -FilePath winget -ArgumentList "install -e -h --accept-source-agreements --accept-package-agreements --id $id" -NoNewWindow -Wait


        
        # Update status label
        UpdateStatusLabel("Downloading $id...")
    }

    # Update status label after downloading all programs
    UpdateStatusLabel("Download Complete")

}

# Define script block for downloading software
$scriptBlock2 = {

    param($winget)

        $winget
    function UpdateStatusLabel($text) {
        $window.Dispatcher.Invoke([Action]{
            $window.FindName('description').Text = $text
        })
    }


    # Update status label after downloading all programs
    UpdateStatusLabel("Check winget")

}

function Install() {
    $prog = @()
    $packageIDs = @()



        $winget =  Install-WinUtilWinget


       # Start asynchronous download using runspace
       $ps2 = [powershell]::Create().AddScript($scriptBlock2).AddArgument($winget)
       $ps2.Runspace = $runspace2
       $handle = $ps2.BeginInvoke()



    foreach ($item in $list.Items) {
        if ($item.IsChecked) {
            foreach ($program in $sync.configs.applications) {
                if($item.Content -eq $program.name) {
                    $packageIDs += $program.winget
                    $prog = $program.name
                }
            }
        }
    }

    # Start asynchronous download using runspace
    $ps = [powershell]::Create().AddScript($scriptBlock).AddArgument($packageIDs).AddArgument($Window).AddArgument($winget)
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

