function WriteAText {
    param (
        $message,
        $color
    )
    
$output = Write-Host "
 ___ _____ _____   _____ __  __    _    ____    _    ____  _____ _     
 |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \  / \  |  _ \| ____| |    
  | |  | |   | |   |  _| | |\/| | / _ \ | | | |/ _ \ | | | |  _| | |    
  | |  | |   | |   | |___| |  | |/ ___ \| |_| / ___ \| |_| | |___| |___ 
  |_|  |_|   |_|   |_____|_|  |_/_/   \_\____/_/   \_\____/|_____|_____|

 $message
 
 (IT Tools) is open source, You can contribute to improving the tool.
 If you have trouble installing a program, report the problem on feedback links
 https://github.com/emadadel4/ITT/issues
 https://t.me/emadadel4
" -ForegroundColor "$color"
return $output


}

function Startup {

    param ([bool]$firstBoot)

    if($firstBoot -eq $true)
    {
        Write-Host (WriteAText -color White -message  "Starting up... it won't take longer.") 

    }
    else
    {
        Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    }

    #Send-SystemInfo -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME


}

function CheckChoco 
{
    # Check if Chocolatey is installed
    if (-not (Get-Command choco -ErrorAction SilentlyContinue))
    {
        Startup -firstBoot $true
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
        Clear-Host
        Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    }
    else
    {
        Startup -firstBoot $false
    }
}


