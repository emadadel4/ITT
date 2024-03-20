# Add required assemblies
#if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs;}

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
					<ListView x:Name="tweekslist" ScrollViewer.VerticalScrollBarVisibility="Auto" BorderBrush="{x:Null}" Background="#222831">
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
                <TextBlock x:Name="Discription" Text="EE" TextWrapping="Wrap" Foreground="WhiteSmoke"/>
                <TextBlock x:Name="itemLink" Visibility="Hidden"  Text="Offical website" Cursor="Hand"  Margin="5" Foreground="#FF204E"/>
			</StackPanel>
        </Grid>


    </Grid>
    


</Window>
"@ 

$Window = Import-Xaml 

function Import-Xaml {
	$manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $xaml.NameTable
	$manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$xamlReader = New-Object System.Xml.XmlNodeReader $xaml
	[Windows.Markup.XamlReader]::Load($xamlReader)
}
#endregion

./func.ps1

#region Loop each item in json file
$list = $Window.FindName("list")
foreach ($item in Apps)
{
    #Create New-Object checkbox from System.Windows.Controls.CheckBox
	$checkbox = New-Object System.Windows.Controls.CheckBox

    #add checkbox to $list
	$list.Items.Add($checkbox)

    #change Foreground to white
	$checkbox.Foreground = "white"

    #name it to item name in $Apps array
	$checkbox.Content = $item.name

    #if any item has check = true in array then make it checked in listview $list
	if($item.check -eq "true")
	{
		$checkbox.IsChecked = $true
	}
}

#Show discription of selected item in $list
$Discription = $Window.FindName("Discription")
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


#region Taps
$taps = $Window.FindName('taps')
$tweeksTap = $Window.FindName('tweeks')
$appsTap = $Window.FindName('apps')
$applyBtn = $Window.FindName('applyBtn')
$itemLink = $Window.FindName('itemLink')
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

#region Install button selected items event
$installbtn = $Window.FindName('installbtn')
$installbtn.add_Click({

    #$Link = "https://ninite.com/"
    #$url = ""

    foreach ($item in $list.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($data in Apps)
            {
                if($item.Content -eq $data.name)
                {
                    #$Link = $Link + $data.url + "-"
                    #$url = $data.url
                    ([System.Windows.MessageBox]::Show($data.url, $data.url, [System.Windows.Forms.MessageBoxButtons]::OK) -eq 'OK')
                    
                }
            }
        }
    }
})
#endregion


$Window.Showdialog() | Out-Null
