function Set-Language {
    param (
        [string]$lang  # Parameter for the language to set
    )

    # Set DataContext of the window to the specified language
    $sync["window"].DataContext = $sync.database.locales.Controls.$($lang)

    # Set registry value for the language
    Set-ItemProperty -Path $sync.registryPath  -Name "locales" -Value "$lang" -Force
}