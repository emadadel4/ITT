
# Prompt user for software information

Clear-Host

$Name = Read-Host "Enter software name"
$Description = (Read-Host "Enter software description").Trim()
$choco = (Read-Host "Enter chocolatey Package name").Trim()  # Remove leading and trailing spaces
$winget = (Read-Host "Enter winget name (default: none)").Trim()  # Remove leading and trailing spaces
if ($winget -eq "") { $winget = "none" }  # Set default value if empty
$scoop = (Read-Host "Enter scoop name (default: none)").Trim()  # Remove leading and trailing spaces
if ($scoop -eq "") { $scoop = "none" }  # Set default value if empty
$check = "false" # default value is false


# Define category options
$validCategories = @{
    1 = "Browsers"
    2 = "Media"
    3 = "Documents"
    4 = "Compression"
    5 = "Communication"
    6 = "Gaming"
    7 = "Imaging"
    8 = "Drivers"
    9 = "Utilities"
    10 = "File Sharing"
    11 = "Developer"
    12 = "Security"
}

# Prompt user to choose category
do {
    Write-Host "Valid categories:"
    foreach ($key in $validCategories.Keys | Sort-Object) {
        Write-Host "$key - $($validCategories[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the category"
    if ([int]$choice -in $validCategories.Keys) {
        $category = $validCategories[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $validCategories.Keys)



# Remove "install" from $choco if it exists
$choco = ($choco -replace "choco install", "" -replace ",,", ",").Trim()

# Define software object with sorted properties
$software = @{
    Name = $Name
    Description = $Description
    winget = $winget
    choco = $choco
    scoop = $scoop
    category = $category
    check = $check
} | Select-Object Name, Description, winget, choco, scoop, category, check

# Read existing JSON file
$jsonFilePath = "./Database/applications.json"
$existingData = Get-Content $jsonFilePath | ConvertFrom-Json

# Add new software object to existing array
$existingData += $software

# Write updated JSON to file
$existingData | ConvertTo-Json | Out-File $jsonFilePath
