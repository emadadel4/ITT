Clear-Host

$validCategories = @{

    # Available options

    1 = "Commands"

    2 = "Registry"

    3 = "RemoveAppxPackage"

    4 = "Service"

}

# Prompt user to choose tweaks
do {
    Write-Host "Which Tweak this will be?:"
    foreach ($key in $validCategories.Keys | Sort-Object) {
        Write-Host "$key - $($validCategories[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the tweaks"
    if ([int]$choice -in $validCategories.Keys) {
        $userInput = $validCategories[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $validCategories.Keys)

# Read User Input.
$userInput

#===========================================================================
#region Registry 
#===========================================================================
if($userInput -eq "Registry")
{

$TweakName = Read-Host "Enter Tweak Name"

$description = Read-Host "Enter Tweak description"

$Path = Read-Host "Enter Reg Path"

$Path = $Path -replace '\\', '\\'

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

Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 


}
#===========================================================================
#endregion Registry 
#===========================================================================

#===========================================================================
#region RemoveAppxPackage 
#===========================================================================

if($userInput -eq "RemoveAppxPackage")
{

$TweakName = Read-Host "Enter Tweak Name"
$description = Read-Host "Enter Tweak description"

# Read multiple AppxPackage Names
$Names = @()
# Read multiple AppxPackage Names
do {
    $Name = Read-Host "Enter AppxPackage Name"
    $Names += $Name
    $continue = Read-Host "Do you want to add another AppxPackage Name? (y/n)"
} while ($continue -eq "y")


# Define the data
$data = @{
    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "AppxPackage"
    "$userInput" = @(
        $Names | ForEach-Object {
            @{
                "Name" = $_
            }
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
    "$userInput": $($data["$userInput"] | ConvertTo-Json -Depth 100)
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Database/Tweaks.json" -Raw | ConvertFrom-Json -ErrorAction SilentlyContinue
if (!$existingJson) {
    $existingJson = @()
}

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Database/Tweaks.json" -Encoding utf8
    
Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 

}

#===========================================================================
#endregion RemoveAppxPackage 
#===========================================================================

#===========================================================================
#region Command 
#===========================================================================

if($userInput -eq "Command")
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

Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 

}

#===========================================================================
#endregion Command 
#===========================================================================


#===========================================================================
#region Services 
#===========================================================================

if($userInput -eq "Service")
{

$TweakName = Read-Host "Enter Tweak Name"
$description = Read-Host "Enter Tweak description"

# Read multiple Disable Services Names
$Names = @()
# Read multiple Disable Services Names
do {

    $Name = Read-Host "Enter Service Name"
    $StartupType = Read-Host "Enter Service StartupType"
    $Automatic = Read-Host "Enter Service Default State"
    $Names += $Name

    $continue = Read-Host "Do you want to add another Service ? (y/n)"
} while ($continue -eq "y")


# Define the data as an ordered hashtable
$data = [Ordered]@{

    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "service"
    "$userInput" = @(
        $Names | ForEach-Object {
            [Ordered]@{
                "Name" = $_
                "StartupType" = $StartupType
                "DefaultType" = $Automatic
            }
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
    "$userInput": $($data["$userInput"] | ConvertTo-Json -Depth 100)
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Database/Tweaks.json" -Raw | ConvertFrom-Json -ErrorAction SilentlyContinue
if (!$existingJson) {
    $existingJson = @()
}

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Database/Tweaks.json" -Encoding utf8

Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 

}

#===========================================================================
#endregion RemoveAppxPackage 
#===========================================================================
