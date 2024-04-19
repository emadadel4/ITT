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
#endregion




