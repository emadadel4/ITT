#region Taps event
$taps.add_SelectionChanged({

	if ($tweeksTap.IsSelected)
	{
		$installbtn.Visibility = 'Hidden'
		$applyBtn.Visibility = 'Visible'
	}
   
    if ($appsTap.IsSelected)
	{
		$applyBtn.Visibility = 'Hidden'
		$installbtn.Visibility = 'Visible'
	}
    
})
#endregion