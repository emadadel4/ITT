function Show-Event {


    [xml]$event = $EventWindowXaml
    $EventWindowReader = (New-Object System.Xml.XmlNodeReader $event)
    $itt.event = [Windows.Markup.XamlReader]::Load($EventWindowReader)
    $itt.event.Resources.MergedDictionaries.Add($itt["window"].FindResource($itt.CurretTheme))


    $itt.event.FindName('date').Text = $itt.date
    $CloseBtn = $itt.event.FindName('closebtn')

    #{title}

    #{contorlshandler}

    $CloseBtn.add_MouseLeftButtonDown({
        $itt.event.Close()
    })

    # Show dialog
    $itt.event.ShowDialog() | Out-Null
}