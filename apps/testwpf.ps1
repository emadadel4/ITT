
Add-Type -AssemblyName PresentationFramework

# where is the XAML file?
$xamlFile = "C:\Users\Emad Adel\source\repos\ITTSoft\ITTSoft\MainWindow.xaml"

#create window
$inputXML = Get-Content $xamlFile -Raw
$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[XML]$XAML = $inputXML

#Read XAML
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
try {
    $window = [Windows.Markup.XamlReader]::Load( $reader )
} catch {
    Write-Warning $_.Exception
    throw
}

$PCNames = @("Firefox","Chrome","Edge")
$listBox1 = $window.FindName("listbox")

foreach ($checkBox in $PCNames) {
    $listBox1.Items.Add( "$checkBox")
}

$listBox1.MouseEnter({
    
})



$Null = $window.ShowDialog()
