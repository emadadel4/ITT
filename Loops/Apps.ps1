

#===========================================================================
# Loops 
#===========================================================================

# Define a function to update the description and link when an item is selected
function UpdateDescriptionAndLink {
    # Get the name of the selected application from the list
    $selectedAppName = $sync.AppsListView.SelectedItem.Content

    $sync.itemLink.Visibility = "Visible"

    # Loop through the list of applications in the configs and find the matching one
    foreach ($app in $sync.configs.applications) {

        if ($app.name -eq $selectedAppName) {

            # Update the description text block with the selected application's description
            $sync.Description.Text = $app.description
            # Update the link text block with the selected application's official website link
            $sync.itemLink.Text = "$($app.name) official website"
            break
        }
    }
}

# Define a function to open the official website of the selected application
function OpenOfficialWebsite {
    # Get the name of the selected application from the list
    $selectedAppName =  $sync.AppsListView.SelectedItem.Content

    # Loop through the list of applications in the configs and find the matching one
    foreach ($app in $sync.configs.applications) {
        if ($selectedAppName -eq $app.name) {
            # Open the official website of the selected application in the default web browser
            Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $app.name)
            break
        }
    }
}

# Add event handlers
$sync.AppsListView.add_Loaded({
    
    # Add a selection changed event handler to the list control
    $sync.AppsListView.Add_SelectionChanged({
        UpdateDescriptionAndLink
    })

})

    # Add a mouse left button down event handler to the itemLink control
    $sync.itemLink.add_MouseLeftButtonDown({
        OpenOfficialWebsite
    })


    $sync.AppsListView.add_LostFocus({

        $sync.AppsListView.SelectedItem = $null
        $sync.itemLink.Visibility = "Hidden"
        $sync.Description.Text = ""

    })


#endregion