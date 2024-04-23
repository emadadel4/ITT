# Function to save items to JSON
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
        [System.Windows.MessageBox]::Show("You have to Select first", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}

