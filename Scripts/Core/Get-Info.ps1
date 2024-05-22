function Send-SystemInfo {
    param (
        [string]$FirebaseUrl,
        [string]$Key
    )

    # Validate parameters
    if (-not $FirebaseUrl -or -not $Key) {
        throw "FirebaseUrl and Key are mandatory parameters."
    }

    # Reuse connection to Firebase URL
    $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
    $firebaseUrlRoot = "$FirebaseUrl.json"

    # Check if the key exists
    $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction SilentlyContinue

    if ($existingData) {
        # Increment runs if data exists
        $runs = $existingData.runs + 1

        # Update PC info with the existing data
        $pcInfo = @{
            "hostname" = $existingData.hostname
            "OS" = $existingData.OS
            "Username" = $existingData.Username
            "Ram" = $existingData.Ram
            "GPU" = $existingData.GPU
            "CPU" = $existingData.CPU
            "start at" = $existingData."start at"
            "runs" = $runs
            "AppsTweaks" = $existingData.AppsTweaks
        }
    }
    else {
        # Set runs to 1 if key doesn't exist
        $runs = 1

        # Get PC info for new entry
        $pcInfo = @{
            "hostname" = $env:COMPUTERNAME
            "OS" = [Environment]::OSVersion.VersionString
            "Username" = $env:USERNAME
            "Ram" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
            "start at" = (Get-Date -Format "yyyy-MM-dd hh:mm:ss tt")
            "runs" = $runs
            "AppsTweaks" = @{}
        }
    }

    # Convert to JSON
    $json = $pcInfo | ConvertTo-Json 

    # Set headers
    $headers = @{
        "Content-Type" = "application/json" 
    }

    # Update Firebase database with the new value
    Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers | Out-Null

    # Count the number of keys directly under the root
    $response = Invoke-RestMethod -Uri $firebaseUrlRoot -Method Get -ErrorAction SilentlyContinue
    $totalKeys = ($response | Get-Member -MemberType NoteProperty | Measure-Object).Count

    # Display PC info excluding "AppsTweaks"
    $displayInfo = $pcInfo.GetEnumerator() | Where-Object { $_.Key -ne 'AppsTweaks' }
    $displayInfo | ForEach-Object { Write-Host "$($_.Key) : $($_.Value)" }

    # Write the total number of devices using the tool to the console
    Write-Host "($totalKeys) Devices use this tool." -ForegroundColor Yellow
}
