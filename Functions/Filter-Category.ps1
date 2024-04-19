function FilterApplicationsByCategory {
    <#
    .DESCRIPTION
    This function filters and populates a list of applications based on the specified category.

    .PARAMETER cat
    The category based on which the applications are filtered.
    #>
    param (
        [string]$Category
    )

    $window.FindName('apps').IsSelected = $true 

    $sync.list.Items.Clear()

    foreach ($item in $sync.configs.applications) {
        if($item.category -eq $Category) {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $sync.list.Items.Add($checkbox) | Out-Null
            $checkbox.Content = $item.name
        }
    }
}

function ShowAllApplications {
    <#
    .DESCRIPTION
    This function populates the list with all available applications.
    #>

    $window.FindName('apps').IsSelected = $true 

    $sync.list.Items.Clear()

    foreach ($item in $sync.configs.applications) {
        $checkbox = New-Object System.Windows.Controls.CheckBox
        $sync.list.Items.Add($checkbox) | Out-Null
        $checkbox.Content = $item.name
    }
}

function ShowRecommendedApplications {
    <#
    .DESCRIPTION
    This function populates the list with recommended applications.
    #>

    $window.FindName('apps').IsSelected = $true 

    $sync.list.Items.Clear()

    foreach ($item in $sync.configs.applications) {
        if($item.check -eq 'true') {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $sync.list.Items.Add($checkbox) | Out-Null
            $checkbox.Content = $item.name
        }
    }
}
