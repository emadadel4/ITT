
CheckChoco
GetQuotes *> $null
PlayMusic *> $null

#region check currnet Theme
if ($sync.theme -eq "Dark") {
  Switch-ToDarkMode
  $sync.isDarkMode = "Dark"
} 
else 
{
  Switch-ToLightMode
  $sync.isDarkMode = "Light"
}
#endregion

$sync["window"].ShowDialog() | out-null
