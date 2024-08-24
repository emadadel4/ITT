function Set-Language {
    param (
        [string]$lang  # Parameter for the language to set
    )

    # Set DataContext of the window to the specified language
    $itt["window"].DataContext = $itt.database.locales.Controls.$($lang)

    # Set registry value for the language
    Set-ItemProperty -Path $itt.registryPath  -Name "locales" -Value "$lang" -Force
}