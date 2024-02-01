if ((Get-WmiObject win32_operatingsystem | select osarchitecture).osarchitecture -eq "64-bit")
{
     #64 bit logic here
     $fire = "https://dl.google.com/tag/s/appguid={8A69D345-D564-463C-AFF1-A69D9E530F96}&iid={FEDECCDF-0839-FC8E-F35E-63D6BAF618E1}&lang=en&browser=5&usagestats=0&appname=Google%20Chrome&needsadmin=true&ap=x64-stable-statsdef_0&brand=GCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi"
     msiexec.exe /i $fire /passive
}
else
{
    #32 bit logic here
    $fire = "https://dl.google.com/tag/s/appguid={8A69D345-D564-463C-AFF1-A69D9E530F96}&iid={FEDECCDF-0839-FC8E-F35E-63D6BAF618E1}&lang=en&browser=5&usagestats=0&appname=Google%20Chrome&needsadmin=true&ap=stable-arch_x86-statsdef_0&brand=GCEA/dl/chrome/install/googlechromestandaloneenterprise.msi"
    msiexec.exe /i $fire /passive
}

