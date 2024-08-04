function ChangeTap() {
    # Define a hash table to map tab names to their button visibility and list values
    $tabSettings = @{
        'apps' = @{ 'installBtn' = 'Visible'; 'applyBtn' = 'Hidden'; 'currentList' = 'appslist' }
        'tweeksTab' = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Visible'; 'currentList' = 'tweakslist' }
        'SettingsTab' = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Hidden'; 'currentList' = $null }
    }

    # Iterate over the tabs and update visibility and currentList based on the selected tab
    foreach ($tab in $tabSettings.Keys) {
        if ($sync['window'].FindName($tab).IsSelected) {
            $settings = $tabSettings[$tab]
            $sync['window'].FindName('installBtn').Visibility = $settings['installBtn']
            $sync['window'].FindName('applyBtn').Visibility = $settings['applyBtn']
            $sync.currentList = $settings['currentList']
            break
        }
    }
}
