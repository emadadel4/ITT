$FileUri = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"
$Destination = "vscodeInstaller.exe"

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

$exeArgs = '/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'

Start-Process -Wait $Destination -ArgumentList $exeArgs