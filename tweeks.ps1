function Tweeks {

	#Online
	$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/software.json"
	$result = Invoke-WebRequest -Uri $url -UseBasicParsing
	$json = $result.Content | ConvertFrom-Json 

	#Offline
	#$json = Get-Content -Path "./js/tweeks.json" | ConvertFrom-Json
    return $json   
}



	#region Generate names from json file
	foreach ($item in Tweeks)
	{
		$tbox = New-Object System.Windows.Controls.CheckBox
		$tweekslist.Items.Add($tbox)
		$tbox.Foreground = "white"

		$tbox.Content = $item.name

		if($item.check -eq "true")
		{
			$tbox.IsChecked = $true
		}
	}

		

	#endregion

	#region Show discription of selected item in $list
	$tweekslist.Add_SelectionChanged({
			
		$itemLink.Visibility = "Hidden"

		foreach($data in Tweeks)
		{
			if( $tweekslist.SelectedItem.Content -eq $data.name)
			{
				$Discription.Text = $data.discription
			}
		}
	})
	#endregion

	#region Install selected item 

		$applyBtn.add_Click({

			foreach ($item in $tweekslist.Items)
			{
				if ($item.IsChecked)
				{
					foreach ($data in Tweeks)
					{
						if($item.Content -eq $data.name)
						{
							#Test
							[System.Windows.MessageBox]::Show($data.name, 'ITTS', [System.Windows.Forms.MessageBoxButtons]::OK)
						}
					}
				}
			}
	})
	#endregion



