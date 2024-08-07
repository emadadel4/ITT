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
$validCategories = @{

    # Available options

    1 = "API [Choco/Winget] Recommended"

    2 = "Default [HttpClient]" 
}

# Prompt user to choose mothed
do {
    Write-Host "Which method to download this app will be?:"
    foreach ($key in $validCategories.Keys | Sort-Object) {
        Write-Host "$key - $($validCategories[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the methods"
    if ([int]$choice -in $validCategories.Keys) {
        $userInput = $validCategories[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $validCategories.Keys)

# Read User Input.
$userInput

#===========================================================================
#region Native Downloader 
#===========================================================================

if($userInput -eq "Default [HttpClient]")
{

$AppName = Read-Host "Enter App name"
$description = (Read-Host "Enter app description") -replace '[\W.]', ''
$url = Read-Host "Enter URL Download file"

#===========================================================================
#region Begin IsExcute
#===========================================================================

$IsExcute = @{
    1 = "false"
    2 = "true"
}

# Prompt user to choose Excute
do {
    Write-Host "Is Excute file? .exe"
    foreach ($key in $IsExcute.Keys | Sort-Object) {
        Write-Host "$key - $($IsExcute[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the option"
    if ([int]$choice -in $IsExcute.Keys) {
        $Excute = $IsExcute[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $IsExcute.Keys)



#===========================================================================
#endregion IsExcute
#===========================================================================

$exeArgs = Read-Host "Enter Silent argmanet: If not silent installation press enter to skip"
if ($exeArgs -eq "") { $exeArgs = "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath" }  # Set default value if empty

#===========================================================================
#region Begin runAfterDownload
#===========================================================================

$runAfterDownload = @{
    1 = "yes"
    2 = "no"
}

# Prompt user to choose Excute
do {
    Write-Host "Run aftar download?"
    foreach ($key in $runAfterDownload.Keys | Sort-Object) {
        Write-Host "$key - $($runAfterDownload[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the option"
    if ([int]$choice -in $runAfterDownload.Keys) {
        $run = $runAfterDownload[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $runAfterDownload.Keys)



#===========================================================================
#endregion runAfterDownload
#===========================================================================

#===========================================================================
#region Begin CreateShourtcut
#===========================================================================

$CreateShourtcut = @{
    1 = "yes"
    2 = "no"
}

# Prompt user to choose Excute
do {
    Write-Host "Create shourtcut on desktop?"
    foreach ($key in $CreateShourtcut.Keys | Sort-Object) {
        Write-Host "$key - $($CreateShourtcut[$key])"
    }
    $choice = Read-Host "Enter the number corresponding to the option"
    if ([int]$choice -in $CreateShourtcut.Keys) {
        $shourtcut = $CreateShourtcut[[int]$choice]
    } else {
        Write-Host "Invalid choice. Please select a valid option."
    }
} until ([int]$choice -in $CreateShourtcut.Keys)



#===========================================================================
#endregion CreateShourtcut
#===========================================================================

#===========================================================================
#region Begin Categories
#===========================================================================

#$output = Read-Host "Enter save location"
# if ($output -eq "") { $output = "none" }  # Set default value if empty

# Define category options
$validCategories = @{
    1 = "Web Browsers"
    2 = "Media"
    3 = "Media Tools"
    4 = "Documents"
    5 = "Compression"
    6 = "Communication"
    7 = "Gaming"
    8 = "Imaging"
    9 = "Drivers"
    10 = "Utilities"
    11 = "Disk Tools"
    12 = "File Sharing"
    13 = "Development"
    14 = "Runtimes"
    15 = "Portable"
    16 = "Security"
}

# Prompt user to choose category
do {
    Write-Host "Which category this app will be?:"
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
#===========================================================================
#endregion Categories
#===========================================================================

# Define the data
$data = @{
    "name" = $AppName
    "description" = $description
    "winget" = "none"
    "choco" = "none"
    "scoop" = "none"
    "default" = @(
        @{
            "IsExcute" = $Excute
            "url" = $url
            "exeArgs" = $exeArgs
            "output" = "none"
            "shortcut" = $shourtcut
            "run" = $run
        }
    )
    "category" = $category
    "check" = "false"
}

# Convert to JSON string
$jsonString = @"
{
    "name": "$($data["name"])",
    "description": "$($data["description"])",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
        {
            "IsExcute": "$($data["default"][0]["IsExcute"])",
            "url": "$($data["default"][0]["url"])",
            "exeArgs": "$($data["default"][0]["exeArgs"])",
            "output": "$($data["default"][0]["output"])",
            "shortcut": "$($data["default"][0]["shortcut"])",
            "run": "$($data["default"][0]["run"])"
        }
    ],
    "category": "$($data["category"])",
    "check": "false"
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Resources/Database/Applications.json" | ConvertFrom-Json

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Resources/Database/Applications.json" -Encoding utf8

Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 
}
#===========================================================================
#endregion Native Downloader 
#===========================================================================

#===========================================================================
#region API 
#===========================================================================
if($userInput -eq "API [Choco/Winget] Recommended")
{
    $Name = Read-Host "Enter app name"
    $Description = [regex]::Replace((Read-Host "Enter app description").Trim(), "[^\w\s]", "")

    $choco = (Read-Host "Enter Chocolatey package name").Trim()  # Remove leading and trailing spaces
    if ($choco -eq "") { $choco = "none" }  # Set default value if empty

    $winget = (Read-Host "Enter Winget package name (default: none)").Trim()  # Remove leading and trailing spaces
    if ($winget -eq "") { $winget = "none" }  # Set default value if empty

    $scoop = (Read-Host "Enter Scoop package name (default: none)").Trim()  # Remove leading and trailing spaces
    if ($scoop -eq "") { $scoop = "none" }  # Set default value if empty

    $output = "none" # default value is none


    # Define category options
    $validCategories = @{
        1 = "Web Browsers"
        2 = "Media"
        3 = "Media Tools"
        4 = "Documents"
        5 = "Compression"
        6 = "Communication"
        7 = "Gaming"
        8 = "Imaging"
        9 = "Drivers"
        10 = "Utilities"
        11 = "Disk Tools"
        12 = "File Sharing"
        13 = "Development"
        14 = "Runtimes"
        15 = "Portable"
        16 = "Security"
    }

    # Prompt user to choose category
    do {
        Write-Host "Which category this app will be?:"
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

        # Remove "choco install" from $choco if it exists
        $choco = ($choco -replace "choco install", "" -replace ",,", ",").Trim()
        $winget = $winget.Split('--id=')[-1].Trim()
        $winget = $winget.Replace("-e", "").Trim()


# Define the data
$data = @{
    "name" = $Name
    "description" = $Description
    "winget" = $winget
    "choco" = $choco
    "scoop" = $scoop
    "default" = @(
        @{
            "IsExcute" = "false"
            "url" = "none"
            "exeArgs" = "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath"
            "output" = $output
            "shortcut" = "no"
            "run" = "no"
        }
    )
    "category" = $category
    "check" = "false"
}

# Convert to JSON string
$jsonString = @"
{
    "name": "$($data["name"])",
    "description": "$($data["description"])",
    "winget": "$($data["winget"])",
    "choco": "$($data["choco"])",
    "scoop": "$($data["scoop"])",
    "default": [
        {
            "IsExcute": "false",
            "url": "none",
            "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
            "output": "$($data["default"][0]["output"])",
            "shortcut": "$($data["default"][0]["shortcut"])"
            "run": "$($data["default"][0]["run"])"
        }
    ],
    "category": "$($data["category"])",
    "check": "false",
}
"@

# Read existing JSON file
$existingJson = Get-Content -Path "./Resources/Database/Applications.json" | ConvertFrom-Json

# Append new data to existing JSON
$existingJson += $jsonString | ConvertFrom-Json

# Convert to JSON string
$updatedJson = $existingJson | ConvertTo-Json -Depth 100

# Output to file
$updatedJson | Out-File -FilePath "./Resources/Database/Applications.json" -Encoding utf8

Write-Host "Added successfully, Don't forget to build and test it before commit" -ForegroundColor Green 
    
}
#===========================================================================
#endregion API 
#===========================================================================
    
}
catch {
    Write-Host "An error occurred: $_"
}