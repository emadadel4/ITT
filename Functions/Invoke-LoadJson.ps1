function LoadJson {

        # Open file dialog to select JSON file
        $openFileDialog = New-Object -TypeName "Microsoft.Win32.OpenFileDialog"
        $openFileDialog.Filter = "JSON files (*.json)|*.json"
        $openFileDialog.Title = "Open JSON File"
        $dialogResult = $openFileDialog.ShowDialog()


    if ($dialogResult -eq "OK") {

        # Read the JSON file
        $json = Get-Content -Path $openFileDialog.FileName -Raw | ConvertFrom-Json

        # Add items to the ListView
        foreach ($itemData in $json)
        {
            foreach($item in $sync['window'].FindName('list').items)
            {
                if($itemData.Name -eq $item.Content)
                {
                    $item.IsChecked = $itemData.check
                }
            }
        }
    }

    Write-Host "Loaded successfully."

}