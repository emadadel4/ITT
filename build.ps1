param (
    [string]$OutputScript = "itt.ps1",
    [string]$StartScript = ".\Scripts\start.ps1",
    [string]$FunctionsDirectory = ".\Scripts\Functions",
    [string]$DatabaseDirectory = ".\Database",
    [string]$InterfaceDirectory = ".\interface",
    [string]$LoopsDirectory = ".\loops",
    [string]$LoadXamlScript = ".\scripts\loadXmal.ps1",
    [string]$MainScript = ".\scripts\main.ps1"
)

# Initialize synchronized hashtable
$sync = [Hashtable]::Synchronized(@{})
$sync.database = @{}

# Function to write content to output script
function WriteToScript {
    param (
        [string]$Content
    )
    Add-Content -Path $OutputScript -Value $Content
}

# Function to Replace placeholder
function ReplaceTextInFile {
    param (
        [string]$FilePath,
        [string]$TextToReplace,
        [string]$ReplacementText
    )

    # Read the content of the file
    $content = Get-Content $FilePath

    # Replace the text
    $newContent = $content -replace [regex]::Escape($TextToReplace), $ReplacementText

    # Write the modified content back to the file
    $newContent | Out-File -FilePath $FilePath -Encoding utf8
}

# Function to handle file content generation
function AddFileContentToScript {
    param (
        [string]$FilePath
    )
    $Content = Get-Content -Path $FilePath -Raw
    WriteToScript -Content $Content
}

# Function to process files in a directory
function ProcessDirectory {
    param (
        [string]$Directory
    )
    Get-ChildItem $Directory -Recurse -File | ForEach-Object {
        AddFileContentToScript -FilePath $_.FullName
    }
}

# Main script generation
try {
    if (Test-Path -Path $OutputScript) {
        Remove-Item -Path $OutputScript -Force
    }

    # Write script header
    WriteToScript -Content @"
###################################################################################
#                                                                                 #
#   ___ _____ _____   _____ __  __    _    ____    _    ____  _____ _    _  _     #
#  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \  / \  |  _ \| ____| |  | || |    #
#   | |  | |   | |   |  _| | |\/| | / _ \ | | | |/ _ \ | | | |  _| | |  | || |_   #
#   | |  | |   | |   | |___| |  | |/ ___ \| |_| / ___ \| |_| | |___| |__|__   _|  #
#  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/_/   \_\____/|_____|_____| |_|    #
#                                                                                 #
#                     This file is automatically generated                        #
#                          https://github.com/emadadel4                           #
#                          https://t.me/emadadel4                                 #  
#                                                                                 #
###################################################################################

"@


    WriteToScript -Content @"

#===========================================================================
#region Begin Start
#===========================================================================

"@

    AddFileContentToScript -FilePath $StartScript
    ReplaceTextInFile -FilePath $OutputScript -TextToReplace '#{replaceme}' -ReplacementText "$(Get-Date -Format 'yyy/MM-MMM/dd-ddd')"

    WriteToScript -Content @"
#===========================================================================
#endregion End Start
#===========================================================================

"@


    WriteToScript -Content @"
#===========================================================================
#region Begin Database /APPS/TWEEAKS/Quotes/OST
#===========================================================================

"@

    Get-ChildItem .\Database | Where-Object {$psitem.extension -eq ".json"} | ForEach-Object {
        $json = (Get-Content $psitem.FullName -Raw).replace("'", "''")
        $sync.database.$($psitem.BaseName) = $json | ConvertFrom-Json
        Write-output "`$sync.database.$($psitem.BaseName) = '$json' `| ConvertFrom-Json" | Out-File ./itt.ps1 -Append -Encoding default
    }

    WriteToScript -Content @"
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST
#===========================================================================

"@

WriteToScript -Content @"

#===========================================================================
#region Begin Functions
#===========================================================================

"@

    ProcessDirectory -Directory $FunctionsDirectory

    WriteToScript -Content @"
#===========================================================================
#endregion End Functions
#===========================================================================

"@

    WriteToScript -Content @"
#===========================================================================
#region Begin WPF Window
#===========================================================================

"@

    # Define file paths
    $FilePaths = @{
        "Xaml" = Join-Path -Path $InterfaceDirectory -ChildPath "window.xaml"
        "AppXaml" = Join-Path -Path $InterfaceDirectory -ChildPath "Controls/taps.xaml"
        "Style" = Join-Path -Path $InterfaceDirectory -ChildPath "Themes/style.xaml"
        "Colors" = Join-Path -Path $InterfaceDirectory -ChildPath "Themes/colors.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        $XamlContent = (Get-Content -Path $FilePaths["Xaml"] -Raw) -replace "'", "''"
        $AppXamlContent = Get-Content -Path $FilePaths["AppXaml"] -Raw
        $StyleContent = Get-Content -Path $FilePaths["Style"] -Raw
        $ColorsContent = Get-Content -Path $FilePaths["Colors"] -Raw

        $XamlContent = $XamlContent -replace "{{Taps}}",
        $AppXamlContent -replace "{{Style}}",
        $StyleContent -replace "{{Colors}}", $ColorsContent

    } catch {
        Write-Error "Error: $($_.Exception.Message)"
    }
   
    $AppsCheckboxes  = ""
    foreach ($App  in $sync.database.Applications) {
        $AppsCheckboxes += @"

    <CheckBox Content="$($App.Name)" Tag="$($App.category)" IsChecked="$($App.check)" FontWeight="Bold"/>
    
"@
    }

    $TweaksCheckboxes  = ""
    foreach ($Tweak  in $sync.database.Tweaks) {
        $TweaksCheckboxes  += @"

    <CheckBox Content="$($Tweak.Name)"  FontWeight="Bold"/>

"@
}

    $XamlContent = $XamlContent -replace "{{Apps}}", $AppsCheckboxes 
    $XamlContent = $XamlContent -replace "{{Tweaks}}", $TweaksCheckboxes 
    WriteToScript -Content "`$inputXML = '$XamlContent'"

    WriteToScript -Content @"
#===========================================================================
#endregion End WPF Window
#===========================================================================

"@

WriteToScript -Content @"
#===========================================================================
#region Begin WPF About
#===========================================================================

"@

    # Define file paths
    $FilePaths = @{
        "about" = Join-Path -Path $InterfaceDirectory -ChildPath "about.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        $childXaml = (Get-Content -Path $FilePaths["about"] -Raw) -replace "'", "''"

    } catch {
        Write-Error "Error: $($_.Exception.Message)"
    }
   
    WriteToScript -Content "`$childXaml = '$childXaml'"

    WriteToScript -Content @"
#===========================================================================
#endregion End WPF About
#===========================================================================

"@



    WriteToScript -Content @"
#===========================================================================
#region Begin loadXmal
#===========================================================================

"@

    AddFileContentToScript -FilePath $LoadXamlScript

    WriteToScript -Content @"
#===========================================================================
#endregion End loadXmal
#===========================================================================

"@

    # Write Loops section
    WriteToScript -Content @"
#===========================================================================
#region Begin Loops
#===========================================================================

"@

    ProcessDirectory -Directory $LoopsDirectory

    WriteToScript -Content @"
#===========================================================================
#endregion End Loops
#===========================================================================

"@

    # Write Main section
    WriteToScript -Content @"
#===========================================================================
#region Begin Main
#===========================================================================

"@

    AddFileContentToScript -FilePath $MainScript

    WriteToScript -Content @"
#===========================================================================
#endregion End Main
#===========================================================================

"@

Write-Host "Successfully build " -ForegroundColor Green

./itt.ps1

}

catch {
    Write-Error "An error occurred: $_"
}