# Create a runspace to execute Winget command
$runspace = [runspacefactory]::CreateRunspace()
$runspace.Open()

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
        Start-Process -FilePath "choco" -ArgumentList "install $id -y --force --ignore-checksums" -NoNewWindow -Wait
        
        # Update status label
        UpdateStatusLabel("Downloading... Depends on your internet speed")
    }

    # Update status label after downloading all programs
    UpdateStatusLabel("Downloaded and installed successfully")

}

$scriptBlock2 = {

    param($packageIDs2, $window,$winget)

    function UpdateStatusLabel($text) {
        $window.Dispatcher.Invoke([Action]{
            $window.FindName('description').Text = $text
        })
    }

    foreach ($id in $packageIDs2) {


       #Start-Process Invoke-RestMethod $id | Invoke-Expression  -NoNewWindow -Wait

       #Start-Process $id -NoNewWindow -Wait


        powershell.exe -Command  $id 
        
        # Update status label
        UpdateStatusLabel("Applying tweeaks...")
    }

    # Update status label after downloading all programs
    UpdateStatusLabel("Successfully")

}

function Invoke-Install() {

    <#
    .SYNOPSIS
    This script contains functions for installing software, applying tweaks, and managing asynchronous downloads.

    .DESCRIPTION
    The functions in this script are used to install software using choco, apply tweaks, and manage asynchronous downloads.

    #>

    $packageIDs = @()
    $result  

    foreach ($item in $list.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.configs.applications)
            {
                if($item.Content -eq $program.name)
                {
                    $packageIDs += $program.choco
                    $result  = $item.IsChecked
                }
            }
        }
    }

    if($result)
    {

        for ($ndx = 1; $ndx -lt $packageIDs.Count; $ndx++){}
            

        $msg = [System.Windows.MessageBox]::Show("Are you sure you want to install $ndx selected programs", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)


        if($msg -eq "Yes")
        {
            # #Start asynchronous download using runspace
            $ps = [powershell]::Create().AddScript($scriptBlock).AddArgument($packageIDs).AddArgument($Window).AddArgument($winget)
            $ps.Runspace = $runspace
            $handle = $ps.BeginInvoke()
            # Update status label
            $window.FindName('description').Text = "Downloading... Depends on your internet speed"
        }
    }
    else
    {
        #show mesg
        [System.Windows.MessageBox]::Show("Select at least one program", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
}

function ApplyTweaks() {

    $packageIDs2 = @()

    foreach ($item in $sync.tweaks.Items)
    {
        if ($item.IsChecked)
        {
            $result = $item

            foreach ($data in $sync.configs.tweaks)
            {
                if($item.Content -eq $data.name)
                {
                    $packageIDs2 += $data.script
                    
                }
            }
        }
        
    }

    if($result)
    {
        $msg = [System.Windows.MessageBox]::Show("Do you want to apply selected tweeaks?", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

        if($msg -eq "Yes")
        {
            #Start asynchronous download using runspace
            $ps2 = [powershell]::Create().AddScript($scriptBlock2).AddArgument($packageIDs2).AddArgument($Window).AddArgument($winget)
            $ps2.Runspace = $runspace2
            $handle2 = $ps2.BeginInvoke()
            # Update status label
            $window.FindName('description').Text = "Applying tweeaks..."
        }
    }
    else
    {
        #show mesg
        [System.Windows.MessageBox]::Show("Select at lest one program", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
}

