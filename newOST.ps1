try {
Clear-Host
Write-Host "
+-------------------------------------------------------------------------+
|    ___ _____ _____   ____    _  _____  _    ____    _    ____  _____    |
|   |_ _|_   _|_   _| |  _ \  / \|_   _|/ \  | __ )  / \  / ___|| ____|   |
|    | |  | |   | |   | | | |/ _ \ | | / _ \ |  _ \ / _ \ \___ \|  _|     |
|    | |  | |   | |   | |_| / ___ \| |/ ___ \| |_) / ___ \ ___) | |___    |
|   |___| |_|   |_|   |____/_/   \_\_/_/   \_\____/_/   \_\____/|_____|   |
|    Made with ♥  By Emad Adel                                            |
+-------------------------------------------------------------------------+
"
    # Read existing JSON file
    $jsonFilePath = "./Assets/Database/OST.json"
    $existingData = Get-Content $jsonFilePath -Raw -ErrorAction Stop | ConvertFrom-Json

    # Prompt for input
    $newOST = Read-Host "Enter the URL/ Example: www.eprojects.orgfree.com/ezio_family.mp3"

    # Store input
    $track = $newOST

    # Add new object to existing array
    $existingData.Tracks += $track

    # Write updated JSON to file
    $existingData | ConvertTo-Json | Out-File $jsonFilePath -ErrorAction Stop
    Write-Host  "Added Successfully" -ForegroundColor Green

}
catch {
    Write-Host "An error occurred: $_"
}
