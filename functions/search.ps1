#region Search in listview 
function Search{
    
    $filter = $window.FindName('searchInput').Text.ToLower()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($list.Items)
    $collectionView.Filter = {
        param($item)
        $item -like "*$filter*"
    }

}
#endregion
