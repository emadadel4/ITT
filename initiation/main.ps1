
#===========================================================================
#region Select all elements with a Name attribute using XPath and iterate over them
#===========================================================================

    # Select all elements with a Name attribute using XPath and iterate over them
    $xaml.SelectNodes("//*[@Name]") | ForEach-Object {
        # Assign each element to a variable in $sync dictionary
        $sync[$($_.Name)] = $sync["window"].FindName($_.Name)
    }

    # Iterate over keys in $sync dictionary
    $sync.Keys | ForEach-Object {
        $element = $sync[$_]

        # Check if the element exists
        if ($element) {

            # Check if the element is a Button
            if ($element.GetType().Name -eq "Button") {
                # Add a click event handler to the button

                $element.Add_Click({
                    param([System.Object]$sender, $eventArgs)
                    Invoke-Button $sender.Name
                })
            }

            # Check if the element is a MenuItem
            if ($element.GetType().Name -eq "MenuItem") {
                # Add a click event handler to the MenuItem

                $element.Add_Click({
                    param([System.Object]$sender, $eventArgs)
                    Invoke-Button $sender.Name
                })
            }

            # Check if the element is a TextBox
            if ($element.GetType().Name -eq "TextBox") {

                $element.Add_TextChanged({
                    param([System.Object]$sender, $eventArgs)
                    Invoke-Button $sender.Name
                })

                $element.Add_GotFocus({
                    param([System.Object]$sender, $eventArgs)
                    Invoke-Button $sender.Name
                })
            }

            # Check if the element is a Ellipse
            if ($element.GetType().Name -eq "Ellipse") {
                    # Add a click event handler to the Ellipse

                    $element.add_MouseLeftButtonDown({
                        param([System.Object]$sender, $eventArgs)
                        Invoke-Button $sender.Name
                    })
            }

            # Check if the element is a ComboBox
            if ($element.GetType().Name -eq "ComboBox") {
                # Add a click event handler to the ComboBox

                $element.add_SelectionChanged({
                    param([System.Object]$sender, $eventArgs)
                    Invoke-Button $sender.Name
                })
            }

            # Check if the element is a TabControl
            if ($element.GetType().Name -eq "TabControl") {
                # Add a click event handler to the TabControl

                $element.add_SelectionChanged({
                    param([System.Object]$sender, $eventArgs)
                    Invoke-Button $sender.Name
                })
            }

            # Check if the element is a TabControl
            if ($element.GetType().Name -eq "CheckBox")
            {
                $element.IsChecked = Get-ToggleStatus -ToggleSwitch $element.Name

                 $element.Add_Click({
                    [System.Object]$Sender = $args[0]
                    Invoke-Toogle $Sender.name
                })
            }
        }
    }
#===========================================================================
#endregion Select all elements with a Name attribute using XPath and iterate over them
#===========================================================================

# Define OnClosing event handler
$onClosingEvent = {
    
    param($s, $c)
    
    $exitdialog = $sync.database.locales.Controls.$($sync.Langusege).exit

    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show($exitdialog, "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

    # Check user's choice
    if ($result -eq "Yes")
    {
        # Close the window and stop all runspace
        StopAllRunspace
    }
    else
    {
        # Cancel closing the window
        $c.Cancel = $true
    }
}

# Handle the Loaded event
$sync["window"].Add_ContentRendered({
    Startup
    GetQuotes | Out-Null
    PlayMusic | Out-Null
    $sync["window"].Activate()
})

#Close Event button
$sync["window"].add_Closing($onClosingEvent)

# Show Window
$sync["window"].ShowDialog() | Out-Null

