function CheckChoco {

    # Check if Chocolatey is installed
    if (-not (Test-Path 'C:\ProgramData\chocolatey\choco.exe')) {
        # Chocolatey is not installed, so install it
        Write-Host "Chocolatey is not installed. Installing Chocolatey..."
        Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        if ($LastExitCode -ne 0) {
            Write-Host "Failed to install Chocolatey. Exiting..."
            exit 1
        }
        Write-Host "Chocolatey installed successfully."
    } else {

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
}
    
}