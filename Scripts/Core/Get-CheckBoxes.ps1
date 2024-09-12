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
                            Content        = "$($app.name)"
                            Type           = "$($app.Type)"
                            Category       = "$($app.Category)"
                            Modify         = "$($app.Modify)"
                            Delete         = "$($app.Delete)"


                            ##
                            Path           = "$($app.Modify.Path)"
                            RegType         = "$($app.Modify.Type)"
                            Name         = "$($app.Modify.Name)"
                            Value          = "$($app.Modify.Value)"
                            defaultValue   = "$($app.Modify.defaultValue)"

                            InvokeCommand  = $app.InvokeCommand -join "; "  # Join commands with "; " if there are multiple
                            UndoCommand    = $app.UndoCommand -join "; "    # Handle undo commands
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