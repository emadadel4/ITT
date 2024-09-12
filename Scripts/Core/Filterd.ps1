function Show-Selected {

    <#
    .Options
    AppsListView
    TweaksListView

    .Example
        Show-Selected -ListView "AppsListView"
    #>

    param (
        [string]$ListView,
        [string]$mode
     )

    switch ($mode) {

        "Filter"{

            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.$ListView.Items)

            $filterPredicate = {
                param($item)
        
                if ($item -is [System.Windows.Controls.StackPanel]) {
                    foreach ($child in $item.Children) {
                        if ($child -is [System.Windows.Controls.StackPanel]) {
                            foreach ($innerChild in $child.Children) {
                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                    # Check if the CheckBox is checked
                                    $itemTag = $innerChild.IsChecked
                                    return $itemTag
                                }
                            }
                        }
                    }
                }
        
                # Return $true if no CheckBox found (to include all items)
                return $true
            }
        
            $collectionView.Filter = $filterPredicate

        }
        Default {
            $itt.$ListView.Clear()
            [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.$ListView.Items).Filter = $null
        }
    }
}