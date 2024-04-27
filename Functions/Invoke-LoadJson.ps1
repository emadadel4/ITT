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

function SaveItemsToJson
{
  
  $items = @()

    foreach ($item in $sync['window'].FindName('list').Items)
    {

      if ($item.IsChecked)
      {
            $itemObject = [PSCustomObject]@{
              Name = $item.Content
              check = "true"
          }
            $items += $itemObject
      }
    }

    if ($items -ne $null -and $items.Count -gt 0) 
    {

        # Open save file dialog
        $saveFileDialog = New-Object -TypeName "Microsoft.Win32.SaveFileDialog"
        $saveFileDialog.Filter = "JSON files (*.json)|*.json"
        $saveFileDialog.Title = "Save JSON File"
        $dialogResult = $saveFileDialog.ShowDialog()

        if ($dialogResult -eq "OK") {
            $items | ConvertTo-Json | Out-File -FilePath $saveFileDialog.FileName -Force
            Write-Host "JSON file saved: $($saveFileDialog.FileName)"
        }

    }
    else
    {
        [System.Windows.MessageBox]::Show("أختار برنامج واحد على الاقل", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}
