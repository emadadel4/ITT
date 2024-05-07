try {
    Clear-Host
    # Read existing JSON file
    $jsonFilePath = "./Database/Quotes.json"
    $existingData = Get-Content $jsonFilePath -Raw -ErrorAction Stop | ConvertFrom-Json

    # Prompt for input
    $newQ = Read-Host "Enter app name"

    # store input
    $q = $newQ

    # Add new software object to existing array
    $existingData.Q += $q

    # Write updated JSON to file
    $existingData | ConvertTo-Json | Out-File $jsonFilePath -ErrorAction Stop
    Write-Host  "Added Successfully" -ForegroundColor Green

}
catch {
    Write-Host "An error occurred: $_"
}
