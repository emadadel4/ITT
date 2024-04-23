#region Generate tweaks from json file
$sync.tweaks = $sync['window'].FindName("tweaks")

# Add loaded event handler
$sync['window'].FindName("tweeks").add_Loaded({
   
    # Add selection changed event handler
    $sync.tweaks.Add_SelectionChanged({
        $selectedItem = $sync.tweaks.SelectedItem.Content
        foreach ($data in $sync.configs.tweaks) {
            if ($data.name -eq $selectedItem) {
                $sync['window'].FindName('description').Text = $data.description
                $sync['window'].FindName('itemLink').Visibility = if ($data.repo -ne "null") { "Visible" } else { "Hidden" }
                $sync['window'].FindName('itemLink').Text = "Github repository"
                break
            }
        }
    })

    # Add mouse left button down event handler for item link
    $sync['window'].FindName('itemLink').add_MouseLeftButtonDown({

        $selectedItem = $sync.tweaks.SelectedItem.Content

        foreach ($data in $sync.configs.tweaks) {
            if ($selectedItem -eq $data.name -and $data.repo -ne "null") {
                Start-Process $data.repo
                break
            }
        }
    })

})


$sync['window'].FindName("tweeks").add_LostFocus({
    $sync.tweaks.SelectedItem = $null
})


#endregion
#===========================================================================
# End Loops 
#===========================================================================
