if ((Get-WmiObject win32_operatingsystem | select osarchitecture).osarchitecture -eq "64-bit")
{
     #64 bit logic here
     $vlc = "https://mirror.library.ucy.ac.cy/videolan/vlc/3.0.20/win64/vlc-3.0.20-win64.msi"
     msiexec.exe /i $vlc /passive
}
else
{
    #32 bit logic here
    $vlc = "https://mirror.library.ucy.ac.cy/videolan/vlc/3.0.20/win32/vlc-3.0.20-win32.msi"
    msiexec.exe /i $vlc /passive
}






