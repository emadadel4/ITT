Start-Process powershell -verb runas -ArgumentList "-file fullpathofthescript"

[System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework") | Out-Null



function Import-Xaml {
	[xml]$xaml = Get-Content -Path $PSScriptRoot\MainWindow.xaml
	$manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $xaml.NameTable
	$manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$xamlReader = New-Object System.Xml.XmlNodeReader $xaml
	[Windows.Markup.XamlReader]::Load($xamlReader)
	
}




$json = Get-Content -Path '.\js\softwearlist.json' | ConvertFrom-Json

$Window = Import-Xaml 


#Controls
$list = $Window.FindName("list")




$label = $Window.FindName("quotes")
$Discription = $Window.FindName("Discription")


$applyBtn = $Window.FindName('applybtn')
#End of control




#Generate names from json file
foreach ($item in $json)
{
	$checkbox = New-Object System.Windows.Controls.CheckBox
	$list.Items.Add($checkbox)
	$checkbox.Content = $item.name
}



#Select a program and install 
$applyBtn.add_Click({

	$Link = "https://ninite.com/"


	foreach ($item in $list.Items)
	{
		if ($item.IsChecked)
		{
			foreach ($data in $json)
			{
				if($item.Content -eq $data.name)
				{
					#Write-Host $data.url
					$Link = $Link + $data.url + "-"
				}
			}
		}
	}


	$Link = $Link + "/ninite.exe"
	$Destination = "$env:temp/Install.exe"

	if (Test-Path $Destination)
	{
		Remove-Item -Verbose -Force $Destination
	}

	if ([System.Windows.MessageBox]::Show('Do you want install selected programes', 'ITTS', [System.Windows.Forms.MessageBoxButtons]::YesNo) -eq 'Yes')
	{
		Write-Host "Ninite Link: $($Link)"
		Write-Host "Starting Installer Download"
		$Discription.Content = "Starting Installer Download"
		Invoke-WebRequest $Link -OutFile $Destination
		$Discription.Content = "Starting Installation"
		Start-Process -Filepath $Destination
	}
})




$list.Add_SelectionChanged({
	
	foreach($data in $json)
	{
		if( $list.SelectedItem.Content -eq $data.name)
		{
			$Discription.Text = $data.discription
		}
	}

})









$Window.ShowDialog()


