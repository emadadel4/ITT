CheckChoco

#===========================================================================
# Events 
#===========================================================================

# Buttons
$window.FindName('taps').add_SelectionChanged({ChangeTap})

$window.FindName('installBtn').add_click({Invoke-Install})

$window.FindName('applyBtn').add_click({ApplyTweaks})

$window.FindName('searchInput').add_TextChanged({Search})

$window.FindName('searchInput').add_GotFocus({ShowAllApplications})

$window.FindName('about').add_MouseLeftButtonDown({About})

$window.FindName('themeText').add_click({Toggle-Theme})

# Catgoray bar buttons
$window.FindName('all').add_click({ShowAllApplications($window.FindName('b').Content)})
$window.FindName('b').add_click({FilterApplicationsByCategory($window.FindName('b').Content)})
$window.FindName('m').add_click({FilterApplicationsByCategory($window.FindName('m').Content)})
$window.FindName('d').add_click({FilterApplicationsByCategory($window.FindName('d').Content)})
$window.FindName('g').add_click({FilterApplicationsByCategory($window.FindName('g').Content)})
$window.FindName('u').add_click({FilterApplicationsByCategory($window.FindName('u').Content)})
$window.FindName('c').add_click({FilterApplicationsByCategory($window.FindName('c').Content)})
$window.FindName('r').add_click({ShowRecommendedApplications($window.FindName('r').Content)})

$Window.Add_Closing({
    Write-Host "Bye :)"
})

#===========================================================================
# End Events 
#===========================================================================

if ($global:themePreference -eq "Dark") {
    Switch-ToDarkMode
} elseif ($global:themePreference -eq "Light") {
    Switch-ToLightMode
} else {
    # Default to light mode if preference not found
    Switch-ToLightMode
}


 $window.ShowDialog() | out-null
