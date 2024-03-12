
#region GUI
[System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework") | Out-Null
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

#Build the GUI
[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" Title="ITT" WindowStartupLocation = "CenterScreen" 
    Width = "800" Height = "600" ShowInTaskbar = "True">

	<Grid>

        <Grid.RowDefinitions>
            <RowDefinition Height="25"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="100"/>
        </Grid.RowDefinitions>

        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="*"/>
            <ColumnDefinition Width="200"/>
        </Grid.ColumnDefinitions>

        <Menu Grid.Row="0" Grid.Column="0" Grid.ColumnSpan="2" Background="{x:Null}" >
            <MenuItem Header="File">
                
            </MenuItem>
        </Menu>


        <Grid Grid.Row="1" >
            <ListView x:Name="list"  Background="{x:Null}" BorderBrush="{x:Null}">
            
            </ListView>
        </Grid>

        <Grid Grid.Row="2">
            <Label x:Name="quotes" Content=".أنت تخشى دائمًا ما لا تفهمه" VerticalAlignment="Center"/>
        </Grid>

        <Grid Grid.Row="2" Grid.Column="2">
            <Button x:Name="applybtn" Content="Apply" Width="100" Height="50" BorderBrush="{x:Null}"  Background="#FF67A1FF" Foreground="White" />
        </Grid>

        <Grid Grid.Row="1" Grid.Column="2" Margin="10">
            <TextBlock x:Name="Discription" Text="Discription" TextWrapping="Wrap"/>
        </Grid>



    </Grid>



</Window>
"@ 



function Import-Xaml {
	$manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $xaml.NameTable
	$manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$xamlReader = New-Object System.Xml.XmlNodeReader $xaml
	[Windows.Markup.XamlReader]::Load($xamlReader)
}

$Window = Import-Xaml 


#$json = Get-Content -Path '.\js\softwearlist.json' | ConvertFrom-Json


$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/softwearlist.json"
$result = Invoke-WebRequest -Uri $url
$json = $result.Content | ConvertFrom-Json
# Now $jsonContent contains the JSON data as a PowerShell object




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
		$Discription.Text = "Starting Installer Download"
		Invoke-WebRequest $Link -OutFile $Destination
		$Discription.Text = "Starting Installation"
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


#Finaly Show Window
$Window.ShowDialog()


