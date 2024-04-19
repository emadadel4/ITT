#region Function to filter a list based on a search input
function Search{
    
    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $window.FindName('searchInput').Text.ToLower()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.list.Items)
    $collectionView.Filter = {
        param($item)
        $item -like "*$filter*"
    }

}


function FilterByCat {
    param (
        $Cat
    )

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.list.Items)

    # Define the filter predicate
    $filterPredicate = {
        param($item)
        # Define the tag you want to filter by
        $tagToFilter =  $Cat
        # Check if the item has the tag
        $itemTag = $item.Tag
        return $itemTag -eq $tagToFilter
    }

    # Apply the filter to the collection view
    $collectionView.Filter = $filterPredicate
    
}

function ClearFilter {
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.list.Items)
    $collectionView.Filter = $null
}
#endregion

