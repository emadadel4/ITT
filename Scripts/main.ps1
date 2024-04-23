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

$sync['window'].FindName('emad').add_SelectionChanged({

  FilterByCat( $sync['window'].FindName('emad').SelectedItem.Content)

})

Switch-ToDarkMode

if ($global:themePreference -eq "Dark") {
  Switch-ToDarkMode
} elseif ($global:themePreference -eq "Light") {
  Switch-ToLightMode
} else {
  # Default to light mode if preference not found
  Switch-ToLightMode
}


#===========================================================================
# End Events 
#===========================================================================


$sync["window"].ShowDialog() | out-null