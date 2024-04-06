function Catgoray($cat){

    Write-Host $cat

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
    $list.Items.Clear()
    foreach ($item in $sync.configs.applications)
    {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $list.Items.Add($checkbox)
            $checkbox.Content = $item.name
    }
}
