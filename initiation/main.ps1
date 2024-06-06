# Check Chocolatey is Installed or not
CheckChoco

# Define OnClosing event handler
$onClosingEvent = {
    
    param($s, $c)
    
    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show("Are you sure you want to close the program, If there are any installing, this will end it", "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

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

# Add OnClosing event handler to the window
# Handle the Loaded event
$sync["window"].Add_Loaded({
    GetQuotes | Out-Null
    PlayMusic | Out-Null
    $sync["window"].Activate()
})


#Close Event button
$sync["window"].add_Closing($onClosingEvent)

# Show Window
$sync["window"].ShowDialog() | Out-Null

