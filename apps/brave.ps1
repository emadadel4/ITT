
$url = "https://referrals.brave.com/latest/BraveBrowserSetup-BRV029.exe"
$outpath = "$PSScriptRoot/brave.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $outpath)
$args = @("Comma","Separated","Arguments")
Start-Process -Filepath "$PSScriptRoot/brave.exe" -ArgumentList $args
