function Search {

    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $sync.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
    
    $collectionView.Filter = {
        param($item)
        if ($item -is [System.Windows.Controls.StackPanel]) {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            if ($innerChild.Content -match $filter) {
                                return $true
                            }
                        }
                    }
                }
            }
            return $false
        }
        return $true  # Non-StackPanel items are always included
    }
}


function FilterByCat {

    param ($Cat)

    # if user on Other tab return to apps list
    $sync['window'].FindName('apps').IsSelected = $true
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)

    # Define the filter predicate
    $filterPredicate = {
        param($item)
        
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            # Define the tag you want to filter by
                            $tagToFilter =  $Cat
                            # Check if the item has the tag
                            $itemTag = $innerChild.Tag
                            return $itemTag -eq $tagToFilter

                        }
                    }
                }
            }
        }

   
    }

    if($Cat -eq "All")
    {
        $sync['window'].FindName('list').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
        $collectionView.Filter = $null
    }
    else
    {
        $sync['window'].FindName('list').Clear()
        # Apply the filter to the collection view
        $collectionView.Filter = $filterPredicate
    }
}

function ClearFilter {
    $sync['window'].FindName('list').Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
    $collectionView.Filter = $null
}
