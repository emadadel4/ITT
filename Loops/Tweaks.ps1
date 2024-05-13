
# Add loaded event handler
$sync.TweaksListView.add_Loaded({
   
    # Add selection changed event handler
    $sync.TweaksListView.Add_SelectionChanged({

        $selectedItem = $sync.TweaksListView.SelectedItem.Content
        foreach ($data in $sync.database.Tweaks) {

            if ($data.name -eq $selectedItem) {

                $sync.Description.Text = $data.description
                $sync.itemLink.Visibility = if ($data.repo -ne "null") { "Visible" } else { "Hidden" }
                $sync.itemLink.Text = "Github repository"
                break
            }
        }
    })

})

# Add mouse left button down event handler for item link
$sync.itemLink.add_MouseLeftButtonDown({

    $selectedItem = $sync.TweaksListView.SelectedItem.Content

    foreach ($data in $sync.database.Tweaks) {
        if ($selectedItem -eq $data.name -and $data.repo -ne "null") {
            Start-Process $data.repo
            break
        }
    }
})


$sync.TweaksListView.add_LostFocus({

    $sync.TweaksListView.SelectedItem = $null
    $sync.itemLink.Visibility = "Hidden"
    $sync.Description.Text = ""
})
