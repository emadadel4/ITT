
$window.FindName('installBtn').add_click({Install})
$window.FindName('applyBtn').add_click({ApplyTweaks})
$window.FindName('about').add_MouseLeftButtonDown({about})

$window.FindName('taps').add_SelectionChanged({ChangeTap})


$sync = $window.ShowDialog() | out-null
#Stop-Transcript

