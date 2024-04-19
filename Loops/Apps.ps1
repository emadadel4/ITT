
#===========================================================================
# Loops 
#===========================================================================

#region Generate items from json file
$sync.list = $Window.FindName("list")

# Define a function to populate the list with checkboxes
function PopulateList {
    foreach ($app in $sync.configs.applications) {
        $checkbox = New-Object System.Windows.Controls.CheckBox
        $checkbox.Content = $app.name
        $sync.list.Items.Add($checkbox)
    }
}

# Define a function to update the description and link when an item is selected
function UpdateDescriptionAndLink {
    $selectedAppName = $sync.list.SelectedItem.Content

    foreach ($app in $sync.configs.applications) {
        if ($app.name -eq $selectedAppName) {
            $Window.FindName("description").Text = $app.description
            $Window.FindName('itemLink').Text = "$($app.name) official website"
            break
        }
    }
}

# Define a function to open the official website of the selected application
function OpenOfficialWebsite {
    $selectedAppName = $sync.list.SelectedItem.Content

    foreach ($app in $sync.configs.applications) {
        if ($app.name -eq $selectedAppName) {
            Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $app.name)
            break
        }
    }
}

# Add event handlers
$Window.FindName("apps").add_Loaded({
    PopulateList
})

$sync.list.Add_SelectionChanged({
    $Window.FindName('itemLink').Visibility = "Visible"
    UpdateDescriptionAndLink
})

$Window.FindName('itemLink').add_MouseLeftButtonDown({
    OpenOfficialWebsite
})


#endregion