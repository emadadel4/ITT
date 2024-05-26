Clear-Host


Write-Host "



 ___ _____ _____   ____    _  _____  _    ____    _    ____  _____ 
 |_ _|_   _|_   _| |  _ \  / \|_   _|/ \  | __ )  / \  / ___|| ____|
  | |  | |   | |   | | | |/ _ \ | | / _ \ |  _ \ / _ \ \___ \|  _|  
  | |  | |   | |   | |_| / ___ \| |/ ___ \| |_) / ___ \ ___) | |___ 
 |___| |_|   |_|   |____/_/   \_\_/_/   \_\____/_/   \_\____/|_____|



"

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

# Read multiple AppxPackage Names
$Names = @()
# Read multiple AppxPackage Names
do {


    $TweakType = @{

        1 = "modifying"
        2 = "delete"
    }
    
    # Prompt user to choose KeyType
    do {
        Write-Host "This tweak will do?"
        foreach ($key in $TweakType.Keys | Sort-Object) {
            Write-Host "$key - $($TweakType[$key])"
        }
        $choice = Read-Host "Enter the number corresponding to the Key Type"
        if ([int]$choice -in $TweakType.Keys) {
            $TType = $TweakType[[int]$choice]
        } else {
            Write-Host "Invalid choice. Please select a valid option."
        }
    } until ([int]$choice -in $TweakType.Keys)


    $Path = Read-Host "Enter Reg Path"
    $Name = Read-Host "Enter Value Name"

        
    $KeyType = @{

        1 = "DWord"
        2 = "Qword"
        3 = "Binary"
        4 = "SZ"
        5 = "EXPAND_SZ"
        6 = "LINK"
        7 = "MULTI_SZ"
        8 = "NONE"
        9 = "QWORD_LITTLE_ENDIAN"
    }
    
    # Prompt user to choose KeyType
    do {
        Write-Host "What is the Key type"
        foreach ($key in $KeyType.Keys | Sort-Object) {
            Write-Host "$key - $($KeyType[$key])"
        }
        $choice = Read-Host "Enter the number corresponding to the Key Type"
        if ([int]$choice -in $KeyType.Keys) {
            $Type = $KeyType[[int]$choice]
        } else {
            Write-Host "Invalid choice. Please select a valid option."
        }
    } until ([int]$choice -in $KeyType.Keys)


    $Value = Read-Host "Enter Value"
    $defaultValue = Read-Host "Enter default Value"

    $Names += $Name



    $continue = Read-Host "Do you want to add another Path in current Tweak? (y/n)"
} while ($continue -eq "y")


# Define the data
$data = @{
    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = $TType
    "refresh" = "false"
    "$userInput" = @(
        $Names | ForEach-Object {
            @{
                "Path" = $Path
                "Name" = $Name
                "Type" = $Type
                "Value" = $Value
                "defaultValue" = $defaultValue

            } | Select-Object Path, Name, Type, Value, defaultValue
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
    "refresh": "$($data["refresh"])",
    "$userInput": $($data["$userInput"] | ConvertTo-Json -Depth 100)
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Assets/Database/Tweaks.json" -Raw | ConvertFrom-Json -ErrorAction SilentlyContinue
if (!$existingJson) {
    $existingJson = @()
}

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Assets/Database/Tweaks.json" -Encoding utf8
    
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
    $continue = Read-Host "Do you want to add another AppxPackage in current Tweak? (y/n)"
} while ($continue -eq "y")


# Define the data
$data = @{
    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "AppxPackage"
    "refresh" = "false"
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
    "refresh": "$($data["refresh"])",
    "$userInput": $($data["$userInput"] | ConvertTo-Json -Depth 100)
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Assets/Database/Tweaks.json" -Raw | ConvertFrom-Json -ErrorAction SilentlyContinue
if (!$existingJson) {
    $existingJson = @()
}

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Assets/Database/Tweaks.json" -Encoding utf8
    
Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 

}

#===========================================================================
#endregion RemoveAppxPackage 
#===========================================================================

#===========================================================================
#region Command 
#===========================================================================

if($userInput -eq "Commands")
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
    "refresh" = "false"
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
    "refresh": "$($data["refresh"])",
    "$userInput": [
        {
            "run": "$($data["$userInput"][0]["run"])",
            "delay": "$($data["$userInput"][0]["delay"])",
        }
    ]
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Assets/Database/Tweaks.json" | ConvertFrom-Json

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Assets/Database/Tweaks.json" -Encoding utf8

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

    $StartupType = @{

        1 = "Disabled"
        2 = "Automatic"
        3 = "Automatic"
        4 = "Manual "
    }
    
    # Prompt user to choose KeyType
    do {
        Write-Host "What is Startup Type will be?"
        foreach ($key in $StartupType.Keys | Sort-Object) {
            Write-Host "$key - $($StartupType[$key])"
        }
        $choice = Read-Host "Enter the number corresponding to the Key Type"
        if ([int]$choice -in $StartupType.Keys) {
            $Type = $StartupType[[int]$choice]
        } else {
            Write-Host "Invalid choice. Please select a valid option."
        }
    } until ([int]$choice -in $StartupType.Keys)


    $Automatic = Read-Host "Enter Service Default State: You can skip this Press [Enter]"
    if ($Automatic -eq "") { $Automatic = "Manual" }  # Set default value if empty

    $Names += $Name

    $continue = Read-Host "Do you want to add another Service in current Tweak ? (y/n)"
} while ($continue -eq "y")


# Define the data as an ordered hashtable
$data = [Ordered]@{

    "name" = $TweakName
    "description" = $description
    "check" = "false"
    "type" = "service"
    "refresh" = "false"
    "$userInput" = @(
        $Names | ForEach-Object {
            [Ordered]@{
                "Name" = $_
                "StartupType" = $Type
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
    "refresh": "$($data["refresh"])",
    "$userInput": $($data["$userInput"] | ConvertTo-Json -Depth 100)
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Assets/Database/Tweaks.json" -Raw | ConvertFrom-Json -ErrorAction SilentlyContinue
if (!$existingJson) {
    $existingJson = @()
}

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Assets/Database/Tweaks.json" -Encoding utf8

Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 

}

#===========================================================================
#endregion RemoveAppxPackage 
#===========================================================================
