
#===========================================================================
# Loops 
#===========================================================================
# Assigning the list control to a variable
$sync.list = $Window.FindName("list")

# Making the itemLink control visible
$Window.FindName('itemLink').Visibility = "Visible"

# Define a function to update the description and link when an item is selected
function UpdateDescriptionAndLink {
    # Get the name of the selected application from the list
    $selectedAppName = $sync.list.SelectedItem.Content

    # Loop through the list of applications in the configs and find the matching one
    foreach ($app in $sync.configs.applications) {
        if ($app.name -eq $selectedAppName) {
            # Update the description text block with the selected application's description
            $Window.FindName("description").Text = $app.description
            # Update the link text block with the selected application's official website link
            $Window.FindName('itemLink').Text = "$($app.name) official website"
            break
        }
    }
}

# Define a function to open the official website of the selected application
function OpenOfficialWebsite {
    # Get the name of the selected application from the list
    $selectedAppName = $sync.list.SelectedItem.Content

    # Loop through the list of applications in the configs and find the matching one
    foreach ($app in $sync.configs.applications) {
        if ($app.name -eq $selectedAppName) {
            # Open the official website of the selected application in the default web browser
            Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $app.name)
            break
        }
    }
}

# Add event handlers
$Window.FindName("apps").add_Loaded({
    # Add a selection changed event handler to the list control
    $sync.list.Add_SelectionChanged({
        UpdateDescriptionAndLink
    })

    # Add a mouse left button down event handler to the itemLink control
    $Window.FindName('itemLink').add_MouseLeftButtonDown({
        OpenOfficialWebsite
    })
})

#endregion