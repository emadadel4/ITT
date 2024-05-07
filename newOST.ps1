try {
    Clear-Host
    # Read existing JSON file
    $jsonFilePath = "./Database/OST.json"
    $existingData = Get-Content $jsonFilePath -Raw -ErrorAction Stop | ConvertFrom-Json

    # Prompt for input
    $newOST = Read-Host "Enter app name"

    # store input
    $track = $newOST

    # Add new software object to existing array
    $existingData.Tracks += $track

    # Write updated JSON to file
    $existingData | ConvertTo-Json | Out-File $jsonFilePath -ErrorAction Stop
    Write-Host  "Added Successfully" -ForegroundColor Green

}
catch {
    Write-Host "An error occurred: $_"
}
