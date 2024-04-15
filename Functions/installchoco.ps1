
function CheckChoco {

    try {

        if((Get-Command -Name choco -ErrorAction Ignore))
        {
Write-Host 
"
    ___ _____ _____     ____  _____ __  __    _    ____       _    ____  _____ _     
    |_ _|_   _|_   _|   / __ \| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    
    | |  | |   | |    / / _` |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    
    | |  | |   | |   | | (_| | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ 
    |___| |_|   |_|    \ \__,_|_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|
                        \____/                                                        

                    This is Emad adel an Binary
    01000101 01001101 01000001 01000100  01000001 01000100 01000101 01001100      
                Chocolatey is installed You Good to go                  
"
            return
        }

        Write-Host "Chocolatey is not installed, installing now"
        Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -ErrorAction Stop
        powershell choco feature enable -n allowGlobalConfirmation
    }
    Catch {
        Write-Host "--Chocolatey failed to install---"
    }
}


