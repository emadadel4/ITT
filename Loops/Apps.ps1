
# #===========================================================================
# # Loops 
# #===========================================================================

# # Assigning the list control to a variable
# $sync.list = $sync['window'].FindName("list")
# $sync.des = $sync['window'].FindName("description")
# $sync.q = $sync['window'].FindName("quotes")

# # Making the itemLink control visible
# $sync['window'].FindName('itemLink').Visibility = "Visible"

# # Define a function to update the description and link when an item is selected
# function UpdateDescriptionAndLink {
#     # Get the name of the selected application from the list
#     $selectedAppName = $sync.list.SelectedItem.Content

#     # Loop through the list of applications in the configs and find the matching one
#     foreach ($app in $sync.configs.applications) {
#         if ($app.name -eq $selectedAppName) {
#             # Update the description text block with the selected application's description
#             $Window.FindName("description").Text = $app.description
#             # Update the link text block with the selected application's official website link
#             $Window.FindName('itemLink').Text = "$($app.name) official website"
#             break
#         }
#     }
# }

# # Define a function to open the official website of the selected application
# function OpenOfficialWebsite {
#     # Get the name of the selected application from the list
#     $selectedAppName = $sync.list.SelectedItem.Content

#     # Loop through the list of applications in the configs and find the matching one
#     foreach ($app in $sync.configs.applications) {
#         if ($selectedAppName -eq $app.name) {
#             # Open the official website of the selected application in the default web browser
#             Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $app.name)
#             break
#         }
#     }
# }

# # Add event handlers
# $sync['window'].FindName("apps").add_Loaded({
#     # Add a selection changed event handler to the list control
#     $sync.list.Add_SelectionChanged({
#         UpdateDescriptionAndLink
#     })

#     # Add a mouse left button down event handler to the itemLink control
#     $sync['window'].FindName('itemLink').add_MouseLeftButtonDown({
#         OpenOfficialWebsite
#     })
# })


# $sync['window'].FindName("apps").add_LostFocus({

#   $sync.list.SelectedItem = $null

# })

# #endregion