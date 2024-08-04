#===========================================================================
#region Select elements with a Name attribute using XPath and iterate over them
#===========================================================================

# Select elements with a Name attribute and iterate
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {
    $name = $_.Name
    $element = $sync["window"].FindName($name)

    if ($element) {
        $sync[$name] = $element

        # Add event handlers based on element type
        switch ($element.GetType().Name) {
            "Button" {
                $element.Add_Click({ Invoke-Button $args[0].Name })
            }
            "MenuItem" {
                $element.Add_Click({ Invoke-Button $args[0].Name })
            }
            "TextBox" {
                $element.Add_TextChanged({ Invoke-Button $args[0].Name })
                $element.Add_GotFocus({ Invoke-Button $args[0].Name })
            }
            "Ellipse" {
                $element.add_MouseLeftButtonDown({ Invoke-Button $args[0].Name })
            }
            "ComboBox" {
                $element.add_SelectionChanged({ Invoke-Button $args[0].Name })
            }
            "TabControl" {
                $element.add_SelectionChanged({ Invoke-Button $args[0].Name })
            }
            "CheckBox" {
                $element.IsChecked = Get-ToggleStatus -ToggleSwitch $name
                $element.Add_Click({ Invoke-Toogle $args[0].Name })
            }
        }
    }
}
#===========================================================================
#endregion Select elements with a Name attribute using XPath and iterate over them
#===========================================================================

# Define OnClosing event handler
$onClosingEvent = {
    param($s, $c)

    $exitDialog = $sync.database.locales.Controls.$($sync.Langusege).exit

    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show($exitDialog, "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

    # Check user's choice
    if ($result -eq [System.Windows.MessageBoxResult]::Yes) {
        StopAllRunspace
    } else {
        $c.Cancel = $true
    }
}

# Handle the Loaded event
$sync["window"].Add_ContentRendered({
    Startup
    DisplayQuotes | Out-Null
    PlayMusic | Out-Null
    $sync["window"].Activate()
    Check-DateAndShowEvent
})

# Close Event handler
$sync["window"].add_Closing($onClosingEvent)

# Show Window
$sync["window"].ShowDialog() | Out-Null
