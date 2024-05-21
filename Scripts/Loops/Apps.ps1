# # Define a function to update the description and link when an item is selected

# function GetCheckBoxesFromStackPanel {
#     param (
#         [System.Windows.Controls.StackPanel]$item
#     )

#     $checkBoxes = @()  # Initialize an empty array to store CheckBoxes
    
#     if ($item -is [System.Windows.Controls.StackPanel]) {
#         foreach ($child in $item.Children) {
#             if ($child -is [System.Windows.Controls.StackPanel]) {
#                 foreach ($innerChild in $child.Children) {
#                     if ($innerChild -is [System.Windows.Controls.CheckBox]) {
#                         # Add CheckBox to the array
#                         $checkBoxes += $innerChild
#                     }
#                 }
#             }
#         }
#     }

#     return $checkBoxes
# }


# # Define a function to open the official website of the selected application
# function OpenOfficialWebsite {
#     # Get the name of the selected application from the list
#     $selectedAppName =  $sync.AppsListView.SelectedItem.Content

#     # Loop through the list of applications in the database and find the matching one
#     foreach ($app in $sync.database.Applications) {
#         if ($selectedAppName -eq $app.name) {
#             # Open the official website of the selected application in the default web browser
#             Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $app.name)
#             break
#         }
#     }
# }

# # Add event handlers
# $sync.AppsListView.add_Loaded({
    
#     # Add a selection changed event handler to the list control
#     $sync.AppsListView.Add_SelectionChanged({
#         UpdateDescriptionAndLink
#     })

# })

# # Add a mouse left button down event handler to the itemLink control
# $sync.itemLink.add_MouseLeftButtonDown({
#     OpenOfficialWebsite
# })

