
#===========================================================================
# Events 
#===========================================================================


# Buttons
$window.FindName('taps').add_SelectionChanged({ChangeTap})
$window.FindName('installBtn').add_click({Invoke-Install})
$window.FindName('applyBtn').add_click({ApplyTweaks})
$window.FindName('searchInput').add_TextChanged({Search})
$window.FindName('about').add_MouseLeftButtonDown({About})

# Catgoray bar buttons
$window.FindName('b').add_click({Catgoray($window.FindName('b').Content)})
$window.FindName('m').add_click({Catgoray($window.FindName('m').Content)})
$window.FindName('d').add_click({Catgoray($window.FindName('d').Content)})
$window.FindName('g').add_click({Catgoray($window.FindName('g').Content)})
$window.FindName('u').add_click({Catgoray($window.FindName('u').Content)})
$window.FindName('c').add_click({Catgoray($window.FindName('c').Content)})
$window.FindName('r').add_click({Recommended($window.FindName('r').Content)})
$window.FindName('all').add_click({ShowAll})
#===========================================================================
# End Events 
#===========================================================================

$window.ShowDialog() | out-null