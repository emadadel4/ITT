# Add required assemblies
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')  	 | out-null
[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') 	 | out-null
[System.Reflection.Assembly]::LoadWithPartialName('System.Drawing') 		 | out-null
[System.Reflection.Assembly]::LoadWithPartialName('WindowsFormsIntegration') | out-null

#region UI
[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" Title="ITT" WindowStartupLocation = "CenterScreen" 
	Background="#222831"

    Width = "800" Height = "600" ShowInTaskbar = "True" Topmost="True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/icon.ico">

		    
	
    <Window.Resources>
        <!--Scrollbar Thumbs-->
        <Style x:Key="ScrollThumbs" TargetType="{x:Type Thumb}">
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="{x:Type Thumb}">
                        <Grid x:Name="Grid">
                            <Rectangle HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Width="Auto" Height="Auto" Fill="Transparent" />
                            <Border x:Name="Rectangle1" CornerRadius="5" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Width="Auto" Height="Auto" Background="{TemplateBinding Background}" />
                        </Grid>
                        <ControlTemplate.Triggers>
                            <Trigger Property="Tag" Value="Horizontal">
                                <Setter TargetName="Rectangle1" Property="Width" Value="Auto" />
                                <Setter TargetName="Rectangle1" Property="Height" Value="7" />
                            </Trigger>
                        </ControlTemplate.Triggers>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>
        <!--ScrollBars-->
        <Style x:Key="{x:Type ScrollBar}" TargetType="{x:Type ScrollBar}">
            <Setter Property="Stylus.IsFlicksEnabled" Value="false" />
            <Setter Property="Foreground" Value="#8C8C8C" />
            <Setter Property="Background" Value="Transparent" />
            <Setter Property="Width" Value="8" />
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="{x:Type ScrollBar}">
                        <Grid x:Name="GridRoot" Width="8" Background="{TemplateBinding Background}">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="0.00001*" />
                            </Grid.RowDefinitions>
                            <Track x:Name="PART_Track" Grid.Row="0" IsDirectionReversed="true" Focusable="false">
                                <Track.Thumb>
                                    <Thumb x:Name="Thumb" Background="{TemplateBinding Foreground}" Style="{DynamicResource ScrollThumbs}" />
                                </Track.Thumb>
                                <Track.IncreaseRepeatButton>
                                    <RepeatButton x:Name="PageUp" Command="ScrollBar.PageDownCommand" Opacity="0" Focusable="false" />
                                </Track.IncreaseRepeatButton>
                                <Track.DecreaseRepeatButton>
                                    <RepeatButton x:Name="PageDown" Command="ScrollBar.PageUpCommand" Opacity="0" Focusable="false" />
                                </Track.DecreaseRepeatButton>
                            </Track>
                        </Grid>
                        <ControlTemplate.Triggers>
                            <Trigger SourceName="Thumb" Property="IsMouseOver" Value="true">
                                <Setter Value="{DynamicResource ButtonSelectBrush}" TargetName="Thumb" Property="Background" />
                            </Trigger>
                            <Trigger SourceName="Thumb" Property="IsDragging" Value="true">
                                <Setter Value="{DynamicResource DarkBrush}" TargetName="Thumb" Property="Background" />
                            </Trigger>
                            <Trigger Property="IsEnabled" Value="false">
                                <Setter TargetName="Thumb" Property="Visibility" Value="Collapsed" />
                            </Trigger>
                            <Trigger Property="Orientation" Value="Horizontal">
                                <Setter TargetName="GridRoot" Property="LayoutTransform">
                                    <Setter.Value>
                                        <RotateTransform Angle="-90" />
                                    </Setter.Value>
                                </Setter>
                                <Setter TargetName="PART_Track" Property="LayoutTransform">
                                    <Setter.Value>
                                        <RotateTransform Angle="-90" />
                                    </Setter.Value>
                                </Setter>
                                <Setter Property="Width" Value="Auto" />
                                <Setter Property="Height" Value="8" />
                                <Setter TargetName="Thumb" Property="Tag" Value="Horizontal" />
                                <Setter TargetName="PageDown" Property="Command" Value="ScrollBar.PageLeftCommand" />
                                <Setter TargetName="PageUp" Property="Command" Value="ScrollBar.PageRightCommand" />
                            </Trigger>
                        </ControlTemplate.Triggers>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>

		<ControlTemplate x:Key="NoMouseOverButtonTemplate"   
		TargetType="Button">
   <Border Background="{TemplateBinding Background}"  
 BorderBrush="{TemplateBinding BorderBrush}"  
 BorderThickness="{TemplateBinding BorderThickness}">
	   <ContentPresenter HorizontalAlignment="{TemplateBinding HorizontalContentAlignment}"  
			 VerticalAlignment="{TemplateBinding VerticalContentAlignment}" />
   </Border>

	<ControlTemplate.Triggers>
		<Trigger Property="IsEnabled"  Value="False"> 
			<Setter Property="Background" Value="{x:Static SystemColors.ControlLightBrush}" />
			<Setter Property="Foreground" Value="{x:Static SystemColors.GrayTextBrush}" />
		</Trigger>
		</ControlTemplate.Triggers>
	</ControlTemplate>

    </Window.Resources>

    <Grid>

        <Grid.RowDefinitions>
            <RowDefinition Height="25"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="80"/>
        </Grid.RowDefinitions>

        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="*"/>
            <ColumnDefinition Width="188"/>
        </Grid.ColumnDefinitions>

        <Menu Grid.Row="0" Grid.Column="0" Grid.ColumnSpan="2" Background="{x:Null}" VerticalAlignment="Center">
			<MenuItem x:Name="aboutBtn" Header="About" Foreground="White"/>
        </Menu>


        <TabControl x:Name="taps" TabStripPlacement="Left" Margin="0, 0, 0, 10" Grid.Row="1" BorderBrush="{x:Null}" Foreground="White" Background="#222831">
            <TabControl.Resources>
                <Style TargetType="TabItem">
                    <Setter Property="Template">
                        <Setter.Value>
                            <ControlTemplate TargetType="TabItem">
                                <Border Name="Border" BorderThickness="0,0,0,0" Padding="5" BorderBrush="Gainsboro" CornerRadius="11,11,11,11" Margin="10,5">
                                    <ContentPresenter x:Name="ContentSite"
                                        VerticalAlignment="Center"
                                        HorizontalAlignment="Center"
                                        ContentSource="Header"
                                        Margin="10,2"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsSelected" Value="True">
                                        <Setter TargetName="Border" Property="Background" Value="#D21312" />
                                    </Trigger>
                                    <Trigger Property="IsSelected" Value="False">
                                        <Setter TargetName="Border" Property="Background" Value="#31363F" />
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Setter.Value>
                    </Setter>
                </Style>
            </TabControl.Resources>
            <TabItem Header="Apps" x:Name="apps" BorderBrush="{x:Null}" Padding="16" Background="{x:Null}" Foreground="White">
                <TabItem.Content>
                    <ListView ScrollViewer.VerticalScrollBarVisibility="Auto" x:Name="list" BorderBrush="{x:Null}" Background="#222831">
                        <CheckBox x:Name="selectall" Content="Select all" Foreground="White" BorderBrush="{x:Null}"/>
                    </ListView>
                </TabItem.Content>
            </TabItem>

            <TabItem Header="Tweeks" x:Name="tweeks" Padding="16" BorderBrush="{x:Null}" Background="{x:Null}" Foreground="White">
                <TabItem.Content>
					<ListView x:Name="tweekslist" Margin="5" BorderBrush="{x:Null}" Background="#222831">
					</ListView>
                </TabItem.Content>
            </TabItem>
        </TabControl>


        <Grid Grid.Row="2">
		<TextBlock Cursor="Pen" x:Name="quotes"  HorizontalAlignment="Left" VerticalAlignment="Center" Padding="16" TextWrapping="Wrap" Text="المجد هو أن تنهض بعد كل مرة تسقط فيها والمجد لا يكون في عدم السقوط" Foreground="WhiteSmoke"/>
        </Grid>


        <Grid Grid.Row="4" Grid.Column="3">
			<Button x:Name="installbtn" Template="{StaticResource NoMouseOverButtonTemplate}" Cursor="Hand"  VerticalAlignment="Top" Content="Install" Width="100" Height="40" BorderBrush="{x:Null}"  Background="#FF204E" Foreground="White"/>
			<Button x:Name="applyBtn" Template="{StaticResource NoMouseOverButtonTemplate}" Cursor="Hand"   VerticalAlignment="Top" Content="Apply" Visibility="Hidden" Width="100" Height="40" BorderBrush="{x:Null}"  Background="#FF204E" Foreground="White"/>
        </Grid>

        <Grid Grid.Row="1" Grid.Column="1" Margin="15">
			<StackPanel Orientation="Vertical">
                <TextBlock x:Name="Discription" Text="" TextWrapping="Wrap" Foreground="WhiteSmoke"/>
                <TextBlock x:Name="itemLink" Visibility="Hidden"  Text="Offical website" Cursor="Hand"  Margin="5" Foreground="#FF204E"/>
			</StackPanel>
        </Grid>


    </Grid>
    


</Window>
"@ 

#endregion

#region Load Xaml
function Import-Xaml {
	$manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $xaml.NameTable
	$manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$xamlReader = New-Object System.Xml.XmlNodeReader $xaml
	[Windows.Markup.XamlReader]::Load($xamlReader)
}

$Window = Import-Xaml 
#endregion



#region Controls
$selectall = $Window.FindName("selectall")

#taps
$taps = $Window.FindName('taps')
$list = $Window.FindName("list")
$tweekslist = $Window.FindName('tweekslist')
$tweeksTap = $Window.FindName('tweeks')
$appsTap = $Window.FindName('apps')
#endtaps

$quotes = $Window.FindName("quotes")

$Discription = $Window.FindName("Discription")

#Buttons
$installbtn = $Window.FindName('installbtn')
$aboutBtn = $Window.FindName('aboutBtn')
$applyBtn = $Window.FindName('applyBtn')
$itemLink = $Window.FindName('itemLink')
#EndButtons

$myToolTip = New-Object System.Windows.Controls.ToolTip
$myToolTip.Content = "Right Clcik to copy the quote"
$quotes.ToolTip = $myToolTip





#endregion


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


#region load tweeks listview
#offline
#./tweeks.ps1

#online
Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/ITT/main/tweeks.ps1 | Invoke-Expression
#endregion


#Start Backend
function Apps {

	#Online
	$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/software.json"
	$result = Invoke-WebRequest -Uri $url -UseBasicParsing
	$json = $result.Content | ConvertFrom-Json 

	#Offline
	#$json = Get-Content -Path "./js/software.json" | ConvertFrom-Json
    return $json   
}

function Quotes {

	$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/quotes.json"
	$result = Invoke-WebRequest -Uri $url -UseBasicParsing
	$quotes = $result.Content | ConvertFrom-Json
	$Q = $quotes.Q
	$randomQuotes = Get-Random -InputObject $Q
    return $randomQuotes   
}

#region Generate items from json file
foreach ($item in Apps)
{
	$checkbox = New-Object System.Windows.Controls.CheckBox
	$list.Items.Add($checkbox)
	$checkbox.Foreground = "white"
	$checkbox.Content = $item.name

	if($item.check -eq "true")
	{
		$checkbox.IsChecked = $true
	}
}

#endregion

#region Show tooltip for qoutes 
function QuotesHandle {

	# Add MouseEnter and MouseLeave event handlers
	$quotes.Add_MouseEnter({
		$myToolTip.IsOpen = $true
	})

	$quotes.Add_MouseLeave({
		$myToolTip.IsOpen = $false
	})

	$quotes.add_MouseLeftButtonDown({
		$quotes.Text =  Quotes
		$quotes.Text | Set-Clipboard

})


$quotes.add_MouseRightButtonDown({
	$quotes.Text | Set-Clipboard
})

}
#endregion


function handlersControlsEvents {
	
	#region Get item website link from json file
	$itemLink.add_MouseLeftButtonDown({

		foreach ($item in $list.SelectedItem.Content)
		{
			foreach ($data in Apps)
			{
				if($item -eq $data.name)
				{
					Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $data.name)
				}
			}
		}
	
	})
	#endregion

	#region About click
	$aboutBtn.add_Click({

		#offline
		#./about.ps1

		#online
		Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/ITT/main/about.ps1 | Invoke-Expression
	})
	#endregion

	#region Show discription of selected item in $list
	$list.Add_SelectionChanged({
		
		$itemLink.Visibility = "Visible"

		foreach($data in Apps)
		{
			if( $list.SelectedItem.Content -eq $data.name)
			{
				$Discription.Text = $data.discription
			}
		}
	})
	#endregion

	#region Install selected item 
	$installbtn.add_Click({

		$Link = "https://ninite.com/"

		foreach ($item in $list.Items)
		{
			if ($item.IsChecked)
			{
				foreach ($data in Apps)
				{
					if($item.Content -eq $data.name)
					{
						if($data.silent -eq "true")
						{
							$Link = $Link + $data.url + "-"
						}
						else
						{
							NormalInstall($data.url)
						}
					}
				}
			}
		}

		if ([System.Windows.MessageBox]::Show('Do you want install selected programes', 'ITT', [System.Windows.Forms.MessageBoxButtons]::YesNo) -eq 'Yes')
		{

			$Link = $Link + "/ninite.exe"
			$Destination = "$env:temp/Install.exe"
			
			if (Test-Path $Destination)
			{
				Remove-Item -Verbose -Force $Destination
			}

			Write-Host "Ninite Link: $($Link)"
			$Discription.Text = "Starting Download"
			Invoke-WebRequest $Link -OutFile $Destination
			$Discription.Text = "Click yes to any popup window"
			Start-Process -Filepath $Destination
	}

	})
	#endregion

	#region select all in $list
	$selectall.add_Checked({

		if ($checkbox.IsChecked -eq $false)
		{
			# Code to execute when checkbox is unchecked
			foreach ($item in $list.Items)
			{
				$item.IsChecked = $true
				#$Discription.Text =  $list.Items.Count -1
			}
		}
	})
	#endregion

	#region Unchecked all checkbox $list
	$selectall.add_Unchecked({

		if ($checkbox.IsChecked -eq $true)
		{
			# Code to execute when checkbox is unchecked
			foreach ($item in $list.Items)
			{
				$item.IsChecked = $false
			}
		}
	})
	#endregion
}


function NormalInstall($url) {

	$Destination = "$env:temp/itt.exe"

	$bitsJobObj = Start-BitsTransfer $url -Destination $Destination

	switch ($bitsJobObj.JobState) {

		'Transferred' {
			Complete-BitsTransfer -BitsJob $bitsJobObj
			break
		}

		'Error' {
			throw 'Error downloading'
		}
	}

	$exeArgs = '/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
	Start-Process -Wait $Destination -ArgumentList $exeArgs


	if (Test-Path $Destination)
	{
		Remove-Item -Verbose -Force $Destination
	}

}

QuotesHandle


$quotes.Text =  Quotes
handlersControlsEvents

$MediaPlayer = [Windows.Media.Playback.MediaPlayer, Windows.Media, ContentType = WindowsRuntime]::New()
$MediaPlayer.IsLoopingEnabled = $true
$MediaPlayer.Volume = 0.6
$ost = 'https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3'
$MediaPlayer.Source = [Windows.Media.Core.MediaSource]::CreateFromUri($ost)
$MediaPlayer.Play()


$Window.add_Closing({
	Stop-Process -Name "powershell"
})

#End Backend
$Window.Showdialog() | Out-Null



