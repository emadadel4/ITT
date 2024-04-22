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

$sync['window'].FindName('emad').add_SelectionChanged({

  Write-Host $sync['window'].FindName('emad').SelectedItem.Content

  FilterByCat( $sync['window'].FindName('emad').SelectedItem.Content)

})


# Catgoray bar buttons

#===========================================================================
# End Events 
#===========================================================================


$sync["window"].ShowDialog() | out-null