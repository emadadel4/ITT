function About{

    # Load child window
    [xml]$ee = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $ee)
    $childWindow = [Windows.Markup.XamlReader]::Load( $childWindowReader )
    $childWindow.FindName('ver').Text = "Last update " + $sync.version
    $childWindow.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})
    $childWindow.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4")})
    $childWindow.FindName("website").add_MouseLeftButtonDown({Start-Process("https://eprojects.orgfree.com/")})
    $childWindow.FindName("sourcecode").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/ITT")})
    $childWindow.ShowDialog() | Out-Null

}
