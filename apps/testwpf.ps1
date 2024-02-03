
Add-Type -AssemblyName PresentationFramework

# where is the XAML file?
$xamlFile = "C:\Users\Emad Adel\source\repos\ITTS\ITTS\MainWindow.xaml"

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

$listview = $window.FindName("listview")

$firefox = $window.FindName("firefox")
$chrome = $window.FindName("chrome")
$brave = $window.FindName("brave")

$installbtn = $window.FindName("installbtn")


$handler_button1_Click= 
{
    if ($firefox.IsChecked) 
    { 
        Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps/firefox.ps1).Content
    }

    if ($chrome.IsChecked) 
    { 
        Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps/chrome.ps1).Content
    }

    if ($brave.IsChecked) 
    { 
        Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps/brave.ps1).Content
    }
}

$installbtn.add_Click($handler_button1_Click)

$Null = $window.ShowDialog()
