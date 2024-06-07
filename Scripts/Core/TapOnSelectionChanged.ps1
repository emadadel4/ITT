function ChangeTap() {

    if($sync['window'].FindName('apps').IsSelected)
    {
        $sync['window'].FindName('installBtn').Visibility = "Visible"
        $sync['window'].FindName('applyBtn').Visibility = "Hidden"
        $sync.currentList = "appslist"
    }

    if($sync['window'].FindName('tweeksTab').IsSelected)
    {
        $sync['window'].FindName('applyBtn').Visibility = "Visible"
        $sync['window'].FindName('installBtn').Visibility = "Hidden"
        $sync.currentList = "tweakslist"
    }

    if($sync['window'].FindName('featurestab').IsSelected)
    {
        $sync['window'].FindName('applyBtn').Visibility = "Hidden"
        $sync['window'].FindName('installBtn').Visibility = "Hidden"
    }
}
