function Search {

    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $sync.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName($sync.currentList).Items)
    
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
    #$sync["window"].DataContext = $sync.database.locales.Controls.$($sync.Langusege)

    # if user is on another tab, return to the apps list
    $sync['window'].FindName('apps').IsSelected = $true
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

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
        $sync.AppsListView.Clear()
        $collectionView.Filter = $filterPredicate
    }
    else {
        # Clear the filter if selected category is not in the predefined list
        $sync.AppsListView.Clear()
        $collectionView.Filter = $null
    }
}
function ClearFilter {
    $sync.AppsListView.Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
    $collectionView.Filter = $null
}