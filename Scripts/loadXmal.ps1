# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'sync',$sync,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

# Create the runspace pool
$sync.runspace = [runspacefactory]::CreateRunspacePool(
    1,                      # Minimum thread count
    $maxthreads,            # Maximum thread count
    $InitialSessionState,   # Initial session state
    $Host                   # Machine to create runspaces on
)

# Open the RunspacePool instance
$sync.runspace.Open()

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML

# Read the XAML file
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
try { 
    
    $sync["window"] = [Windows.Markup.XamlReader]::Load( $reader )
    
    # Check if the registry key exists
    if (-not (Test-Path $sync.registryPath))
    {
        New-Item -Path "HKCU:\Software\ITTEmadadel" -Force *> $null
        Set-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "DarkMode" -Value "false" -Force 
    }

    $sync.isDarkMode = (Get-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "DarkMode").DarkMode

    # Check if $themeValue is equal to "true"
    if ($sync.isDarkMode -eq "true")
    {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))

    } else {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
    }

 }
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    Write-Host $error[0].Exception.Message -ForegroundColor Red
    If ($error[0].Exception.Message -like "*button*") {
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
}

# Select all elements with a Name attribute using XPath and iterate over them
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {
    # Assign each element to a variable in $sync dictionary
    $sync[$($_.Name)] = $sync["window"].FindName($_.Name)
}

# Iterate over keys in $sync dictionary
$sync.Keys | ForEach-Object {
    $element = $sync[$_]

    # Check if the element exists
    if ($element) {

        # Check if the element is a Button
        if ($element.GetType().Name -eq "Button") {
            # Add a click event handler to the button

            $element.Add_Click({
                param([System.Object]$Sender)
                Invoke-Button $Sender.Name
            })
        }

        # Check if the element is a MenuItem
        if ($element.GetType().Name -eq "MenuItem") {
            # Add a click event handler to the MenuItem

            $element.Add_Click({
                param([System.Object]$Sender)
                Invoke-Button $Sender.Name
            })
        }

        # Check if the element is a TextBox
        if ($element.GetType().Name -eq "TextBox") {

            $element.Add_TextChanged({
                param([System.Object]$Sender)
                Invoke-Button $Sender.Name
            })

            $element.Add_GotFocus({
                param([System.Object]$Sender)
                Invoke-Button $Sender.Name
            })
        }

        # Check if the element is a Ellipse
        if ($element.GetType().Name -eq "Ellipse") {
                # Add a click event handler to the Ellipse
    
                $element.add_MouseLeftButtonDown({
                    param([System.Object]$Sender)
                    Invoke-Button $Sender.Name
                })
        }

        # Check if the element is a ComboBox
        if ($element.GetType().Name -eq "ComboBox") {
            # Add a click event handler to the ComboBox

            $element.add_SelectionChanged({
                param([System.Object]$Sender)
                Invoke-Button $Sender.Name
            })
        }

        # Check if the element is a TabControl
        if ($element.GetType().Name -eq "TabControl") {
            # Add a click event handler to the TabControl

            $element.add_SelectionChanged({
                param([System.Object]$Sender)
                Invoke-Button $Sender.Name
            })
        }
    }
}


# Catch controls
$sync.AppsListView = $sync['window'].FindName("list")
$sync.Description = $sync['window'].FindName("description")
$sync.Quotes = $sync['window'].FindName("quotes")
$sync.TweeaksListView = $sync['window'].FindName("tweaks")
$sync.itemLink = $sync['window'].FindName('itemLink')
$sync.installBtn = $sync['window'].FindName('installBtn') 
$sync.applyBtn = $sync['window'].FindName('applyBtn') 
$sync.cat = $sync['window'].FindName('cat')
$sync.searchInput = $sync['window'].FindName('searchInput')