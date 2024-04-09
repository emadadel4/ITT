
#===========================================================================
# Loops 
#===========================================================================

#region Generate items from json file
$list = $Window.FindName("list")
foreach ($item in $sync.configs.applications)
{
    $checkbox = New-Object System.Windows.Controls.CheckBox
    $list.Items.Add($checkbox)
    $checkbox.Content = $item.name

}

# Get Discription of selected item in $list
$discription = $Window.FindName("description")
$itemLink = $Window.FindName('itemLink')
$list.Add_SelectionChanged({
		
    #$itemLink.Visibility = "Visible"

    foreach($data in $sync.configs.applications)
    {
        if($sync.list.SelectedItem.Content -eq $data.name)
        {
            $discription.Text = $data.description

        }
    }
})

# Get Selected item Website link from json file
$itemLink.add_MouseLeftButtonDown({

    foreach ($item in $sync.list.SelectedItem.Content)
    {
        foreach ($data in $sync.configs.applications)
        {
            if($item -eq $data.name)
            {
                Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $data.name)
            }
        }
    }

})
#endregion
