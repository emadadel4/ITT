
# Load the JSON content from file
$jsonContent = $sync.configs.quotes

    # Check if the JSON content is an array
if ($jsonContent -is [array])
{
    # Select a random index
    $randomIndex = Get-Random -Minimum 0 -Maximum ($jsonContent.Count)

    # Get the random text
    $randomText = $jsonContent[$randomIndex]

    # Output the random text
    $Window.FindName('quotes').Text = "$($randomText)"

}
    