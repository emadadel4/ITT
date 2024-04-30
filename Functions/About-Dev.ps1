function About{

    # Load child window
    [xml]$ee = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $ee)
    $childWindow = [Windows.Markup.XamlReader]::Load( $childWindowReader )
    $childWindow.ShowDialog() | Out-Null

}
