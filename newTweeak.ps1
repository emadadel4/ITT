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
    "registry" = @(
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
    "registry": [
        {
            "Path": "$($data["registry"][0]["Path"])",
            "Name": "$($data["registry"][0]["Name"])",
            "Type": "$($data["registry"][0]["Type"])",
            "Value": "$($data["registry"][0]["Value"])",
            "defaultValue": "$($data["registry"][0]["defaultValue"])",
            "refresh": "$($data["registry"][0]["refresh"])"
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