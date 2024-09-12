function Get-CheckBoxes {

    Param(
        [string]$mode
    )

    $Output =@()

    # Retrieve all checkboxes
    $CheckBoxes = $itt.GetEnumerator() | Where-Object { $_.Value -is [System.Windows.Controls.CheckBox] }

    foreach ($CheckBox in $CheckBoxes) {

        # Check if the checkbox is checked
        if ($CheckBox.Value.IsChecked -eq $true) {

            # Define the mode (can be "Install" or "Tweaks")
            $checkboxName = $CheckBox.Name

            # Determine the correct database to search based on the mode
            switch ($mode) {
                "Install" {
                    # For Install mode, search the Applications database
                    $app = $itt.database.Applications | Where-Object { 
                        ($_."name" -replace ' ', '') -eq $checkboxName
                    }

                    if ($null -ne $app) {
                        # Add the application details to the output
                        $feature = [PsCustomObject]@{
                            name = "$($app.name)"
                            winget = "$($app.winget)"
                            choco  = "$($app.choco)"
                        }

                        # Add the feature to the output mode
                        $Output += $feature
                    } else {
                        Write-Host "Application not found for: $($CheckBox.Name)"
                    }
                }

                "Tweaks" {
                    # For Tweaks mode, search the Tweaks database
                    $app = $itt.database.Tweaks | Where-Object { 
                        ($_."name" -replace ' ', '') -eq $checkboxName
                    }

                    if ($null -ne $app) {
                        # Add the tweak details to the output
                        $tweak = [PsCustomObject]@{
                            Content        = "$($app.Name)"
                            Type           = "$($app.Type)"
                            Category       = "$($app.Category)"
                            Modify         = "$($app.Modify)"
                            Delete         = "$($app.Delete)"


                            ##
                            Path            = "$($app.Modify.Path)"
                            RegType         = "$($app.Modify.Type)"
                            Name            = "$($app.Modify.Name)"
                            Value           = "$($app.Modify.Value)"
                            defaultValue    = "$($app.Modify.defaultValue)"

                            InvokeCommand   = $app.InvokeCommand -join "; "  # Join commands with "; " if there are multiple
                            UndoCommand     = $app.UndoCommand -join "; "    # Handle undo commands
                        }

                        # Add the tweak to the output mode
                        $Output += $tweak
                    } else {
                        Write-Host "Tweak not found for: $($CheckBox.Name)"
                    }
                }

                default {
                    Write-Host "Unknown mode: $mode"
                }
            }

        }
    }

    return $Output
}

function Get-SelectedItems {
    param (
        [string]$Mode
    )

    $items = @()

    switch ($Mode) {
        "Apps" {
            $itt.AppsListView.Items |
                Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                ForEach-Object {
                    $_.Children |
                        Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                        ForEach-Object {
                            $_.Children |
                                Where-Object { $_ -is [System.Windows.Controls.CheckBox] -and $_.IsChecked } |
                                ForEach-Object {
                                    $checkbox = $_
                                    $app = $itt.database.Applications | Where-Object { $_.Name -eq $checkbox.Content }

                                    if ($app) {
                                        $items += @{
                                            Name    = $app.Name
                                            Choco   = $app.Choco
                                            Scoop   = $app.Scoop
                                            Winget  = $app.Winget
                                            Default = $app.Default
                                            # Add a new method downloader here
                                        }
                                    }
                                }
                        }
                }
        }
        "Tweaks" {
            $itt.TweaksListView.Items |
                Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                ForEach-Object {
                    $_.Children |
                        Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                        ForEach-Object {
                            $_.Children |
                                Where-Object { $_ -is [System.Windows.Controls.CheckBox] -and $_.IsChecked } |
                                ForEach-Object {
                                    $checkbox = $_
                                    $tweak = $itt.database.Tweaks | Where-Object { $_.Name -eq $checkbox.Content }

                                    if ($tweak) {
                                        $items += @{
                                            Name                = $tweak.Name
                                            Type                = $tweak.Type
                                            Modify              = $tweak.Modify
                                            Delete              = $tweak.Delete
                                            Service             = $tweak.Service
                                            RemoveAppxPackage   = $tweak.RemoveAppxPackage
                                            Command             = $tweak.InvokeCommand
                                            Refresh             = $tweak.Refresh
                                            # Add a new method tweak here
                                        }
                                    }
                                }
                        }
                }
        }
        default {
            Write-Error "Invalid Mode specified. Please choose 'Apps' or 'Tweaks'."
        }
    }

    return $items
}
