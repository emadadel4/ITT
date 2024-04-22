CheckChoco

#===========================================================================
# Events 
#===========================================================================

# Buttons
$sync['window'].FindName('taps').add_SelectionChanged({ChangeTap})

$sync['window'].FindName('installBtn').add_click({Invoke-Install})

$sync['window'].FindName('applyBtn').add_click({ApplyTweaks})

#$sync.['window'].FindName('searchInput').add_TextChanged({Search})

$sync['window'].FindName('searchInput').add_GotFocus({ClearFilter})

$sync['window'].FindName('about').add_MouseLeftButtonDown({About})

# $window.FindName('themeText').add_click({Toggle-Theme})

# Catgoray bar buttons
$sync['window'].FindName('all').add_click({ClearFilter})




# $Window.Add_Closing({

#     Stop-Process  -ID $PID
#     Write-Host "Bye :)"
# })

#===========================================================================
# End Events 
#===========================================================================







# GetQuotes *> $null
# PlayMusic *> $null






# if ($global:themePreference -eq "Dark") {
#     Switch-ToDarkMode
# } elseif ($global:themePreference -eq "Light") {
#     Switch-ToLightMode
# } else {
#     # Default to light mode if preference not found
#     Switch-ToLightMode
# }


$sync["window"].ShowDialog() | out-null