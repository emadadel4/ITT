$url = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"
$outpath = "$env:temp/myexe.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

$args = '/VERYSILENT /S /Q /quiet /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
Start-Process -Filepath "$env:temp/myexe.exe" -ArgumentList $args