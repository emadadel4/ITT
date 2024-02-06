Clear-Host

function Get-NiniteExe
{
    Param
    (
        # EXE PATH
        [Parameter(Mandatory=$true)]
        $OutputExe,
        # WEB BROWSERS
        [switch]$chrome,
        [switch]$firefox,
        [switch]$operaChromium,
        # UTILITIES
        [switch]$teamviewer13,
        [switch]$imgburn,
        [switch]$realvnc,
        [switch]$teracopy,
        [switch]$cdburnerxp,
        [switch]$revo,
        [switch]$launchy,
        [switch]$windirstat,
        [switch]$glary,
        [switch]$infrarecorder,
        [switch]$classicstart,
        # MESSAGING
        [switch]$discord,
        [switch]$skype,
        [switch]$pidgin,
        [switch]$thunderbird,
        [switch]$trillian,
        # COMPRESSION
        [switch]$7zip,
        [switch]$peazip,
        [switch]$winrar,
        # MEDIA
        [switch]$itunes,
        [switch]$vlc,
        [switch]$aimp,
        [switch]$foobar,
        [switch]$winamp,
        [switch]$musicbee,
        [switch]$audacity,
        [switch]$klitecodecs,
        [switch]$gom,
        [switch]$spotify,
        [switch]$cccp,
        [switch]$mediamonkey,
        [switch]$handbrake,
        # RUNTIMES
        [switch]$java8,
        [switch]$net472,
        [switch]$silverlight,
        [switch]$air,
        [switch]$shockwave,
        # DEVELOPERTOOLS
        [switch]$python,
        [switch]$filezilla,
        [switch]$notepadplusplus,
        [switch]$jdk8,
        [switch]$jdkx8,
        [switch]$winscp,
        [switch]$putty,
        [switch]$winmerge,
        [switch]$eclipse,
        [switch]$vscode,
        # IMAGING
        [switch]$krita,
        [switch]$blender,
        [switch]$paintnet,
        [switch]$gimp,
        [switch]$irfanview,
        [switch]$xnview,
        [switch]$inkscape,
        [switch]$faststone,
        [switch]$greenshot,
        [switch]$sharex,
        # DOCUMENTS
        [switch]$foxit,
        [switch]$libreoffice,
        [switch]$sumatrapdf,
        [switch]$cutepdf,
        [switch]$pdfcreator,
        [switch]$openoffice,
        # SECURITY
        [switch]$essentials,
        [switch]$malwarebytes,
        [switch]$avast,
        [switch]$avg,
        [switch]$spybot2,
        [switch]$avira,
        [switch]$super,
        # FILE SHARING
        [switch]$qbittorrent,
        # OTHER
        [switch]$evernote,
        [switch]$googleearth,
        [switch]$steam,
        [switch]$keepass2,
        [switch]$everything,
        [switch]$nvda,
        # ONLINE STORAGE
        [switch]$dropbox,
        [switch]$googlebackupandsync,
        [switch]$mozy,
        [switch]$onedrive,
        [switch]$sugarsync        
    )

    $programs = (($PSBoundParameters.GetEnumerator().Where({$_.Value -eq $true}).Key | ForEach-Object {
        switch ($_) {
            "net472"   { ".net4.7.2" }
            "paintnet" { "paint.net" }
            DEFAULT    { $_          }
        }
    }) -join '-')

    if (-not [string]::IsNullOrWhiteSpace($programs)) {
        $url = "https://ninite.com/{0}/ninite.exe" -f $programs
        Invoke-WebRequest -Uri $url -OutFile "$OutputExe"
        Start-Process -FilePath "$OutputExe"
    } else {
        Write-Error "No programs specified"
    }
} 

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
    Get-NiniteExe -OutputExe "$env:temp\ninite.exe" -filezilla

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
            Write-Host ('{0} - {1}' -f $Index, $MenuList[$Index])
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
    'Chrome'
    'Firefox'
    'Opera'
    'Edge'
    )

$Choice = Get-MenuChoice -MenuList $MenuList

if($MenuList[$Choice])
{
    Install($MenuList[$Choice])
}

'You chose [ {0} ] giving you [ {1} ].' -f $Choice, $MenuList[$Choice]

