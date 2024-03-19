

function NormalInstall {

    $ll = "http://www.zbshareware.com/downloads/setup/USBGuardSetup6.9.exe"
    $Destination = "$env:temp/itt.exe"

    $bitsJobObj = Start-BitsTransfer $ll  -Destination $Destination -Priority High

    switch ($bitsJobObj.JobState) {

        'Transferred' {
            Complete-BitsTransfer -BitsJob $bitsJobObj
            $Discription.Text = "Downloading..."
            break
        }

        'Error' {
            throw 'Error downloading'
        }
    }

    Get-BitsTransfer | Complete-BitsTransfer

    $exeArgs = '/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
    Start-Process -Wait $Destination -ArgumentList $exeArgs
    $Discription.Text = "Installling..."


    if (Test-Path $Destination)
    {
        Remove-Item -Verbose -Force $Destination
    }
        
}

NormalInstall


Write-Host "downloader"
