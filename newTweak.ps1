
$validCategories = @{
    1 = "command"
    2 = "registry"
    3 = "RemoveAppxPackage"
}

# Prompt user to choose category
do {
    Write-Host "Which Tweak this will be?:"
    foreach ($key in $validCategories.Keys | Sort-Object) {
        Write-Host "$key - $($validCategories[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the category"
    if ([int]$choice -in $validCategories.Keys) {
        $userInput = $validCategories[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $validCategories.Keys)

$userInput

if($userInput -eq "registry")
{

$TweakName = Read-Host "Enter Tweak Name"

$description = Read-Host "Enter Tweak description"

$Path = Read-Host "Enter Reg Path"

$Name = Read-Host "Enter Reg Name"

$Type = Read-Host "Enter Reg Type [DWord] or [Qword] or [Binary] or [SZ]"

$Value = Read-Host "Enter Reg Value"

$defaultValue = Read-Host "Enter Reg defaultValue"
if ($defaultValue -eq "") { $defaultValue = "1" }  # Set default value 1


# Define the data
$data = @{
    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "modifying"
    "$userInput" = @(
        @{
            "Path" = $Path
            "Name" = $Name
            "Type" = $Type
            "Value" = $Value
            "defaultValue" = $defaultValue 
            "refresh" = ""
        }
    )
}

# Convert to JSON string
$jsonString = @"
{
    "name": "$($data["name"])",
    "description": "$($data["description"])",
    "check": "$($data["check"])",
    "type": "$($data["type"])",
    "$userInput": [
        {
            "Path": "$($data["$userInput"][0]["Path"])",
            "Name": "$($data["$userInput"][0]["Name"])",
            "Type": "$($data["$userInput"][0]["Type"])",
            "Value": "$($data["$userInput"][0]["Value"])",
            "defaultValue": "$($data["$userInput"][0]["defaultValue"])",
            "refresh": "$($data["$userInput"][0]["refresh"])"
        }
    ]
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Database/Tweaks.json" | ConvertFrom-Json

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Database/Tweaks.json" -Encoding utf8

}

if($userInput -eq "RemoveAppxPackage")
{

    
$TweakName = Read-Host "Enter Tweak Name"
$description = Read-Host "Enter Tweak description"
$Name = Read-Host "Enter AppxPackage Name"


# Define the data
$data = @{
    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "AppxPackage"
    "$userInput" = @(
        @{
            "Name" = $Name
        }
    )
}

# Convert to JSON string
$jsonString = @"
{
    "name": "$($data["name"])",
    "description": "$($data["description"])",
    "check": "$($data["check"])",
    "type": "$($data["type"])",
    "$userInput": [
        {
            "Name": "$($data["$userInput"][0]["Name"])",
        }
    ]
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Database/Tweaks.json" | ConvertFrom-Json

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Database/Tweaks.json" -Encoding utf8

}


if($userInput -eq "command")
{
    
$TweakName = Read-Host "Enter Tweak Name"
$description = Read-Host "Enter Tweak description"
$cmd = Read-Host "Enter command"


# Define the data
$data = @{
    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "command"
    "$userInput" = @(
        @{
            "run" = $cmd
            "delay" = "1"
        }
    )
}

# Convert to JSON string
$jsonString = @"
{
    "name": "$($data["name"])",
    "description": "$($data["description"])",
    "check": "$($data["check"])",
    "type": "$($data["type"])",
    "$userInput": [
        {
            "run": "$($data["$userInput"][0]["run"])",
            "delay": "$($data["$userInput"][0]["delay"])",
        }
    ]
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Database/Tweaks.json" | ConvertFrom-Json

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Database/Tweaks.json" -Encoding utf8

}

