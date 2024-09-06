# Function to get all CheckBoxes from a StackPanel
function Get-CheckBoxesFromStackPanel {
    param (
        [System.Windows.Controls.StackPanel]$item  # The StackPanel to search
    )

    $checkBoxes = @()  # Initialize an empty array to store CheckBoxes
    
    if ($item -is [System.Windows.Controls.StackPanel]) {
        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        $checkBoxes += $innerChild  # Add each CheckBox to the array
                    }
                }
            }
        }
    }
    return $checkBoxes  # Return the array of CheckBoxes
}

# Function to load JSON data and update the UI
function LoadJson {
    if ($itt.ProcessRunning) {
        $msg = $itt.database.locales.Controls.$($itt.Language).Pleasewait
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    # Open file dialog to select JSON file
    $openFileDialog = New-Object "Microsoft.Win32.OpenFileDialog"
    $openFileDialog.Filter = "JSON files (*.itt)|*.itt"
    $openFileDialog.Title = "Open JSON File"
    $dialogResult = $openFileDialog.ShowDialog()

    if ($dialogResult -eq "OK") {
        $jsonData = Get-Content -Path $openFileDialog.FileName -Raw | ConvertFrom-Json
        $filteredNames = $jsonData.Name

        # Filter predicate to match CheckBoxes with JSON data
        $filterPredicate = {
            param($item)

            $checkBoxes = Get-CheckBoxesFromStackPanel -item $item

            foreach ($currentItemName in $filteredNames) {
                if ($currentItemName -eq $checkBoxes.Content) {
                    $checkBoxes.IsChecked = $true
                    break
                }
            }
            return $filteredNames -contains $checkBoxes.Content
        }

        # Update UI based on the loaded JSON data
        $itt['window'].FindName('apps').IsSelected = $true
        $itt['window'].FindName('appslist').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt['window'].FindName('appslist').Items)
        $collectionView.Filter = $filterPredicate
        [System.Windows.MessageBox]::Show("Restored successfully", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}

# Function to save selected items to a JSON file
function SaveItemsToJson {
    if ($itt.ProcessRunning) {
        $msg = $itt.database.locales.Controls.$($itt.Language).Pleasewait
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $items = @()

    ClearFilter

    foreach ($item in $itt.AppsListView.Items) {
        $checkBoxes = Get-CheckBoxesFromStackPanel -item $item
        if ($checkBoxes.IsChecked) {
            $itemObject = [PSCustomObject]@{
                Name  = $checkBoxes.Content
                check = "true"
            }
            $items += $itemObject
        }
    }

    if ($items.Count -gt 0) {
        # Open save file dialog
        $saveFileDialog = New-Object "Microsoft.Win32.SaveFileDialog"
        $saveFileDialog.Filter = "JSON files (*.itt)|*.itt"
        $saveFileDialog.Title = "Save JSON File"
        $dialogResult = $saveFileDialog.ShowDialog()

        if ($dialogResult -eq "OK") {
            $items | ConvertTo-Json | Out-File -FilePath $saveFileDialog.FileName -Force
            Write-Host "Saved: $($saveFileDialog.FileName)"
            [System.Windows.MessageBox]::Show("Saved", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)

            foreach ($item in $itt.AppsListView.Items) {
                $checkBoxes = Get-CheckBoxesFromStackPanel -item $item
                if ($checkBoxes.IsChecked) {
                    $checkBoxes.IsChecked = $false  # Uncheck all CheckBoxes after saving
                }
            }
        }
    } else {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}
