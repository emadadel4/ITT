function Set-Langusege {
    param (
        [string]$lang  # Parameter for the language to set
    )

    # Set DataContext of the window to the specified language
    $sync["window"].DataContext = $sync.database.locales.$($lang)

    # Set registry value for the language
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "$lang" -Force
}