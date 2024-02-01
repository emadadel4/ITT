$msiPackageToInstall = "https://mirror.library.ucy.ac.cy/videolan/vlc/3.0.20/win64/vlc-3.0.20-win64.msi"
# save log from installation to temp file 
$tmpFile = [System.IO.Path]::GetTempFileName()
Start-Process msiexec -ArgumentList "/i $msiPackageToInstall /qn /L*v $tmpFile" -NoNewWindow -Wait