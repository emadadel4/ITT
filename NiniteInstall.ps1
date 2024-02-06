function Get-NiniteExe
{
    Param
    (
        # EXE PATH
        [Parameter(Mandatory=$true)]
        $OutputExe,
        # WEB BROWSERS
        [switch]$chrome,
        [switch]$Firefox,
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