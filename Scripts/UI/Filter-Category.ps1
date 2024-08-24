function Search {

    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $itt.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt['window'].FindName($itt.currentList).Items)
    
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

    # Define the list of valid categories
    $validCategories = @(
        "Web Browsers",
        "Media",
        "Media Tools",
        "Documents",
        "Compression",
        "Communication",
        "File Sharing",
        "Imaging",
        "Gaming",
        "Utilities",
        "Disk Tools",
        "Development",
        "Security",
        "Portable",
        "Runtimes",
        "Drivers"
    )

    # Update DataContext
    #$itt.MainWindow.DataContext = $itt.database.locales.Controls.$($itt.Language)

    # if user is on another tab, return to the apps list
    $itt['window'].FindName('apps').IsSelected = $true
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)

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

    if ($validCategories -contains $Cat) {
        # Apply the filter to the collection view
        $itt.AppsListView.Clear()
        $collectionView.Filter = $filterPredicate
    }
    else {
        # Clear the filter if selected category is not in the predefined list
        $itt.AppsListView.Clear()
        $collectionView.Filter = $null
    }
    
    # Scroll to the top
    $itt.AppsListView.ScrollIntoView($itt.AppsListView.Items[0])
}
function ClearFilter {
    $itt.AppsListView.Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)
    $collectionView.Filter = $null
}