#region Generate tweaks from json file
$sync.tweaks = $Window.FindName("tweaks")

# Function to add tweak checkboxes
function Add-TweakCheckboxes {
    foreach ($item in $sync.configs.tweaks) {
        $checkbox = New-Object System.Windows.Controls.CheckBox
        $checkbox.Content = $item.name
        $sync.tweaks.Items.Add($checkbox)
    }
}

# Add loaded event handler
$Window.FindName("tweeks").add_Loaded({
    Add-TweakCheckboxes
})

# Add selection changed event handler
$sync.tweaks.Add_SelectionChanged({
    $selectedItem = $sync.tweaks.SelectedItem.Content
    foreach ($data in $sync.configs.tweaks) {
        if ($data.name -eq $selectedItem) {
            $Window.FindName('description').Text = $data.description
            $Window.FindName('itemLink').Visibility = if ($data.repo -ne "null") { "Visible" } else { "Hidden" }
            $Window.FindName('itemLink').Text = "Github repository"
            break
        }
    }
})

# Add mouse left button down event handler for item link
$Window.FindName('itemLink').add_MouseLeftButtonDown({
    $selectedItem = $sync.tweaks.SelectedItem.Content
    foreach ($data in $sync.configs.tweaks) {
        if ($selectedItem -eq $data.name -and $data.repo -ne "null") {
            Start-Process $data.repo
            break
        }
    }
})



#endregion
#===========================================================================
# End Loops 
#===========================================================================
