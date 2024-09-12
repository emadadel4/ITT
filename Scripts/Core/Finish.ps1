function Finish {

    $itt.AppsListView.Dispatcher.Invoke([Action]{
        foreach ($item in $itt.AppsListView.Items)
        {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            $innerChild.IsChecked = $false
                            $itt.AppsListView.Clear()
                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)
                            $collectionView.Filter = $null
                        }
                    }
                }
            }
        }
    })

    Notify -title "ITT Emad Adel" -msg "Installed successfully" -icon "Info" -time 30000
}