function About{

    # Load child window
    [xml]$ee = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $ee)
    $childWindow = [Windows.Markup.XamlReader]::Load( $childWindowReader )


    $childWindow.FindName('ver').Text = $sync.version

    $childWindow.ShowDialog() | Out-Null

}
