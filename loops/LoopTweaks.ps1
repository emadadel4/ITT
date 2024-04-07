#region Generate tweaks from json file
$sync.tweaks = $Window.FindName("tweaks")
foreach ($item in $sync.configs.tweaks)
{
    $checkbox = New-Object System.Windows.Controls.CheckBox
    $sync.tweaks.Items.Add($checkbox)
    $checkbox.Content = $item.name

}

# Get Discription of selected tweaks in $list
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

cls

#===========================================================================
# End Loops 
#===========================================================================