function Recommended() {

    #Clear Listview
    $list.Items.Clear()

    # get items that has check = true in json file
    foreach ($item in $sync.configs.applications)
    {
        # $item.check = true
        if($item.check -eq 'true')
        {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $list.Items.Add($checkbox)
            $checkbox.Content = $item.name
            $checkbox.Foreground = "#b3b3b3"
        }
    }
}