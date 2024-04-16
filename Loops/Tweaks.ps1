#region Generate tweaks from json file
$sync.tweaks = $Window.FindName("tweaks")
$Window.FindName("tweeks").add_Loaded({


    foreach ($item in $sync.configs.tweaks)
    {
        $checkbox = New-Object System.Windows.Controls.CheckBox
        $sync.tweaks.Items.Add($checkbox)
        $checkbox.Content = $item.name
        $checkbox.Foreground = "White"
    }

    # Get Discription of selected tweaks in $list
    $sync.tweaks.Add_SelectionChanged({
            
        foreach($data in $sync.configs.tweaks)
        {
            if($sync.tweaks.SelectedItem.Content -eq $data.name)
            {
                $Window.FindName('description').Text =  $data.description
            }
        }
    })



})

#endregion
#===========================================================================
# End Loops 
#===========================================================================
