function ChangeTap() {
    

    if($window.FindName('apps').IsSelected)
    {
        $window.FindName('installBtn').Visibility = "Visible"
        $window.FindName('applyBtn').Visibility = "Hidden"

        $Window.FindName('itemLink').Visibility = "Visible"

    }

    $window.FindName('apps').add_LostFocus({$Window.FindName('description').Text =  ""})
    $window.FindName('tweeks').add_LostFocus({$Window.FindName('description').Text =  ""})


    if($window.FindName('tweeks').IsSelected)
    {
        $window.FindName('applyBtn').Visibility = "Visible"
        $window.FindName('installBtn').Visibility = "Hidden"

        #$Window.FindName('itemLink').Visibility = "Visible"

    }
}



#===========================================================================
# End functions
#===========================================================================