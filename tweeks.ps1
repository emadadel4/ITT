
$tweekslist = $Window.FindName("tweekslist")

function Tweeks {

	#Online
	#$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/software.json"
	#$result = Invoke-WebRequest -Uri $url -UseBasicParsing
	#$json = $result.Content | ConvertFrom-Json 

	#Offline
	$json = Get-Content -Path "./js/tweeks.json" | ConvertFrom-Json
    return $json   
}



#region Generate names from json file
foreach ($item in Tweeks)
{
	$checkbox = New-Object System.Windows.Controls.CheckBox
	$tweekslist.Items.Add($checkbox)
	$checkbox.Content = $item.name

	if($item.check -eq "true")
	{
		$checkbox.IsChecked = $true
	}
}

	#region Show discription of selected item in $list
	$tweekslist.Add_SelectionChanged({
		
		$itemLink.Visibility = "Visible"

		foreach($data in Tweeks)
		{
			if( $tweekslist.SelectedItem.Content -eq $data.name)
			{
				$Discription.Text = $data.discription
			}
		}
	})
	#endregion

#endregion

#region Install selected item 
$installbtn.add_Click({

	if($currentTap  = "tweeks")
	{
		foreach ($item in $tweekslist.Items)
		{
			if ($item.IsChecked)
			{
				foreach ($data in Tweeks)
				{
					if ([System.Windows.MessageBox]::Show('Do you want Apply selected Tweek', 'ITT', [System.Windows.Forms.MessageBoxButtons]::YesNo) -eq 'Yes')
					{
						Invoke-RestMethod $data.script | Invoke-Expression
					}
				}
			}
		}
	}
})
	#endregion



