
# Add loaded event handler
$sync.TweeaksListView.add_Loaded({
   
    # Add selection changed event handler
    $sync.TweeaksListView.Add_SelectionChanged({

        $selectedItem = $sync.TweeaksListView.SelectedItem.Content
        foreach ($data in $sync.database.tweaks) {

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

    $selectedItem = $sync.TweeaksListView.SelectedItem.Content

    foreach ($data in $sync.database.tweaks) {
        if ($selectedItem -eq $data.name -and $data.repo -ne "null") {
            Start-Process $data.repo
            break
        }
    }
})


$sync.TweeaksListView.add_LostFocus({

    $sync.TweeaksListView.SelectedItem = $null
    $sync.itemLink.Visibility = "Hidden"
    $sync.Description.Text = ""
})
