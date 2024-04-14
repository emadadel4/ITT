
# Check if the JSON content is an array
if ($sync.configs.quotes -is [array])
{
    # Select a random index
    $randomIndex = Get-Random -Minimum 0 -Maximum ($sync.configs.quotes.Count)

    # Get the random text
    $randomText = $jsonContent[$randomIndex]

    # Output the random text
    $Window.FindName('quotes').Text = $randomText

}

#Install Choco
CheckChoco

#===========================================================================
# End Loops 
#===========================================================================


    