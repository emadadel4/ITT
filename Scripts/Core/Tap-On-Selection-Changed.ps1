function ChangeTab {
    # Define a hash table to map tab names to their button visibility and list values
    $tabSettings = @{
        'apps'        = @{ 'installBtn' = 'Visible'; 'applyBtn' = 'Hidden'; 'currentList' = 'appslist' }
        'tweeksTab'   = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Visible'; 'currentList' = 'tweakslist' }
        'SettingsTab' = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Hidden'; 'currentList' = $null }
    }

    # Iterate over the tab settings
    foreach ($tab in $tabSettings.Keys) {
        # Check if the current tab is selected
        if ($sync['window'].FindName($tab).IsSelected) {
            $settings = $tabSettings[$tab]
            
            # Update button visibility and currentList based on the selected tab
            $sync['window'].FindName('installBtn').Visibility = $settings['installBtn']
            $sync['window'].FindName('applyBtn').Visibility = $settings['applyBtn']
            $sync.currentList = $settings['currentList']
            
            break  # Exit the loop once the matching tab is found
        }
    }
}
