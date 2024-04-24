
# Add loaded event handler
$sync['window'].FindName("tweaks").add_Loaded({
   
    # Add selection changed event handler
    $sync['window'].FindName("tweaks").Add_SelectionChanged({
        $selectedItem = $sync['window'].FindName("tweaks").SelectedItem.Content
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

        $selectedItem = $sync['window'].FindName("tweaks").SelectedItem.Content

        foreach ($data in $sync.configs.tweaks) {
            if ($selectedItem -eq $data.name -and $data.repo -ne "null") {
                Start-Process $data.repo
                break
            }
        }
    })

    $sync['window'].FindName("tweeks").add_LostFocus({

        $sync['window'].FindName("tweaks").SelectedItem = $null
        $sync['window'].FindName('list').SelectedItem = $null
        #$sync['window'].FindName('itemLink').Visibility = "Hidden"
        $sync['window'].FindName('description').Text = ""
    })
    
 
})



#===========================================================================
# End Loops 
#===========================================================================
