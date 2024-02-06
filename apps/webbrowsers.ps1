Clear-Host

Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/NiniteInstall.ps1).Content

function Install ($name) {

    Write-Host "Instaling $name Please wait..."
    $FileUri = "https://raw.githubusercontent.com/emadadel4/ITT/main/NiniteInstall.ps1"
    $Destination = "$env:temp/NiniteInstall.ps1"

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
    Get-NiniteExe -OutputExe "$env:temp\ninite.exe" -firefox

}

Write-Output "+========================================================+";
Write-Output "| _____ __  __    _    ____       _    ____  _____ _     |";
Write-Output "|| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    |";
Write-Output "||  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    |";
Write-Output "|| |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ |";
Write-Output "||_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____||";
Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/quotes.ps1).Content  

$page = "Web Browsers"

function Get-MenuChoice
    {
    [CmdletBinding ()]
    Param
        (
        [Parameter (
            Mandatory,
            Position = 0
            )]
            [string[]]
            $MenuList,

        [Parameter (
            Position = 1
            )]
            [string]
            $Title,

        [Parameter (
            Position = 2
            )]
            [string]

            $Prompt = 'Please enter a number from the above list or "x" to back '
            
        )

    $ValidChoices = 0..$MenuList.GetUpperBound(0) + 'x'
    $Choice = ''
    while ([string]::IsNullOrEmpty($Choice))
        {
        Write-Host $Title
        foreach ($Index in 0..$MenuList.GetUpperBound(0))
            {
            Write-Host ('{0} {1}' -f $Index, $MenuList[$Index])
            }
        $Choice = Read-Host -Prompt $Prompt
        Write-Host ''

        if ($Choice -notin $ValidChoices)
            {
            [System.Console]::Beep(1000, 300)
            Write-Warning ''
            Write-Warning ('    [ {0} ] is not a valid selection.' -f $Choice)
            Write-Warning '    Please try again.'
            Write-Warning ''

            $Choice = ''

            pause
            }
        }

    # send it out to the caller
    if ($Choice -eq 'x')
        {
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/itt.ps1).Content
        }
        else
        {
           
            $Choice
        }
    } # end >>> function Get-MenuChoice


write-host "================ $Page ============================"
$MenuList = @(
    'chrome'
    'firefox'
    'opera'
    'edge'
    )

$Choice = Get-MenuChoice -MenuList $MenuList

if($MenuList[$Choice])
{
    Install($MenuList[$Choice])
}

'You chose [ {0} ] giving you [ {1} ].' -f $Choice, $MenuList[$Choice]

