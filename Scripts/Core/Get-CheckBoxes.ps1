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