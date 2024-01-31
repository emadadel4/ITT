$url = "https://cdn.stubdownloader.services.mozilla.com/builds/firefox-stub/en-US/win/69460ea617d4d1460a08bcaac90553132695df037332248fcc389ac5ca0dfebf/Firefox Installer.exe"
$outpath = "$PSScriptRoot/myexe.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

$args = @("Comma","Separated","Arguments")
Start-Process -Filepath "$PSScriptRoot/myexe.exe" -ArgumentList $args