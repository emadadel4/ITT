function Get-SelectedTweaks {
    $items = @()
    
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
    
    return $items
}
function ShowSelectedTweaks {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items)

    $filterPredicate = {
       param($item)

        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
        
                            $tagToFilter =  $true
                            # Check if the item has the tag
                            $itemTag = $innerChild.IsChecked
                            return $itemTag -eq $tagToFilter
                        }
                    }
                }
            }

            $collectionView.Filter = $filterPredicate
        }
   }
   $collectionView.Filter = $filterPredicate
}
# function Invoke-ApplyTweaks {

#     try {

#         if($itt.ProcessRunning)
#         {
#             $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).Pleasewait
#             $msg = "$localizedMessageTemplate"
#             [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
#             return
#         }
#             ShowSelectedTweaks

#             $tweaks  = Get-SelectedTweaks

#             if($tweaks.Count -gt 0)
#             {
#                 $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).ApplyMessage
#                 $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

#                 if($result -eq "Yes")
#                 {
#                     Invoke-ScriptBlock -ArgumentList $tweaks -ScriptBlock{

#                         param($tweaks)
        
#                         function Add-Log {
#                             param (
#                                 [string]$Message,
#                                 [string]$Level = "INFO"
#                             )
                        
#                             # Get the current timestamp
#                             $timestamp = Get-Date -Format "hh:mm tt"
                        
#                             # Determine the color based on the log level
#                             switch ($Level.ToUpper()) {
#                                 "INFO" { $color = "Green" }
#                                 "WARNING" { $color = "Yellow" }
#                                 "ERROR" { $color = "Red" }
#                                 default { $color = "White" }
#                             }
                        
#                             # Construct the log message
#                             $logMessage = "$Message"
#                             $date =  "[$timestamp $Level]"
                        
#                             # Write the log message to the console with the specified color
#                             Write-Host "`n` " -ForegroundColor $color
#                             Write-Host " $date" -ForegroundColor Yellow ; Write-Host " $logMessage" -ForegroundColor $color 
#                             Write-Host "" -ForegroundColor $color
            
#                         }
        
#                         function ExecuteCommand {
#                             param (
#                                 [string]$Name,
#                                 [string]$Command
#                             )
#                             try {
#                                 #Add-Log -Message "$Name" -Level "INFO"
#                                 Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$Command`"" -NoNewWindow -Wait
#                             } catch {
#                                 Write-Host "Error executing command '$Command': $_"
#                             }
#                         }
                        
#                         function Set-RegistryValue {
#                             param (
#                                 $Name,
#                                 $Type,
#                                 $Path,
#                                 $Value
#                             )
                            
#                             try
#                             {
        
#                                 # Check if the registry path exists
#                                 if (-not (Test-Path -Path $Path)) {
#                                     Write-Output "Registry path does not exist. Creating it..."
#                                     # Try to create the registry path
#                                     try {
#                                         New-Item -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop | Out-Null
#                                         #Add-Log -Message "Registry path created successfully." -Level "INFO"
#                                     } catch {
#                                         Add-Log -Message "Failed to create registry path: $_" -Level "ERROR"
#                                     }
#                                 } else {
#                                     Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
#                                 }
#                             }
                        
#                             catch {
#                                 Write-Error "An error occurred: $_"
#                             }
#                         }
        
#                         function Remove-RegistryValue {
#                             param (
#                                 [Parameter(Mandatory=$true)]
#                                 [string]$RegistryPath,
#                                 [Parameter(Mandatory=$true)]
#                                 [string]$Folder
#                             )
                        
#                             try {
#                                 # Combine the registry path and folder to create the full registry key path
#                                 $KeyPath = "$RegistryPath\\$Folder"
                        
#                                 # Check if the registry key exists
#                                 if (Test-Path "Registry::$KeyPath") {
#                                     # Delete the registry key and all subkeys recursively
#                                     Remove-Item -Path "Registry::$KeyPath" -Recurse -Force
#                                 } else {
#                                     Add-Log -Message "Registry key '$KeyPath' does not exist." -Level "INFO"
#                                 }
#                             }
#                             catch {
#                                 Write-Host "An error occurred: $_" -ForegroundColor red
#                             }
#                         }
        
#                         function Disable-Service {
#                             param(
#                                 $ServiceName,
#                                 $StartupType
#                             )
        
#                             try {
#                                 # Check if the service exists
#                                 if (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue) {
#                                     Set-Service -Name $ServiceName -StartupType $StartupType -ErrorAction Stop
#                                     Stop-Service -Name $ServiceName 
#                                 }
#                                 else {
#                                     Add-Log -Message "Service '$ServiceName' not found." -Level "INFO"
#                                 }
#                             }
#                             catch
#                             {
#                                 Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
#                             }
#                         }
        
                        function Uninstall-AppxPackage  {
        
                            param (
                                $Name
                            )
                               
                            try {
                                Add-Log -Message "Trying to remove $($Name)" -Level "INFO"
                                #Get-AppxPackage "*$Name*" | Remove-AppxPackage -ErrorAction SilentlyContinue
                                Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxPackage '*$Name*' | Remove-AppxPackage -ErrorAction SilentlyContinue" -NoNewWindow -Wait
                                Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$Name*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" -NoNewWindow -Wait
                            } catch {
                                
                            }
                        }
                           
                        
#                         function UpdateUI {
        
#                             param($ApplyBtn,$icon,$Description,$Width)
                            
#                             $itt['window'].Dispatcher.Invoke([Action]{
#                                 $itt.applyText.Text = "$ApplyBtn"
#                                 $itt.applyBtn.Width = $Width
#                                 $itt.applyIcon.Text = $icon
#                             })
#                         }

#                         function Notify {
#                             param(
#                                 [string]$title,
#                                 [string]$msg,
#                                 [string]$icon,
#                                 [Int32]$time
#                             )
            
#                             $notification = New-Object System.Windows.Forms.NotifyIcon
#                             $notification.Icon = [System.Drawing.SystemIcons]::Information
#                             $notification.BalloonTipIcon = $icon
#                             $notification.BalloonTipText = $msg
#                             $notification.BalloonTipTitle = $title
#                             $notification.Visible = $true
            
#                             $notification.ShowBalloonTip($time)  # Display for specified time
            
#                             # Clean up resources
#                             $notification.Dispose()
#                         }
        
#                         function Send-Tweaks {
#                             param (
#                                 [string]$FirebaseUrl,
#                                 [string]$Key,
#                                 $List
#                             )
                        
#                             try {
#                                 # Validate parameters
#                                 if (-not $FirebaseUrl -or -not $Key) {
#                                     throw "FirebaseUrl and Key are mandatory parameters."
#                                 }
                                
#                                 # Reuse connection to Firebase URL
#                                 $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                                
#                                 # Check if the key exists
#                                 $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                        
#                                 # Function to get content from ListView
#                                 function GetListViewContent {
#                                     # Create an array to store selected item content
#                                     $selectedItemContent = @()
                                
#                                     # Add the app name to the array
#                                     $selectedItemContent += @{
#                                         "Tweaks" = $List
#                                     }
                                
#                                     # Return the selected item content
#                                     return $selectedItemContent
#                                 }
                        
#                                 # Get content from ListView
#                                 $selectedItemContent = GetListViewContent
                        
#                                 if ($existingData) {
#                                     # Update PC info with the existing data
#                                     $pcInfo = @{
#                                         "Domain" = $env:COMPUTERNAME
#                                         "Manufacturer" = $existingData.Manufacturer
#                                         "OS" = $existingData.OS
#                                         "Username" = $existingData.Username
#                                         "RAM" = $existingData.RAM
#                                         "GPU" = $existingData.GPU
#                                         "CPU" = $existingData.CPU
#                                         "Cores" = $existingData.Cores 
#                                         "Country" = $existingData.Country
#                                         "Language" = $existingData.Language 
#                                         "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
#                                         "Runs" = $existingData.Runs
#                                         "AppsHistory" = $existingData.AppsHistory
#                                         "TweaksHistory" = $selectedItemContent
#                                     }
#                                 }
                        
#                                 # Convert to JSON
#                                 $json = $pcInfo | ConvertTo-Json
                                
#                                 # Set headers
#                                 $headers = @{
#                                     "Content-Type" = "application/json"
#                                 }
                                
#                                 # Update Firebase database with the new value
#                                 Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers -ErrorAction Stop
#                             }
#                             catch {
#                                 Write-Error "An error occurred: $_"
#                                 exit 1
#                             }
#                         }
        
#                         function Finish {
        
#                             $itt.TweaksListView.Dispatcher.Invoke([Action]{
#                                 foreach ($item in $itt.TweaksListView.Items)
#                                 {
#                                     foreach ($child in $item.Children) {
#                                         if ($child -is [System.Windows.Controls.StackPanel]) {
#                                             foreach ($innerChild in $child.Children) {
#                                                 if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                
#                                                     $innerChild.IsChecked = $false
#                                                     $itt.TweaksListView.Clear()
#                                                     $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items)
#                                                     $collectionView.Filter = $null
#                                                 }
#                                             }
#                                         }
#                                     }
#                                 }
#                             })
#                         }
                        
#                         function CustomMsg 
#                         {
#                             param (
        
#                                 $title,
#                                 $msg,
#                                 $MessageBoxButton,
#                                 $MessageBoxImage,
#                                 $answer
        
#                             )
        
#                             [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
#                         }

#                             $applyBtn = $itt.database.locales.Controls.$($itt.Language).applyBtn
#                             $Applying = $itt.database.locales.Controls.$($itt.Language).Applying
#                             UpdateUI -ApplyBtn "$applying" -icon " " -Width "150"

#                             $itt.ProcessRunning = $true

#                             Add-Log -Message "$($tweaks.name)..." -Level "INFO"


#                             foreach ($app in $tweaks) {
#                                 switch ($app.Type) {

#                                     "command" {
#                                         $app.Command | ForEach-Object { ExecuteCommand -Name $app.Name -Command $_ }
#                                     }

#                                     "Registry" {

#                                         $app.Modify | ForEach-Object {
#                                             Set-RegistryValue -Name $_.Name -Type $_.Type -Path $_.Path -Value $_.Value
#                                             #$app.Command | ForEach-Object { ExecuteCommand -Name $app.Name -Command $_ }
#                                         }

#                                         $app.Delete | ForEach-Object {
#                                             Remove-RegistryValue -RegistryPath $_.Path -Folder $_.Name
#                                         }

#                                         if($app.Refresh -eq "true")
#                                         {
#                                             Stop-Process -Name explorer -Force
#                                             Add-Log -Message "Restarting explorer" -Level "INFO"
#                                         }
#                                     }
#                                     "service" {
#                                         $app.Service | ForEach-Object { Disable-Service -ServiceName $_.Name -StartupType $_.StartupType }
#                                     }
#                                     "AppxPackage" {
#                                         $app.removeAppxPackage | ForEach-Object { Uninstall-AppxPackage -Name $_.Name }
#                                         $app.Command | ForEach-Object { ExecuteCommand -Command $_ }
#                                     }
#                                 }

#                                 Add-Log -Message "Finished, Some tweaks require restarting" -Level "INFO"
#                             }

#                             # Displaying the names of the selected apps
#                             $selectedAppNames = $tweaks | ForEach-Object { $_.Name }
#                             UpdateUI -ApplyBtn "$applyBtn" -icon " " -Width "100"
#                             $itt.ProcessRunning = $False
#                             Finish
#                             Send-Tweaks -FirebaseUrl $itt.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -List $selectedAppNames
#                             Notify -title "ITT Emad Adel" -msg "Applied done" -icon "Info" -time 30000
#                     }
#                 }
#                 else
#                 {
#                     # Uncheck all checkboxes in $list if user chose [NO]
#                     $itt.TweaksListView.Dispatcher.Invoke([Action]{
#                         foreach ($item in $itt.TweaksListView.Items) {
#                             foreach ($child in $item.Children) {
#                                 if ($child -is [System.Windows.Controls.StackPanel]) {
#                                     foreach ($innerChild in $child.Children) {
#                                         if ($innerChild -is [System.Windows.Controls.CheckBox]) {
#                                             $innerChild.IsChecked = $false
#                                         }
#                                     }
#                                 }
#                             }
#                         }
#                         $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items)
#                         $collectionView.Filter = $null
#                     })
#                 }
#             }
#             else
#             {
#                # Uncheck all checkboxes in $list
#                 $itt.category.SelectedIndex = 0
#                 $itt.TweaksListView.Dispatcher.Invoke({
#                     $itt.AppsListView.Clear()
#                     [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items).Filter = $null
#                 })
#                 $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).chosetweak
#                 [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
#             }
#     }
#     catch {
#         Write-Host "Error: $_"
#     }
# }