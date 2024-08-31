function About {
    # Load child window
    [xml]$about = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $about)
    $itt.about = [Windows.Markup.XamlReader]::Load($childWindowReader)
    $itt["about"].Resources.MergedDictionaries.Add($itt["window"].FindResource($itt.CurretTheme))
    # Set version and link handlers
    # $itt.about.FindName('ver').Text = $itt.lastupdate
    # $itt.about.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})
    # $itt.about.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/itt")})
    # $itt.about.FindName("blog").add_MouseLeftButtonDown({Start-Process("https://emadadel4.github.io")})
    # $itt.about.FindName("yt").add_MouseLeftButtonDown({Start-Process("https://youtube.com/@emadadel4")})
    # $itt.about.FindName("coffee").add_MouseLeftButtonDown({Start-Process("https://buymeacoffee.com/emadadel")})
    # Set data context based on language
    #$locale = if ($itt.Language -eq "en") { "en" } else { "ar" }
    #$itt.about.DataContext = $itt.database.locales.Controls.en
    # Show dialog
    $itt.about.ShowDialog() | Out-Null
}