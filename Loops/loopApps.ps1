
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
    $checkbox.Foreground = "#b3b3b3"


}

    # Get Discription of selected item in $list
    $list.Add_SelectionChanged({
            
        $Window.FindName('itemLink').Visibility = "Visible"

        foreach($data in $sync.configs.applications)
        {

            if($list.SelectedItem.Content -eq $data.name)
            {
                $Window.FindName('itemLink').Text  = "What is " + $data.name + " ?"
                # $Window.FindName("description").Text = $data.description
            }
        }
    })

# Get Selected item Website link from json file
$Window.FindName('itemLink').add_MouseLeftButtonDown({

    foreach ($item in $list.SelectedItem.Content)
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
