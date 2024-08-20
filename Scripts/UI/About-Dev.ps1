function About {
    # Load child window
    [xml]$about = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $about)
    $sync.about = [Windows.Markup.XamlReader]::Load($childWindowReader)
    $sync["about"].Resources.MergedDictionaries.Add($sync["window"].FindResource($sync.CurretTheme))
    # Set version and link handlers
    $sync.about.FindName('ver').Text = $sync.lastupdate
    $sync.about.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})
    $sync.about.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4")})
    $sync.about.FindName("website").add_MouseLeftButtonDown({Start-Process("https://emadadel4.github.io")})
    $sync.about.FindName("yt").add_MouseLeftButtonDown({Start-Process("https://youtube.com/@emadadel4")})
    $sync.about.FindName("sourcecode").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/ITT")})
    $sync.about.FindName("coffee").add_MouseLeftButtonDown({Start-Process("https://buymeacoffee.com/emadadel")})
    # Set data context based on language
    $locale = if ($sync.Language -eq "en") { "en" } else { "ar" }
    $sync.about.DataContext = $sync.database.locales.Controls.$locale
    # Show dialog
    $sync.about.ShowDialog() | Out-Null
}