CheckChoco

#===========================================================================
# Events 
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
#===========================================================================
# End Events 
#===========================================================================

GetQuotes *> $null
PlayMusic *> $null


$sync['window'].Add_Closing({

  Write-Host "Bye see you soon :)"

  Stop-Process -Id $PID
})

if ($global:themePreference -eq "Dark") {
  Switch-ToDarkMode
} elseif ($global:themePreference -eq "Light") {
  Switch-ToLightMode
} else {
  # Default to light mode if preference not found
  Switch-ToLightMode
}

$sync["window"].ShowDialog() | out-null