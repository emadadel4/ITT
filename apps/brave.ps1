
$url = "https://referrals.brave.com/latest/BraveBrowserSetup-BRV029.exe"
$outpath = "$env:temp/brave.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $outpath)
$args = @("Comma","Separated","Arguments")
Start-Process -Filepath ""$env:temp/brave.exe" -ArgumentList $args
