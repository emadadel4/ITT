function WriteAText {
    param (
        $message,
        $color
    )
    
    Write-Host " +==============================================================================+" -ForegroundColor Yellow;
    Write-Host " |   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |" -ForegroundColor Yellow;
    Write-Host " |  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |" -ForegroundColor Yellow;
    Write-Host " |   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |" -ForegroundColor Yellow;
    Write-Host " |   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |" -ForegroundColor Yellow;
    Write-Host " |  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |" -ForegroundColor Yellow;
    Write-Host " |                       Made with ♥ By Emad Adel                               |" -ForegroundColor Yellow;
    Write-Host " |                          #StandWithPalestine                                 |" -ForegroundColor Yellow;
    Write-Host " +==============================================================================+" -ForegroundColor Yellow; 
    Write-Host " $message `n` " -ForegroundColor Yellow
    Write-Host " Github repo: https://github.com/emadadel4/ITT/issues" -ForegroundColor Yellow
    Write-Host " Telegram: https://t.me/ittemadadel" -ForegroundColor Yellow
    Write-Host " Discord: https://discord.com/invite/3eV79KgD" -ForegroundColor Yellow
    Write-Host " Commands:" -ForegroundColor Yellow
    Write-Host " irm bit.ly/ittea | iex" -ForegroundColor Yellow
    Write-Host " irm cutt.ly/ittea | iex" -ForegroundColor Yellow
    Write-Host " irm bit.ly/emadadel | iex" -ForegroundColor Yellow
}
function Get-PCInfo {
    param (
        [string]$FirebaseUrl,
        [string]$Key
    )

    try {
        Invoke-ScriptBlock -ArgumentList $FirebaseUrl, $Key -ScriptBlock  { 

            $FirebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
            $Key = "$env:COMPUTERNAME $env:USERNAME"
        
            # Reuse connection to Firebase URL
            $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
            $firebaseUrlRoot = "$FirebaseUrl.json"
        
            # Check if the key exists
            $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
        
            Write-Host "  PC Info... `n` "
        
            if ($existingData) {
                # Increment runs if data exists
                $runs = $existingData.runs + 1
        
                # Update PC info with the existing data
                $pcInfo = @{
                    'Manufacturer' = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                    "Domain" = $env:COMPUTERNAME
                    "OS" = [Environment]::OSVersion.VersionString
                    "Username" = $env:USERNAME
                    "RAM" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
                    "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                    "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                    "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                    "Language" = "$($itt.Language)"
                    "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                    "Runs" = $runs
                    "AppsHistory" = $existingData.AppsHistory
                    "TweaksHistory" = $existingData.TweaksHistory
                }
            }
            else {
                # Set runs to 1 if key doesn't exist
                $runs = 1
        
                # Get PC info for new entry
                $pcInfo = @{
                    "Manufacturer" = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                    "Domain" = $env:COMPUTERNAME
                    "OS" = [Environment]::OSVersion.VersionString
                    "Username" = $env:USERNAME
                    "RAM" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
                    "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                    "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                    "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                    "Language" = "$($itt.Language)"
                    "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                    "runs" = $runs
                    "AppsHistory" = @{}
                    "TweaksHistory" = @{}
                }
            }
        
            # Convert to JSON
            $json = $pcInfo | ConvertTo-Json 
        
            # Set headers
            $headers = @{
                "Content-Type" = "application/json" 
            }
        
            # Update Firebase database with the new value
            Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers -ErrorAction Stop
        
            # Count the number of keys directly under the root
            $response = Invoke-RestMethod -Uri $firebaseUrlRoot -Method Get -ErrorAction Stop
            $totalKeys = ($response | Get-Member -MemberType NoteProperty | Measure-Object).Count
        
            # Define the desired order of keys for display
            $displayOrder = @("Manufacturer", "Username", "Domain", "OS", "CPU", "GPU", "RAM", "Start At", "Runs")
        
            # Display PC info excluding "AppsTweaks" in the specified order
            foreach ($key in $displayOrder) {
                if ($pcInfo.ContainsKey($key)) {
                    Write-Host "  $key : $($pcInfo[$key])" -ForegroundColor Yellow
                }
            }
        
            Write-Host -NoNewline "`n`  $totalKeys" -ForegroundColor Red
            Write-Host " devices use this tool." -ForegroundColor Yellow
        
        } | Out-Null
    }
    catch {
        Write-Error "An error occurred: $_"
        exit 1
    }
}
function Startup {
    Get-PCInfo  
    Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
}