function Get-SelectedApps {
    $items = @()
    
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
    
    return $items
}
function FilteredSelectedItems {
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)

    $filterPredicate = {
        param($item)

        if ($item -is [System.Windows.Controls.StackPanel]) {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            # Check if the CheckBox is checked
                            $itemTag = $innerChild.IsChecked
                            return $itemTag
                        }
                    }
                }
            }
        }

        # Return $true if no CheckBox found (to include all items)
        return $true
    }

    $collectionView.Filter = $filterPredicate
}
function Invoke-Install {
    
    try {
        
        if($itt.ProcessRunning)
        {
            $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).Pleasewait
            $msg = "$localizedMessageTemplate"
            [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
            return
        }
    
        $itt.category.SelectedIndex = 0
        FilteredSelectedItems
        $selectedApps = Get-SelectedApps
    
        if($selectedApps.Count -gt 0)
        {
            # Retrieve localized messages for confirmation dialog and UI elements
            $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).InstallMessage
            $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

            if($result -eq "Yes")
            {
                Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {
    
                    param($selectedApps)
                                
                        #===========================================================================
                        #region Begin function
                        #===========================================================================
                        function Add-Log {
                            param (
                                [string]$Message, # Content of Message
                                [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
                            )
                        
                            # Get the current timestamp
                            $timestamp = Get-Date -Format "hh:mm tt"
                        
                            # Determine the color based on the log level
                            switch ($Level.ToUpper()) {
                                "INFO" { $color = "Green" }
                                "WARNING" { $color = "Yellow" }
                                "ERROR" { $color = "Red" }
                                default { $color = "White" }
                            }
                        
                            # Construct the log message
                            $logMessage = "$Message"
                            $date =  "[$timestamp $Level]"
                        
                            # Write the log message to the console with the specified color
                            Write-Host "`n` " -ForegroundColor $color
                            Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
                            Write-Host "" -ForegroundColor $color
            
                        }
            
                        function UpdateUI {
            
                            param($InstallBtn,$icon,$Description,$Width)
                        
                            $itt['window'].Dispatcher.Invoke([Action]{
                                $itt.installText.Text = "$InstallBtn"
                                $itt.installBtn.Width = $Width
                                $itt.installIcon.Text = $icon
                            })
                        }
            
                        function ClearTemp {
            
                            $chocoTempPath = Join-Path $env:TEMP "chocolatey"
            
                            if (Test-Path $chocoTempPath) {
                                Remove-Item -Path $chocoTempPath -Force -Recurse
                            }
                        }
                        
                        function CustomMsg {
                            param (
            
                                $title,
                                $msg,
                                $MessageBoxButton,
                                $MessageBoxImage,
                                $answer
            
                            )
            
                            [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
                        }
            
                        function Notify {
                            param(
                                [string]$title,
                                [string]$msg,
                                [string]$icon,
                                [Int32]$time
                            )
            
                            $notification = New-Object System.Windows.Forms.NotifyIcon
                            $notification.Icon = [System.Drawing.SystemIcons]::Information
                            $notification.BalloonTipIcon = $icon
                            $notification.BalloonTipText = $msg
                            $notification.BalloonTipTitle = $title
                            $notification.Visible = $true
            
                            $notification.ShowBalloonTip($time)  # Display for specified time
            
                            # Clean up resources
                            $notification.Dispose()
                        }
            
                        function Send-Apps {
                            param (
                                [string]$FirebaseUrl,
                                [string]$Key,
                                $List
                            )
                        
                            try {
                                # Validate parameters
                                if (-not $FirebaseUrl -or -not $Key) {
                                    throw "FirebaseUrl and Key are mandatory parameters."
                                }
                                
                                # Reuse connection to Firebase URL
                                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                                
                                # Check if the key exists
                                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                        
                                # Function to get content from ListView
                                function GetListViewContent {
                                    # Create an array to store selected item content
                                    $selectedItemContent = @()
                                
                                    # Add the app name to the array
                                    $selectedItemContent += @{
                                        "Apps" = $List
                                    }
                                
                                    # Return the selected item content
                                    return $selectedItemContent
                                }
                        
                                # Get content from ListView
                                $selectedItemContent = GetListViewContent
                        
                                if ($existingData) {
                                    # Update PC info with the existing data
                                    $pcInfo = @{
                                        "Domain" = $env:COMPUTERNAME
                                        "Manufacturer" = $existingData.Manufacturer
                                        "OS" = $existingData.OS
                                        "Username" = $existingData.Username
                                        "RAM" = $existingData.RAM
                                        "GPU" = $existingData.GPU
                                        "CPU" = $existingData.CPU
                                        "Cores" = $existingData.Cores 
                                        "Country" = $existingData.Country
                                        "Language" = $existingData.Language 
                                        "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                                        "Runs" = $existingData.Runs
                                        "AppsHistory" = $selectedItemContent
                                        "TweaksHistory" = $existingData.TweaksHistory
                                    }
                                }
                        
                                # Convert to JSON
                                $json = $pcInfo | ConvertTo-Json
                                
                                # Set headers
                                $headers = @{
                                    "Content-Type" = "application/json"
                                }
                                
                                # Update Firebase database with the new value
                                Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers -ErrorAction Stop
                            }
                            catch {
                                Write-Error "An error occurred: $_"
                                exit 1
                            }
                        }
            
                        function Download-And-ExtractZip {
                            param (
                                [string]$url,
                                [string]$destinationDir = "C:\ProgramData\ITT\Downloads",
                                [string]$Createshortcut,
                                [string]$exeFileName,
                                [string]$run,
                                [string]$exeArgs
                            )
                        
                            # Ensure destination directory exists
                            if (-not (Test-Path -Path $destinationDir)) {
                                New-Item -ItemType Directory -Path $destinationDir -Force
                            }
                        
                            # Define paths
                            $zipFileName = [System.IO.Path]::GetFileName($url)
                            $downloadPath = [System.IO.Path]::Combine($destinationDir, $zipFileName)
                            $exePath = [System.IO.Path]::Combine($destinationDir, $exeFileName)
                            
                            # Create the shortcut name based on the .exe file name
                            $shortcutName = [System.IO.Path]::GetFileNameWithoutExtension($exeFileName) + ".lnk"
                            $desktopPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), $shortcutName)
                        
                            try {
                                # Download the file
                                Write-Output "Downloading file from: $url"
                                Invoke-WebRequest -Uri $url -OutFile $downloadPath
                        
                                # Extract the file
                                Write-Output "Extracting file to: $destinationDir"
                                Expand-Archive -Path $downloadPath -DestinationPath $destinationDir -Force
                        
                                #create a shortcut
                                if ($Createshortcut -eq "yes") {
                                    if (Test-Path -Path $exePath) {
                                        Write-Output "Creating shortcut at: $desktopPath"
                                        # Create a shortcut on the desktop
                                        $shell = New-Object -ComObject WScript.Shell
                                        $shortcut = $shell.CreateShortcut($desktopPath)
                                        $shortcut.TargetPath = $exePath
                                        $shortcut.Save()
                                        Write-Output "Shortcut created successfully."
                                    } else {
                                        Write-Error "The specified .exe file '$exeFileName' was not found in the extracted content."
                                    }
                                }
                        
                                # Optionally run the executable
                                if ($run -eq "yes") {
                                    Write-Output "Starting installation"
                                    Start-Process -FilePath $exePath -ArgumentList $exeArgs -NoNewWindow
                                }
                            } catch {
                                Write-Error $_.Exception.Message
                            }
                        }
            
                        function Download-And-Install-Exe {
                            param (
                                [string]$name,
                                [string]$url,
                                [string]$exeArgs,
                                [string]$outputDir,
                                [string]$shortcut,
                                [string]$run
                            )
                        
                            $destination = "$env:ProgramData\$outputDir\$name\$name.exe"
                            $shortcutPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "$name.lnk")
                        
                            Add-Log -Message "Downloading using Invoke-WebRequest" -Level "INFO"
                        
                            try {
                                # Create the output directory if it doesn't exist
                                if (-not (Test-Path -Path (Split-Path -Path $destination -Parent))) {
                                    New-Item -ItemType Directory -Path (Split-Path -Path $destination -Parent) | Out-Null
                                }
                                # Download the file
                                Invoke-WebRequest -Uri $url -OutFile $destination
                                Add-Log -Message "Download completed successfully." -Level "INFO"
                        
                                if ($shortcut -eq "yes") {
                                    # Create a shortcut on the desktop
                                    $shell = New-Object -ComObject WScript.Shell
                                    $shortcut = $shell.CreateShortcut($shortcutPath)
                                    $shortcut.TargetPath = $destination
                                    $shortcut.Save()
                                    Add-Log -Message "Shortcut created on desktop" -Level "INFO"
                                }
                                if ($run -eq "yes") {
                                    Start-Process -Wait $destination -ArgumentList $exeArgs
                                }
                            }
                            catch {
                                throw "Error downloading EXE file: $_"
                            }
                        }
            
                        function Install-Winget {
            
                            $versionVCLibs = "14.00"
                            $versionUIXamlMinor = "2.8"
                            $versionUIXamlPatch = "2.8.6"
                        
                            function Get-OSArchitecture {
                            $is64Bit = $env:PROCESSOR_ARCHITEW6432 -eq "AMD64"
                            $architecture = if ($is64Bit) { "64-bit" } else { "32-bit" }
                            return $architecture
                            }
                        
                            if (Get-OSArchitecture -eq "64-bit") {
                            $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x64.${versionVCLibs}.Desktop.appx"
                            $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x64.appx"
                            } 
                            else
                            {
                            $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x86.${versionVCLibs}.Desktop.appx"
                            $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x86.appx"
                            }
                        
                            Try {
                            
                                if (Get-Command winget -ErrorAction SilentlyContinue) {
                                    Write-Host "winget is installed on this system."
                                    return
                                } 
                            
                                Write-Host "Downloading Microsoft.VCLibs Dependency..."
                                Invoke-WebRequest -Uri $fileVCLibs -OutFile $ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx
                                Write-Host "Downloading Microsoft.UI.Xaml Dependency...`n"
                                Invoke-WebRequest -Uri $fileUIXaml -OutFile $ENV:TEMP\Microsoft.UI.Xaml.x64.appx
                            
                                # Install Microsoft.VCLibs
                                Add-AppxPackage -Path "$ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx"
                            
                                # Install Microsoft.UI.Xaml
                                Add-AppxPackage -Path "$ENV:TEMP\Microsoft.UI.Xaml.x64.appx"
                            
                                $msiPath = "$env:TEMP\winget.msixbundle"
                                $url = "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
                                Invoke-WebRequest -Uri $url -OutFile $msiPath
                            
                                # Install the Microsoft Store App Installer silently
                                Add-AppxPackage -Path $msiPath -ErrorAction Stop
                            
                                # Wait for the installation to complete
                                Start-Sleep -Seconds 2
                            
                                # Add winget to the system environment variable 'Path' if not already present
                                $wingetPath = "$env:ProgramFiles\WindowsApps\Microsoft.DesktopAppInstaller_1.11.12371.0_x64__8wekyb3d8bbwe"
                                $pathVariable = [Environment]::GetEnvironmentVariable("Path", "Machine")
                                if (-not ($pathVariable -split ";" | Where-Object {$_ -eq $wingetPath})) {
                                    $newPath = "$pathVariable;$wingetPath"
                                    [Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")
                                }
                            
                                $ENV:PATH = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
                            
                            }
                            Catch {
                                throw [WingetFailedInstall]::new('Failed to install prerequisites')
                            }
                        }
            
                        function Install-Choco {
                            # Check if Chocolatey is installed
                            if (-not (Get-Command choco -ErrorAction SilentlyContinue))
                            {
                                Add-Log -Message "Installing Chocolatey for the first time, It won't take minutes :)" -Level "INFO"
                                Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
                                Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"
                            }
                        }
            
                        function Install-App {
                            param (
                                [string]$appName,
                                [string]$appChoco,
                                [string]$appWinget
                            )
                        
                            # Function to check if the app is installed using Chocolatey
                            function Is-AppInstalledChoco {
                                param ([string]$appName)
                                $result = choco list --local-only | Select-String -Pattern $appName
                                return $result
                            }
                        
                            # Function to check if the app is installed using Winget
                            function Is-AppInstalledWinget {
                                param ([string]$appName)
                                $result = winget list | Select-String -Pattern $appName
                                return $result
                            }
                    
            
                            Install-Choco
                            
                            $chocoResult = $(Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -Wait -NoNewWindow -PassThru).ExitCode

                            if ($chocoResult -ne 0) {
                                
                                Add-Log -Message "Chocolatey installation failed for $appName." -Level "INFO"
                                Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"
            
                                #Install Winget if not install on Device
                                Install-Winget
            
                                Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
                                $wingetResult = $(Start-Process -FilePath "winget" -ArgumentList "install --accept-source-agreements --accept-package-agreements --id $appWinget --force -e -h --silent --exact" -Wait -NoNewWindow -PassThru).ExitCode
            
                                # Check winget
                                if ($wingetResult -ne 0) {
                                    Add-Log -Message "Winget installation failed for $appName. Please install $appName manually." -Level "ERROR"
                                } 
                                else
                                {
                                    Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
                                }
                            }
                            else
                            {
                                Add-Log -Message "Installed $appName successfully using Chocolatey." -Level "INFO"
                            }
                        }
            
                        function Finish {
            
                            $itt.AppsListView.Dispatcher.Invoke([Action]{
                                foreach ($item in $itt.AppsListView.Items)
                                {
                                    foreach ($child in $item.Children) {
                                        if ($child -is [System.Windows.Controls.StackPanel]) {
                                            foreach ($innerChild in $child.Children) {
                                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
            
                                                    $innerChild.IsChecked = $false
                                                    $itt.AppsListView.Clear()
                                                    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)
                                                    $collectionView.Filter = $null
                                                }
                                            }
                                        }
                                    }
                                }
                            })
            
                            # Notify user of successful installation
                            UpdateUI -InstallBtn "$installBtn" -icon " " -Width "100"
                            Notify -title "ITT Emad Adel" -msg "Installed successfully" -icon "Info" -time 30000
                            # Store the apps you'v selected
                            Send-Apps -FirebaseUrl $itt.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -List $selectedAppNames
                        }
                        #===========================================================================
                        #endregion End function
                        #===========================================================================

                        # start ProcessRunning
                        $itt.ProcessRunning = $true
                       
                        $installBtn = $itt.database.locales.Controls.$($itt.Language).installBtn
                        $downloading = $itt.database.locales.Controls.$($itt.Language).downloading
            
                        # Chancge Install Content "Downloading.."
                        UpdateUI -InstallBtn "$downloading" -icon " " -Width "150"
            
                        # Clear temporary files
                        ClearTemp
    
                        # Display names of selected apps
                        $selectedAppNames = $selectedApps | ForEach-Object { $_.Name }

                        # Install selected apps
                        $selectedApps | ForEach-Object {

                            if ($_.Choco -ne "none")
                            {
                                Install-App -appName $_.Name -appChoco $_.Choco
                                
                            }elseif ($_.Winget -ne "none") {
                                Install-App -appName $_.Name -appWinget $_.Winget
                            }
                            else
                            {
                                if($_.default.IsExcute -eq "true")
                                {
                                    Download-And-Install-Exe -name "$($_.Name)" -url  $_.default.url -exeArgs $_.default.exeArgs -outputDir "ITT\Downloads\" -run $_.default.run -shortcut $_.default.shortcut
                                }
                                else
                                {
                                    Download-And-ExtractZip -url $_.default.url -shortcutName "$($_.Name)" -exeFileName $_.default.launcher -run $_.default.run -Createshortcut $_.default.shortcut -exeArgs $_.default.exeArgs
                                }
                            }
                        }
    
                        # End ProcessRunning
                        $itt.ProcessRunning = $false

                        # Notify user of successful installation
                        Finish
                }
            }
            else
            {
                # Uncheck all checkboxes in $list if user chose [NO]
                $itt.AppsListView.Dispatcher.Invoke({
                    foreach ($item in $itt.AppsListView.Items) {
                        $item.Children | ForEach-Object {
                            if ($_ -is [System.Windows.Controls.StackPanel]) {
                                $_.Children | ForEach-Object {
                                    if ($_ -is [System.Windows.Controls.CheckBox]) {
                                        $_.IsChecked = $false
                                    }
                                }
                            }
                        }
                    }
                    $itt.AppsListView.Clear()
                    [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items).Filter = $null
                })
            }
        }
        else
        {
            # Uncheck all checkboxes in $list
            $itt.category.SelectedIndex = 0
            $itt.AppsListView.Dispatcher.Invoke({
                $itt.AppsListView.Clear()
                [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items).Filter = $null
            })
            $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).choseapp
            [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
        }
    }
    catch {
        Write-Host "Error: $_"
    }
}