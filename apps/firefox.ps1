if ((Get-WmiObject win32_operatingsystem | select osarchitecture).osarchitecture -eq "64-bit")
{
     #64 bit logic here
     $fire = "https://download-installer.cdn.mozilla.net/pub/firefox/releases/122.0/win64/en-US/Firefox Setup 122.0.msi"
     msiexec.exe /i $fire /passive
}
else
{
    #32 bit logic here
    $fire = "https://download-installer.cdn.mozilla.net/pub/firefox/releases/122.0/win32/en-US/Firefox Setup 122.0.msi"
    msiexec.exe /i $fire /passive
}

