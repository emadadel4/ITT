$url = "https://c2rsetup.officeapps.live.com/c2r/downloadVS.aspx?sku=professional&channel=Release&version=VS2022&source=VSLandingPage&cid=3602:c2dc06250cbb41c8b6f48ccfb8f7c378"
$outpath = "$PSScriptRoot/myexe.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

$args = @("Comma","Separated","Arguments")
Start-Process -Filepath "$PSScriptRoot/myexe.exe" -ArgumentList $args