try {
    Clear-Host
    # Read existing JSON file
    $jsonFilePath = "./Assets/Database/OST.json"
    $existingData = Get-Content $jsonFilePath -Raw -ErrorAction Stop | ConvertFrom-Json

    # Prompt for input
    $newOST = Read-Host "Enter the URL/ Example: www.eprojects.orgfree.com/ezio_family.mp3"

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
