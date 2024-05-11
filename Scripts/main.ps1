
CheckChoco
GetQuotes *> $null 
PlayMusic *> $null 

# Define OnClosing event handler
$onClosingEvent = {
    param($sender, $eventArgs)
    
    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show("Are you sure you want to close the program, If there are any installing, this will end it", "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

    # Check user's choice
    if ($result -eq "Yes")
    {
        # Close the window
        StopAllRunspace
   
    }else{
        # Cancel closing the window
        $eventArgs.Cancel = $true
    }
}

# Add OnClosing event handler to the window
$sync["window"].add_Closing($onClosingEvent)


Send-SystemInfo -FirebaseUrl $FirebaseUrl -Key $Key

# Show the window
$sync["window"].ShowDialog() | Out-Null