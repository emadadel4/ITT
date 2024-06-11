function Get-SelectedApps
{

    $items = @()

    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Applications)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{

                                                Name = $program.Name
                                                Choco = $program.Choco
                                                Scoop = $program.Scoop
                                                Winget = $program.winget
                                                Default = $program.default

                                                # add a new method downloader here
                                            }

                                        }
                                    }
                            }

                        }
                    }
                }
            }
        }
    }

    return $items 
}

function FilterdSelectedItems {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

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

function Invoke-Install
{
    
    if($sync.ProcessRunning)
    {
        $localizedMessageTemplate = $sync.database.locales.$($sync.Langusege).Pleasewait
        $msg = "$localizedMessageTemplate"
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $sync.category.SelectedIndex = 0
    FilterdSelectedItems
    $selectedApps += Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

            param($selectedApps)

            function Add-Log {
                param (
                    [string]$Message,
                    [string]$Level = "INFO"
                )
            
                # Get the current timestamp
                $timestamp = Get-Date -Format "HH:mm"
            
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

                param($InstallBtn,$Description)
               
                $sync['window'].Dispatcher.Invoke([Action]{
                    $sync.installBtn.Content = "$InstallBtn"
                    #$sync.Description.Text = "$Description"
                })
            }

            function ClearTemp {

                $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                if (Test-Path $chocoTempPath) {
                    Remove-Item -Path $chocoTempPath -Force -Recurse
                    Add-Log -Message "Clear Chocolatey temp folder" -Level "INFO"
                }
            }
            
            function CustomMsg 
            {
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

            function Finish {

                $sync.AppsListView.Dispatcher.Invoke([Action]{
                    foreach ($item in $sync.AppsListView.Items)
                    {
                        foreach ($child in $item.Children) {
                            if ($child -is [System.Windows.Controls.StackPanel]) {
                                foreach ($innerChild in $child.Children) {
                                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                    
                                        $innerChild.IsChecked = $false
                                        $sync.AppsListView.Clear()
                                        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
                                        $collectionView.Filter = $null
                                    }
                                }
                            }
                        }
                    }
                })

                Add-Log -Message "Clear temporary files..." -Level "INFO"
                Start-Sleep 8
                Clear-Host

                    Write-Host "+==============================================================================+";
                    Write-Host "|                                                                              |";
                    Write-Host "|                                                                              |";
                    Write-Host "|   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |";
                    Write-Host "|  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |";
                    Write-Host "|   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |";
                    Write-Host "|   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |";
                    Write-Host "|  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |";
                    Write-Host "|                                                                              |";
                    Write-Host "|                                                                              |";
                    Write-Host "+==============================================================================+";
                    Write-Host "`n` You ready to Install anything."
                    Write-Host  "`n` (IT Tools) is open source, You can contribute to improving the tool."
                    Write-Host " If you have trouble installing a program, report the problem on feedback links"
                    Write-Host  " https://github.com/emadadel4/ITT/issues"
                    Write-Host  " https://t.me/emadadel4"
            }

            function Send-Apps {
                param (
                    [string]$FirebaseUrl,
                    [string]$Key,
                    $list
                )
            
                # Validate parameters
                if (-not $FirebaseUrl -or -not $Key) {
                    throw "FirebaseUrl and Key are mandatory parameters."
                }
            
                # Reuse connection to Firebase URL
                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
            
                # Check if the key exists
                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction SilentlyContinue
            
            
                # Function to get content from ListView
                function GetListViewContent {
                    # Create an array to store selected item content
                    $selectedItemContent = @()
            
                    # Add the app name to the array
                    $selectedItemContent += @{
                        "Apps" = $list
                    }
            
                    # Return the selected item content
                    return $selectedItemContent
                }
            
                # Get content from ListView
                $selectedItemContent += GetListViewContent
            
            
                if ($existingData) {
            
                    # Update PC info with the existing data
                    $pcInfo = @{
                        "Domain" = $env:COMPUTERNAME
                        "OS" = $existingData.OS
                        "Username" = $existingData.Username
                        "RAM" = $existingData.Ram
                        "GPU" = $existingData.GPU
                        "CPU" = $existingData.CPU
                        "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
                        "Runs" = $existingData.runs
                        "AppsTweaks" = $selectedItemContent
                    }
                }
              
                # Convert to JSON
                $json = $pcInfo | ConvertTo-Json
            
                # Set headers
                $headers = @{
                    "Content-Type" = "application/json"
                }
            
                # Update Firebase database with the new value
                Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers
            }

            function DownloadAndExtractRar {
                param (
                    [string]$url,
                    [string]$outputDir
                )
            
                $downloadDir = "$env:ProgramData\$outputDir"
                if (-not (Test-Path -Path $downloadDir)) {
                    New-Item -ItemType Directory -Path $downloadDir | Out-Null
                }
            
                $downloadPath = Join-Path -Path $downloadDir -ChildPath (Split-Path $url -Leaf)
            
                Write-Host "Downloading RAR file..." -ForegroundColor Yellow
                Invoke-WebRequest -Uri $url -OutFile $downloadPath
            
                Write-Host "Extracting RAR file..." -ForegroundColor Yellow
                Expand-Archive -Path $downloadPath -DestinationPath $downloadDir -Force
            
                Write-Host "Extraction completed to $downloadDir" -ForegroundColor Green
                Invoke-Item $downloadDir
            }
            
            function DownloadAndInstallExe {
                param (
                    [string]$url,
                    [string]$exeArgs
                )
            
                $destination = "$env:temp/setup.exe"

                Write-Host "Downloading..." -ForegroundColor Yellow

                $bitsJobObj = Start-BitsTransfer -Source $url -Destination $destination
                
                switch ($bitsJobObj.JobState) {
                    'Transferred' {
                        Complete-BitsTransfer -BitsJob $bitsJobObj
                        break
                    }
                    'Error' {
                        throw 'Error downloading EXE file'
                    }
                }
                
                Start-Process -Wait $destination -ArgumentList $exeArgs
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

            function Install-Choco 
            {
                # Check if Chocolatey is installed
                if (-not (Get-Command choco -ErrorAction SilentlyContinue))
                {
                    Add-Log -Message "Installing Chocolatey for the first time, It won't take minutes :)" -Level "INFO"
                    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
                    Add-Log -Message "Start Installing Selected apps." -Level "INFO"
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
                
                Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"

                $chocoResult = $(Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -Wait -PassThru).ExitCode
            
                if ($chocoResult -ne 0) {
                    
                    Add-Log -Message "Chocolatey installation failed for $appName." -Level "INFO"
                    Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"


                    #Install Winget if not install on Device
                    Install-Winget

                    Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
                    $wingetResult = $(Start-Process -FilePath "winget" -ArgumentList "install --accept-source-agreements --accept-package-agreements --id $appWinget --force -e -h --silent --exact" -Wait -PassThru).ExitCode

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

            try 
            {
                $areyousuremsg = $sync.database.locales.$($sync.Langusege).InstallMessage
                $installBtn = $sync.database.locales.$($sync.Langusege).installBtn
                $downloading = $sync.database.locales.$($sync.Langusege).downloading

                $result = [System.Windows.MessageBox]::Show("[$($selectedApps.Count)] $areyousuremsg ", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                
                if($result -eq "Yes")
                {
                    $sync.ProcessRunning = $true

                    ClearTemp

                    UpdateUI -InstallBtn "$downloading" 

                    # Displaying the names of the selected apps
                    $selectedAppNames = $selectedApps | ForEach-Object { $_.Name }

                    foreach ($app in $selectedApps) 
                    {
                        Install-App -appName $app.Name -appChoco $app.Choco -appWinget $app.Winget
                    }

                    Notify -title "ITT Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -icon "Info" -time 30000
                    UpdateUI -InstallBtn "$installBtn"
                    Add-Log -Message "Portable Apps will save in C:\ProgramData\chocolatey\lib." -Level "INFO"
                    CustomMsg -title "ITT | Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -MessageBoxImage "Information" -MessageBoxButton "OK"
                    Send-Apps -FirebaseUrl $sync.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -list $selectedAppNames
                    Finish
                    $sync.ProcessRunning = $false
                }
                else
                {
                    # Uncheck all checkboxes in $list
                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        
                                            $innerChild.IsChecked = $false
                                            $sync.AppsListView.Clear()
                                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
                                            $collectionView.Filter = $null
                                        }
                                    }
                                }
                            }
                        }
                    })
                }
            }
            catch {

                Write-Host "Error: $_"
            }
        }
    }
    else
    {
        $sync.category.SelectedIndex = 0
        $sync.AppsListView.Dispatcher.Invoke([Action]{
            
            $sync.AppsListView.Clear()
            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
            $collectionView.Filter = $null
        })
        $localizedMessageTemplate = $sync.database.locales.$($sync.Langusege).choseapp
        [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}
