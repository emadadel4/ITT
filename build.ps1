param (
    [string]$OutputScript = "itt.ps1",
    [string]$readme = "README.md",
    [string]$Assets = ".\Resources",
    [string]$Controls = ".\UI\Controls",
    [string]$DatabaseDirectory = ".\Resources\Database",
    [string]$StartScript = ".\init\start.ps1",
    [string]$MainScript = ".\init\main.ps1",
    [string]$ScritsDirectory = ".\Scripts",
    [string]$windows = ".\UI\Views",
    [string]$LoadXamlScript = ".\init\xaml.ps1",
    [switch]$Debug,
    [switch]$code,
    [string]$ProjectDir = $PSScriptRoot

)

# Initialize synchronized hashtable
$itt = [Hashtable]::Synchronized(@{})
$itt.database = @{}

# write content to output script
function WriteToScript {
    param (
        [string]$Content
    )
    $streamWriter = $null
    try {
        $streamWriter = [System.IO.StreamWriter]::new($OutputScript, $true)
        $streamWriter.WriteLine($Content)
    }
    finally {
        if ($null -ne $streamWriter) {
            $streamWriter.Dispose()
        }
    }
}

# Replace placeholder function
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

# handle file content generation
function AddFileContentToScript {
    param (
        [string]$FilePath
    )
    $Content = Get-Content -Path $FilePath -Raw
    WriteToScript -Content $Content
}

# process files in a directory
function ProcessDirectory {
    param (
        [string]$Directory
    )
    
    Get-ChildItem $Directory -Recurse -File | ForEach-Object {
        if ($_.DirectoryName -ne $Directory) {
            AddFileContentToScript -FilePath $_.FullName
        }
    }
}

# Generate Checkboxex apps/tewaks/settings
function GenerateCheckboxes {
    param (
        [array]$Items,
        [string]$ContentField,
        [string]$TagField = "",
        [string]$TipsField = "",
        [string]$IsCheckedField = "",
        [string]$ToggleField = "",
        [string]$NameField = ""
    )

    $Checkboxes = ""
    
    #$ReversedItems = $Items[$Items.Count..0]

    foreach ($Item in $Items) {        

        $CleanedDescription = $Item.Description -replace '[^\w\s.]', ''

        $CleanedCategory = $Item.Category -replace '[^\w\s]', ''

        # grap name of each item  
        $Content = $Item.$ContentField

        # Tag(Cat) in Applications.json to apps items
        $Tag = if ($TagField) { "Tag=`"$($Item.$TagField)`"" } else { "" }

        # Tips
        $Tips = if ($TipsField) { "ToolTip=`"Install it again to update. If there is an issue with the program, please report the problem on the GitHub repository.`"" } else { "" }


        # Grap and add the Name form Settings.json to Toggle Settings items
        $Name = if ($NameField) { "Name=`"$($Item.$NameField)`"" } else { "" }

        # Add Toggle Style to Item on Settings
        $Toggle = if ($ToggleField) { "Style=`"{StaticResource ToggleSwitchStyle}`"" } else { "" }

        #Checkbox the item if is true in Applications.json
        $IsChecked = if ($IsCheckedField) { "IsChecked=`"$($Item.$IsCheckedField)`"" } else { "" }

        $Checkboxes += @"

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="$Content" $Tag $IsChecked $Toggle $Name $Tips FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="$CleanedCategory"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="$CleanedDescription."/>
        </StackPanel>

"@
    }
    return $Checkboxes
}

# Process each JSON file in the specified directory
function Sync-JsonFiles {
    param (
        [Parameter(Mandatory = $true)]
        [string]$DatabaseDirectory,
        [Parameter(Mandatory = $true)]
        [string]$OutputScriptPath
    )

    Get-ChildItem $DatabaseDirectory | Where-Object {$_.extension -eq ".json"} | ForEach-Object {
        $json = (Get-Content $_.FullName -Raw).replace("'", "''")
        $itt.database.$($_.BaseName) = $json | ConvertFrom-Json
        Write-Output "`$itt.database.$($_.BaseName) = '$json' | ConvertFrom-Json" | Out-File $OutputScriptPath -Append -Encoding default
    }
}

# Update app tweaks etc count.. from README.MD
function Update-Readme {
    param (
        [string]$OriginalReadmePath = "Templates\README.md",
        [string]$NewReadmePath = "README.md",
        [string]$Apps,
        [string]$Tewaks,
        [string]$Quote,
        [string]$Track,
        [string]$Settings,
        [string]$Localization

    )

    # Read the content of the original README.md file
    $readmeContent = Get-Content -Path $OriginalReadmePath -Raw

    # Replace multiple placeholders with the new content
    $updatedContent = $readmeContent -replace "#{a}", $Apps `
    -replace "#{t}", $Tewaks `
    -replace "#{q}", $Quote `
    -replace "#{OST}", $Track `
    -replace "#{s}", $Settings `
    -replace "#{loc}", $Localization

    # Write the updated content to the new README.md file
    Set-Content -Path $NewReadmePath -Value $updatedContent
}

# Add New Contributor to Contributor.md and show his name in about window
function NewCONTRIBUTOR {
  
    # Define paths
    $gitFolder = ".git"
    $contribFile = "CONTRIBUTORS.md"
    $xamlFile = "Templates\about.xaml"
    $updatedXamlFile = "UI\Views\AboutWindow.xaml" 

    # Function to get GitHub username from .git folder
    function Get-GitHubUsername {
        $configFile = Join-Path $gitFolder "config"
        
        if (Test-Path $configFile) {
            $configContent = Get-Content $configFile -Raw
            if ($configContent -match 'url\s*=\s*https?://github.com/([^/]+)/') {
                return $matches[1]
            }
        }
        return $null
    }

    # Get GitHub username
    $username = Get-GitHubUsername

    if (-not $username) {
        Write-Error "GitHub username not found in .git/config."
        exit 1
    }

    # Read CONTRIBUTORS.md content and ensure username is unique
    if (Test-Path $contribFile) {
        $contribLines = Get-Content $contribFile | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne "" } | Sort-Object -Unique
        if ($contribLines -notcontains $username) {
            Add-Content $contribFile $username
            $contribLines += $username
        }
    } else {
        # Create CONTRIBUTORS.md if it doesn't exist and add the username
        Set-Content $contribFile $username
        $contribLines = @($username)
    }

    # Read the existing XAML file content
    $MainXamlContent = Get-Content $xamlFile -Raw

    # Generate unique TextBlock elements for each name in CONTRIBUTORS.md
    $textBlockElements = $contribLines | ForEach-Object {
        "<TextBlock Text='$($_)' Margin='1' Foreground='{DynamicResource DefaultTextColor2}' />"
    }

    # Join TextBlock elements with newline characters
    $textBlockContent = $textBlockElements -join "`r`n"

    # Replace #{names} in the XAML file with the TextBlock elements
    $newXamlContent = $MainXamlContent -replace '#{names}', $textBlockContent

    # Write the updated content to the new XAML file
    Set-Content -Path $updatedXamlFile -Value $newXamlContent -Encoding UTF8
}

# Display the number of items in json files
function CountItems {
    # Store the counts in variables for reuse
    $appsCount = $itt.database.Applications.Count
    $tweaksCount = $itt.database.Tweaks.Count
    $quotesCount = $itt.database.Quotes.Quotes.Count
    $tracksCount = $itt.database.OST.Tracks.Count
    $settingsCount = $itt.database.Settings.Count
    $localizationCount = ($itt.database.locales.Controls.PSObject.Properties | Measure-Object).Count

    # Output all the counts in one call
    Write-Host "`n$appsCount Apps`n$tweaksCount Tweaks`n$quotesCount Quotes`n$tracksCount Tracks`n$settingsCount Settings`n$localizationCount Localization" -ForegroundColor Yellow

    # Update the readme with the new counts
    Update-Readme -Apps $appsCount -Tweaks $tweaksCount -Quote $quotesCount -Track $tracksCount -Settings $settingsCount -Localization $localizationCount
}


# Write script header
function WriteHeader {

    WriteToScript -Content @"
######################################################################################
#      ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _          #
#     |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |         #
#      | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |         #
#      | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___      #
#     |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|     #
#                Automatically generated from build don't play here :)               # 
#                              #StandWithPalestine                                   #
# https://github.com/emadadel4                                                       #
# https://t.me/emadadel4                                                             #
# https://emadadel4.github.io/posts/itt                                              #
######################################################################################
"@
}

# Main script generation
try {

    if (Test-Path -Path $OutputScript) {
        Remove-Item -Path $OutputScript -Force
    }

    WriteHeader
    WriteToScript -Content @"
#===========================================================================
#region Begin Start
#===========================================================================
"@

    AddFileContentToScript -FilePath $StartScript
    ReplaceTextInFile -FilePath $OutputScript -TextToReplace '#{replaceme}' -ReplacementText "$(Get-Date -Format 'MM/dd/yyy')"
    WriteToScript -Content @"
#===========================================================================
#endregion End Start
#===========================================================================
"@

    WriteToScript -Content @"
#===========================================================================
#region Begin Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
"@

    Sync-JsonFiles -DatabaseDirectory $DatabaseDirectory -OutputScriptPath $OutputScript

    WriteToScript -Content @"
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
"@

    # Write Main section
    WriteToScript -Content @"
#===========================================================================
#region Begin Main Functions
#===========================================================================
"@
    ProcessDirectory -Directory $ScritsDirectory
    WriteToScript -Content @"
#===========================================================================
#endregion End Main Functions
#===========================================================================
"@

WriteToScript -Content @"
#===========================================================================
#region Begin WPF Main Window
#===========================================================================
"@

    # Define file paths
    $FilePaths = @{
        "MainWindow"    = Join-Path -Path $windows -ChildPath "MainWindow.xaml"
        "taps" = Join-Path -Path $Controls -ChildPath "taps.xaml"
        "menu" = Join-Path -Path $Controls -ChildPath "menu.xaml"
        "catagory" = Join-Path -Path $Controls -ChildPath "catagory.xaml"
        "search" = Join-Path -Path $Controls -ChildPath "search.xaml"
        "buttons" = Join-Path -Path $Controls -ChildPath "buttons.xaml"
        "Style"   = Join-Path -Path $Assets -ChildPath "Styles/Styles.xaml"
        "Colors"  = Join-Path -Path $Assets -ChildPath "Styles/Colors.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        # Read content from files
        $MainXamlContent     = (Get-Content -Path $FilePaths["MainWindow"] -Raw) -replace "'", "''"
        $AppXamlContent  = Get-Content -Path $FilePaths["taps"] -Raw
        $StyleXamlContent    = Get-Content -Path $FilePaths["Style"] -Raw
        $ColorsXamlContent   = Get-Content -Path $FilePaths["Colors"] -Raw
        $MenuXamlContent     = Get-Content -Path $FilePaths["menu"] -Raw
        $ButtonsXamlContent  = Get-Content -Path $FilePaths["buttons"] -Raw
        $CatagoryXamlContent = Get-Content -Path $FilePaths["catagory"] -Raw
        $searchXamlContent   = Get-Content -Path $FilePaths["search"] -Raw

        # Replace placeholders with actual content
        $MainXamlContent = $MainXamlContent -replace "{{Taps}}", $AppXamlContent
        $MainXamlContent = $MainXamlContent -replace "{{Style}}", $StyleXamlContent
        $MainXamlContent = $MainXamlContent -replace "{{Colors}}", $ColorsXamlContent
        $MainXamlContent = $MainXamlContent -replace "{{menu}}", $MenuXamlContent
        $MainXamlContent = $MainXamlContent -replace "{{buttons}}", $ButtonsXamlContent
        $MainXamlContent = $MainXamlContent -replace "{{catagory}}", $CatagoryXamlContent
        $MainXamlContent = $MainXamlContent -replace "{{search}}", $searchXamlContent

    } catch {
        Write-Error "An error occurred while processing the XAML content: $($_.Exception.Message)"
    }
   
    $AppsCheckboxes = GenerateCheckboxes -Items $itt.database.Applications -ContentField "Name" -TagField "Category" -IsCheckedField "check" -TipsField "show"
    $TweaksCheckboxes = GenerateCheckboxes -Items $itt.database.Tweaks -ContentField "Name"
    $SettingsCheckboxes = GenerateCheckboxes -Items $itt.database.Settings -ContentField "Content" -NameField "Name" -ToggleField "Style="{StaticResource ToggleSwitchStyle}""


    $MainXamlContent = $MainXamlContent -replace "{{Apps}}", $AppsCheckboxes 
    $MainXamlContent = $MainXamlContent -replace "{{Tweaks}}", $TweaksCheckboxes 
    $MainXamlContent = $MainXamlContent -replace "{{Settings}}", $SettingsCheckboxes 

    WriteToScript -Content "`$MainWindowXaml = '$MainXamlContent'"

    # Signup a new CONTRIBUTOR
    NewCONTRIBUTOR


    WriteToScript -Content @"
#===========================================================================
#endregion End WPF Main Window
#===========================================================================
"@

WriteToScript -Content @"
#===========================================================================
#region Begin WPF About Window
#===========================================================================

"@

    # Define file paths
    $FilePaths = @{
        "about" = Join-Path -Path $windows -ChildPath "AboutWindow.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        $AboutWindowXamlContent = (Get-Content -Path $FilePaths["about"] -Raw) -replace "'", "''"
    } catch {
        Write-Error "Error: $($_.Exception.Message)"
    }
   
    WriteToScript -Content "`$AboutWindowXaml = '$AboutWindowXamlContent'"

    WriteToScript -Content @"
#===========================================================================
#endregion End WPF About Window
#===========================================================================
"@

WriteToScript -Content @"
#===========================================================================
#region Begin WPF Event Window
#===========================================================================

"@

    # Define file paths
    $FilePaths = @{
        "event" = Join-Path -Path $windows -ChildPath "EventWindow.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        $EventWindowXamlContent = (Get-Content -Path $FilePaths["event"] -Raw) -replace "'", "''"
    } catch {
        Write-Error "Error: $($_.Exception.Message)"
    }
   
    WriteToScript -Content "`$EventWindowXaml = '$EventWindowXamlContent'"

    WriteToScript -Content @"
#===========================================================================
#endregion End WPF Event Window
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

    # Write Main section
    WriteToScript -Content @"
#===========================================================================
#region Begin Main
#===========================================================================
"@
    #ProcessDirectory -Directory $ScritsDirectory
    AddFileContentToScript -FilePath $MainScript
    WriteToScript -Content @"
#===========================================================================
#endregion End Main
#===========================================================================
"@

CountItems
Write-Host " `n` Build successfully" -ForegroundColor Green

if($Debug)
{
    Write-Host " `n`Starting ITT..." -ForegroundColor Green
    $script = "& '$ProjectDir\$OutputScript'"
    $pwsh = if (Get-Command pwsh -ErrorAction SilentlyContinue) { "pwsh" } else { "powershell" }
    $wt = if (Get-Command wt.exe -ErrorAction SilentlyContinue) { "wt.exe" } else { $pwsh }
    Start-Process $wt -ArgumentList "$pwsh -NoProfile -Command $script"

    # debug
    #Write-Host $ProjectDir
}

}

catch {
    Write-Error "An error occurred: $_"
}

