if ((Get-WmiObject win32_operatingsystem | select osarchitecture).osarchitecture -eq "64-bit")
{
    $FileUri = "https://github.com/brave/brave-browser/releases/download/v1.5.115/BraveBrowserSilentSetup.exe"
    $Destination = "$env:temp/BraveBrowserSilentSetup.exe"

    $bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination

    switch ($bitsJobObj.JobState) {

    'Transferred' {
        Complete-BitsTransfer -BitsJob $bitsJobObj
        break
    }

    'Error' {
        throw 'Error downloading'
    }
}

$exeArgs = '/verysilent'
Start-Process -Wait $Destination -ArgumentList $exeArgs
     
}
else
{
   $FileUri = "https://github.com/brave/brave-browser/releases/download/v1.5.115/BraveBrowserSilentSetup32.exe"
    $Destination = "$env:temp/BraveBrowserSilentSetup32.exe"

    $bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination

    switch ($bitsJobObj.JobState) {

    'Transferred' {
        Complete-BitsTransfer -BitsJob $bitsJobObj
        break
    }

    'Error' {
        throw 'Error downloading'
    }
}

$exeArgs = '/verysilent'
Start-Process -Wait $Destination -ArgumentList $exeArgs
}