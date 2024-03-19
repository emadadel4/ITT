$FileUri = ""
$Destination = "$env:temp/itt.exe"

$bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination
$Discription.Text = "Starting Download"


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


#$Discription.Text = "Starting Installing..."
Start-Process -Wait $Destination -ArgumentList $exeArgs

