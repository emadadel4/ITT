# Prompt user for software information
try {
    Clear-Host
    $Name = Read-Host "Enter app name"
    $Description = (Read-Host "Enter app description").Trim()
    $repo = (Read-Host "Enter repo url").Trim()  # Remove leading and trailing spaces
    if ($repo -eq "") { $repo = "null" }  # Set default value if empty
    $script = (Read-Host "Enter script").Trim()  # Remove leading and trailing spaces
    if ($script -eq "") { $script = "none" }  # Set default value if empty
    $check = "false" # default value is false

    # Define software object with sorted properties
    $Tweak = @{
        Name = $Name
        Description = $Description
        repo = $repo
        script = $script
        check = $check
    } | Select-Object Name, Description, repo, script, check

    # Read existing JSON file
    $jsonFilePath = "./Database/tweaks.json"
    $existingData = Get-Content $jsonFilePath -ErrorAction Stop | ConvertFrom-Json

    # Add new software object to existing array
    $existingData += $Tweak

    # Write updated JSON to file
    $existingData | ConvertTo-Json | Out-File $jsonFilePath -ErrorAction Stop

    Write-Host  "Added Successfully" -ForegroundColor Green

}
catch {
    Write-Host "An error occurred: $_"
}
