$url = "https://get.videolan.org/vlc/3.0.20/win64/vlc-3.0.20-win64.exe"
$outpath = "$env:temp/vlc.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

$args = '/VERYSILENT /S /Q /quiet /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
Start-Process -Filepath "$env:temp/vlc.exe" -ArgumentList $args