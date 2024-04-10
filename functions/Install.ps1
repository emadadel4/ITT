<#
.SYNOPSIS
This script contains functions for installing software, applying tweaks, and managing asynchronous downloads.

.DESCRIPTION
The functions in this script are used to install software using choco, apply tweaks, and manage asynchronous downloads.

#>

# Create a runspace to execute Winget command
$runspace = [runspacefactory]::CreateRunspace()
$runspace.Open()

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
        Start-Process -FilePath "choco" -ArgumentList "install $id -y --force" -NoNewWindow -Wait
        
        # Update status label
        UpdateStatusLabel("Downloading...")
    }

    # Update status label after downloading all programs
    UpdateStatusLabel("Downloaded and installed successfully")

}

function Install() {

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
        $msg = [System.Windows.MessageBox]::Show("Do you want to Install selected programs?", "ITT @emadadel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

        if($msg -eq "Yes")
        {
            #Start asynchronous download using runspace
            $ps = [powershell]::Create().AddScript($scriptBlock).AddArgument($packageIDs).AddArgument($Window).AddArgument($winget)
            $ps.Runspace = $runspace
            $handle = $ps.BeginInvoke()
            # Update status label
            $window.FindName('description').Text = "Downloading..."
        }
    }
    else
    {
        #show mesg
        [System.Windows.MessageBox]::Show("Select at lest one program", "ITT @emadadel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Question)
    }
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

