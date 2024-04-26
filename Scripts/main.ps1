
#check currnet Theme
if ($sync.theme -eq "Dark") {
  Switch-ToDarkMode
  $sync.isDarkMode = "Dark"
} 
else 
{
  Switch-ToLightMode
  $sync.isDarkMode = "Light"
}

#===========================================================================
#region Start Events
#===========================================================================

# Buttons
$sync['window'].FindName('taps').add_SelectionChanged({ChangeTap})
$sync['window'].FindName('installBtn').add_click({Invoke-Install})
$sync['window'].FindName('applyBtn').add_click({ApplyTweaks})
$sync['window'].FindName('searchInput').add_TextChanged({Search})
$sync['window'].FindName('searchInput').add_GotFocus({ClearFilter})
$sync['window'].FindName('about').add_MouseLeftButtonDown({About})
$sync['window'].FindName('themeText').add_click({Toggle-Theme})
$sync['window'].FindName('cat').add_SelectionChanged({FilterByCat( $sync['window'].FindName('cat').SelectedItem.Content)})
$sync['window'].FindName('save').add_click({
  
  ClearFilter
  SaveItemsToJson

})


$sync['window'].FindName('load').add_click({LoadJson})

$sync['window'].add_Closing({

  Write-Host "Bye see you soon :)"
  StopMusic
  StopAllRunspace

})

$sync['window'].FindName('mas').add_click({
  Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts")
})

$sync['window'].FindName('idm').add_click({

Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script")
})


#endregion End Events 
#===========================================================================


CheckChoco
GetQuotes *> $null
PlayMusic *> $null

$sync["window"].ShowDialog() | out-null
