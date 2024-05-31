function SetLangusege {
    param (
        [string]$lang
    )

    $sync["window"].DataContext = $sync.database.locales.$($lang)
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "$lang" -Force 
}