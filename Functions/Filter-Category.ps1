function Catgoray($cat){

    $window.FindName('apps').IsSelected = $true 

    <#
    .DESCRIPTION
    This function filters and populates a list of applications based on the specified category.

    .PARAMETER cat
    The category based on which the applications are filtered.

    .EXAMPLE
    Catgoray -cat "SomeCategory"

    .EXAMPLE
    ShowAll "Show all apps"
    #>

    $list.Items.Clear()

    foreach ($item in $sync.configs.applications)
    {
        if($item.catgory -eq $cat)
        {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $list.Items.Add($checkbox)
            $checkbox.Content = $item.name
        }
    }
}

function ShowAll{

    $window.FindName('apps').IsSelected = $true 

    $list.Items.Clear()

    foreach ($item in $sync.configs.applications)
    {
        $checkbox = New-Object System.Windows.Controls.CheckBox
        $list.Items.Add($checkbox)
        $checkbox.Content = $item.name
    }
}

function Recommended() {

    $window.FindName('apps').IsSelected = $true 

    #Clear Listview
    
    $list.Items.Clear()

    # get items that has check = true in json file
    foreach ($item in $sync.configs.applications)
    {
        # $item.check = true
        if($item.check -eq 'true')
        {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $list.Items.Add($checkbox)
            $checkbox.Content = $item.name
        }
    }
}

