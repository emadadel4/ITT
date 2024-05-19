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

    # Increment runs if data exists, otherwise set to 1
    $runs = if ($existingData) { $existingData.runs + 1 } else { 1 }

    # PC info
    $pcInfo = @{
        "hostname" = $env:COMPUTERNAME
        "OS" = [Environment]::OSVersion.VersionString
        "Username" = $env:USERNAME
        "Ram" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
        "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
        "start at" = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
        "runs" = $runs
    }

    # Convert to JSON
    $json = $pcInfo | ConvertTo-Json

    # Set headers
    $headers = @{
        "Content-Type" = "application/json"
    }

    # Update Firebase database with the new value of "runs"
    Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers

    # Count the number of keys directly under the root
    $response = Invoke-RestMethod -Uri $firebaseUrlRoot -Method Get -ErrorAction SilentlyContinue
    $totalKeys = ($response | Get-Member -MemberType NoteProperty | Measure-Object).Count

    Write-Host "$totalKeys Devices use this tool." -ForegroundColor Yellow
}

# Call the function to send system info to Firebase
