function ChangeTap() {
    
    if($window.FindName('apps').IsSelected)
    {
        $window.FindName('installBtn').Visibility = "Visible"
        $window.FindName('applyBtn').Visibility = "Hidden"
    }

    if($window.FindName('tweeks').IsSelected)
    {
        $window.FindName('applyBtn').Visibility = "Visible"
        $window.FindName('installBtn').Visibility = "Hidden"
    }
}

#===========================================================================
# End Function
#===========================================================================