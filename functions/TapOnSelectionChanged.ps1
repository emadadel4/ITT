function ChangeTap() {
    
    if($window.FindName('apps').IsSelected)
    {
        $itemLink.Visibility = "Visible"
        $window.FindName('installBtn').Visibility = "Visible"
        $window.FindName('applyBtn').Visibility = "Hidden"
    }

    if($window.FindName('tweeks').IsSelected)
    {
        $itemLink.Visibility = "Hidden"
        $window.FindName('applyBtn').Visibility = "Visible"
        $window.FindName('installBtn').Visibility = "Hidden"
    }
}