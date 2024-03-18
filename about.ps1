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
    x:Name="Window" Title="About | ITT" WindowStartupLocation = "CenterScreen" 
	Background="#222831"
    Height="266" Width="500" ResizeMode="NoResize" WindowStartupLocation="CenterScreen" Topmost="True" WindowStyle="ToolWindow" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/icon.ico">

    <Grid>

    <Grid.RowDefinitions>
        <RowDefinition Height="100"/>
        <RowDefinition Height="auto"/>
        <RowDefinition Height="auto"/>

    </Grid.RowDefinitions>

    <StackPanel VerticalAlignment="Bottom" Margin="0,20,0,0" HorizontalAlignment="Center" Orientation="Vertical" Grid.Row="0">
        <TextBlock Text="IT Tools" TextAlignment="Center" FontSize="40" Foreground="WhiteSmoke" FontFamily="Consolas"/>
        <Label Content="Development by Emad Adel" Foreground="WhiteSmoke" FontFamily="Consolas"/>
    </StackPanel>

    <StackPanel VerticalAlignment="Bottom" Margin="0,20,0,0" HorizontalAlignment="Center" Orientation="Vertical" Grid.Row="1">
        <TextBlock  Text="ITT is Open source you can modify and improve it" TextAlignment="Center" FontSize="14" Foreground="WhiteSmoke" FontFamily="Consolas"/>
    </StackPanel>

    <StackPanel VerticalAlignment="Bottom" Margin="0,20,0,0" HorizontalAlignment="Center" Orientation="Vertical" Grid.Row="2">
        <Label Content="Github - Telgram" Foreground="WhiteSmoke" FontFamily="Consolas"/>
        <TextBlock  Text="/emadadel4" TextAlignment="Center" FontSize="14" Foreground="WhiteSmoke" FontFamily="Consolas"/>
    </StackPanel>

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

$aboutWindow = Import-Xaml 

$aboutWindow.ShowDialog()