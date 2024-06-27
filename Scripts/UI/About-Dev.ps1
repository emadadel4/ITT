function About{
    # Load child window
    [xml]$about = $childXaml
    $sync.about = $childWindow
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $about)
    $sync.about = [Windows.Markup.XamlReader]::Load( $childWindowReader )
    $sync.about.FindName('ver').Text =  $sync.lastupdate
    $sync.about.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})
    $sync.about.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4")})
    $sync.about.FindName("website").add_MouseLeftButtonDown({Start-Process("https://emadadel4.github.io")})
    $sync.about.FindName("sourcecode").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/ITT")})

    if($sync.Langusege -eq "en")
    {
        #$childWindow["window"].DataContext = $sync.database.locales.en
        $sync.about.DataContext = $sync.database.locales.en
    }
    else
    {
        #$childWindow["window"].DataContext = $sync.database.locales.ar
        $sync.about.DataContext = $sync.database.locales.ar
    }
    $sync.about.ShowDialog() | Out-Null
}