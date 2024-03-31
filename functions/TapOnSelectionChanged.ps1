function ChangeTap() {
    
    if($window.FindName('apps').IsSelected)
    {
        Write-Host "Apps"
        $window.FindName('installBtn').Visibility = "Visible"
        $window.FindName('applyBtn').Visibility = "Hidden"
    }

    if($window.FindName('tweeks').IsSelected)
    {
        Write-Host "Tweaks"
        $window.FindName('applyBtn').Visibility = "Visible"
        $window.FindName('installBtn').Visibility = "Hidden"
    }
}