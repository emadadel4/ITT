function Replace-XamlPlaceholders {
    param (
        [string]$FilePath
    )

    try {
        # Read content from file and replace placeholders
        $childXaml = (Get-Content -Path $FilePath -Raw) -replace "'", "''"
    } catch {
        Write-Error "Error reading XAML file: $($_.Exception.Message)"
        return
    }

    # Return modified content
    return $childXaml
}

# Usage example:
$aboutXamlPath = Join-Path -Path $windows -ChildPath "about.xaml"
$modifiedContent = Replace-XamlPlaceholders -FilePath $aboutXamlPath

# Assuming WriteToScript function is defined elsewhere
# WriteToScript -Content "`$childXaml = '$modifiedContent'"
