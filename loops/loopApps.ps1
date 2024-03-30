
#===========================================================================
# Loops 
#===========================================================================

#region Generate items from json file
$sync.list = $Window.FindName("list")
foreach ($item in $sync.configs.applications)
{
    $checkbox = New-Object System.Windows.Controls.CheckBox
    $sync.list.Items.Add($checkbox)
    $checkbox.Foreground = "white"
    $checkbox.Content = $item.name

}

$sync.tweaks = $Window.FindName("tweaks")
foreach ($item in $sync.configs.tweaks)
{
    $checkbox = New-Object System.Windows.Controls.CheckBox
    $sync.tweaks.Items.Add($checkbox)
    $checkbox.Foreground = "white"
    $checkbox.Content = $item.name

}
#endregion

#region Get Discription of selected item in $list
$discription = $Window.FindName("description")
$itemLink = $Window.FindName('itemLink')
$sync.list.Add_SelectionChanged({
		
    $itemLink.Visibility = "Visible"

    foreach($data in $sync.configs.applications)
    {
        if($sync.list.SelectedItem.Content -eq $data.name)
        {
            $discription.Text = $data.description

        }
    }
})

$sync.tweaks.Add_SelectionChanged({
		
    foreach($data in $sync.configs.tweaks)
    {
        if($sync.tweaks.SelectedItem.Content -eq $data.name)
        {
            $discription.Text = $data.description

        }
    }
})

#endregion

#region Get Selected item Website link from json file
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

Clear-Host

#===========================================================================
# End Loops 
#===========================================================================




