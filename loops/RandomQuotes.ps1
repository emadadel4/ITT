$jsonContent = $sync.configs.quotes
# Get random text from the array
$randomText = $jsonContent | Get-Random
$window.FindName('quotes').Text = $randomText