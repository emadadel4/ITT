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


function ShowSelectedItems {
    
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
        $msg = "Please wait there is a process in the background."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $sync.category.SelectedIndex = 0
    ShowSelectedItems

    $selectedApps += Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

            param($selectedApps)

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
                    Write-Output "Clear Chocolatey temp folder"
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

                Start-Sleep 5

                Clear-Host

Write-Host "
+----------------------------------------------------------------------------+
|  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _      |
| |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |     |
|  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |     |
|  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___  |
| |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |
|                                                                            |
+----------------------------------------------------------------------------+
You ready to Install anything.

(IT Tools) is open source, You can contribute to improving the tool.
If you have trouble installing a program, report the problem on feedback links
https://github.com/emadadel4/ITT/issues
https://t.me/emadadel4
" -ForegroundColor White
            }

            function SendApps {
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

            function Add-Log {
                param (
                    [string]$Message,
                    [string]$Level = "INFO"
                )
            
                # Get the current timestamp
                $timestamp = Get-Date -Format "HH:mm:ss"
            
                # Determine the color based on the log level
                switch ($Level.ToUpper()) {
                    "INFO" { $color = "Green" }
                    "WARNING" { $color = "Yellow" }
                    "ERROR" { $color = "Red" }
                    default { $color = "White" }
                }
            
                # Construct the log message
                $logMessage = "[$timestamp] [$Level] $Message"
            
                # Write the log message to the console with the specified color
                Write-Host $logMessage -ForegroundColor $color
            }

            function Test-WinUtilPackageManager {

                Param(
                    [System.Management.Automation.SwitchParameter]$winget,
                    [System.Management.Automation.SwitchParameter]$choco
                )
            
                $status = "not-installed"
            
                if ($winget) {
                    # Install Winget if not detected
                    $wingetExists = Get-Command -Name winget -ErrorAction SilentlyContinue
            
                    if ($wingetExists) {
                        # Check Winget Version
                        $wingetVersionFull = (winget --version) # Full Version without 'v'.
            
                        # Check if Preview Version
                        if ($wingetVersionFull.Contains("-preview")) {
                            $wingetVersion = $wingetVersionFull.Trim("-preview")
                            $wingetPreview = $true
                        } else {
                            $wingetVersion = $wingetVersionFull
                            $wingetPreview = $false
                        }
            
                        # Check if Winget's Version is too old.
                        $wingetCurrentVersion = [System.Version]::Parse($wingetVersion.Trim('v'))
                        # Grabs the latest release of Winget from the Github API for version check process.
                        $response = Invoke-RestMethod -Uri "https://api.github.com/repos/microsoft/Winget-cli/releases/latest" -Method Get -ErrorAction Stop
                        $wingetLatestVersion = [System.Version]::Parse(($response.tag_name).Trim('v')) #Stores version number of latest release.
                        $wingetOutdated = $wingetCurrentVersion -lt $wingetLatestVersion
                        Write-Host "===========================================" -ForegroundColor Green
                        Write-Host "---        Winget is installed          ---" -ForegroundColor Green
                        Write-Host "===========================================" -ForegroundColor Green
                        Write-Host "Version: $wingetVersionFull" -ForegroundColor White
            
                        if (!$wingetPreview) {
                            Write-Host "    - Winget is a release version." -ForegroundColor Green
                        } else {
                            Write-Host "    - Winget is a preview version. Unexpected problems may occur." -ForegroundColor Yellow
                        }
            
                        if (!$wingetOutdated) {
                            Write-Host "    - Winget is Up to Date" -ForegroundColor Green
                            $status = "installed"
                        }
                        else {
                            Write-Host "    - Winget is Out of Date" -ForegroundColor Red
                            $status = "outdated"
                        }
                    } else {        
                        Write-Host "===========================================" -ForegroundColor Red
                        Write-Host "---      Winget is not installed        ---" -ForegroundColor Red
                        Write-Host "===========================================" -ForegroundColor Red
                        $status = "not-installed"
                    }
                }
            
                if ($choco) {
                    if ((Get-Command -Name choco -ErrorAction Ignore) -and ($chocoVersion = (Get-Item "$env:ChocolateyInstall\choco.exe" -ErrorAction Ignore).VersionInfo.ProductVersion)) {
                        Write-Host "===========================================" -ForegroundColor Green
                        Write-Host "---      Chocolatey is installed        ---" -ForegroundColor Green
                        Write-Host "===========================================" -ForegroundColor Green
                        Write-Host "Version: v$chocoVersion" -ForegroundColor White
                        $status = "installed"
                    } else {
                        Write-Host "===========================================" -ForegroundColor Red
                        Write-Host "---    Chocolatey is not installed      ---" -ForegroundColor Red
                        Write-Host "===========================================" -ForegroundColor Red
                        $status = "not-installed"
                    }
                }
            
                return $status
            }
            
            function Get-WinUtilWingetPrerequisites {
            
                $versionVCLibs = "14.00"
                $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x64.${versionVCLibs}.Desktop.appx"
                # Write-Host "$fileVCLibs"
                # Microsoft.UI.Xaml version changed recently, so I made the version numbers variables.
                $versionUIXamlMinor = "2.8"
                $versionUIXamlPatch = "2.8.6"
                $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x64.appx"
                # Write-Host "$fileUIXaml"
            
                Try{
                    Write-Host "Downloading Microsoft.VCLibs Dependency..."
                    Invoke-WebRequest -Uri $fileVCLibs -OutFile $ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx
                    Write-Host "Downloading Microsoft.UI.Xaml Dependency...`n"
                    Invoke-WebRequest -Uri $fileUIXaml -OutFile $ENV:TEMP\Microsoft.UI.Xaml.x64.appx
                }
                Catch{
                    throw [WingetFailedInstall]::new('Failed to install prerequsites')
                }
            }
            
            function Install-WinUtilWinget {
            
                $isWingetInstalled = Test-WinUtilPackageManager -winget
            
                Try {
                    if ($isWingetInstalled -eq "installed") {
                        Write-Host "`nWinget is already installed.`r" -ForegroundColor Green
                        return
                    } elseif ($isWingetInstalled -eq "outdated") {
                        Write-Host "`nWinget is Outdated. Continuing with install.`r" -ForegroundColor Yellow
                    } else {
                        Write-Host "`nWinget is not Installed. Continuing with install.`r" -ForegroundColor Red
                    }
            
                    # Gets the computer's information
                    if ($null -eq $sync.ComputerInfo){
                        $ComputerInfo = Get-ComputerInfo -ErrorAction Stop
                    } else {
                        $ComputerInfo = $sync.ComputerInfo
                    }
            
                    if (($ComputerInfo.WindowsVersion) -lt "1809") {
                        # Checks if Windows Version is too old for Winget
                        Write-Host "Winget is not supported on this version of Windows (Pre-1809)" -ForegroundColor Red
                        return
                    }
            
                    Write-Host "Downloading Winget Prerequsites`n"
                    Get-WinUtilWingetPrerequisites
                    Write-Host "Downloading Winget and License File`r"
                    Get-WinUtilWingetLatest
                    Write-Host "Installing Winget w/ Prerequsites`r"
                    Add-AppxProvisionedPackage -Online -PackagePath $ENV:TEMP\Microsoft.DesktopAppInstaller.msixbundle -DependencyPackagePath $ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx, $ENV:TEMP\Microsoft.UI.Xaml.x64.appx -LicensePath $ENV:TEMP\License1.xml
                    Write-Host "Manually adding Winget Sources, from Winget CDN."
                    Add-AppxPackage -Path https://cdn.winget.microsoft.com/cache/source.msix #Seems some installs of Winget don't add the repo source, this should makes sure that it's installed every time. 
                    Write-Host "Winget Installed" -ForegroundColor Green
                    Write-Host "Enabling NuGet and Module..."
                    Install-PackageProvider -Name NuGet -Force
                    Install-Module -Name Microsoft.WinGet.Client -Force
                    # Winget only needs a refresh of the environment variables to be used.
                    Write-Output "Refreshing Environment Variables...`n"
                    $ENV:PATH = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
                } Catch {
                    Write-Host "Failure detected while installing via GitHub method. Continuing with Chocolatey method as fallback." -ForegroundColor Red
                    # In case install fails via GitHub method.
                    Try {
                    Start-Process -Verb runas -FilePath powershell.exe -ArgumentList "choco install winget-cli"
                    Write-Host "Winget Installed" -ForegroundColor Green
                    Write-Output "Refreshing Environment Variables...`n"
                    $ENV:PATH = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
                    } Catch {
                        throw [WingetFailedInstall]::new('Failed to install!')
                    }
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
        
                #$isInstalledChoco = Is-AppInstalledChoco $appChoco
    
                Write-Host "Attempting to install $appName using Chocolatey..."
                $chocoResult = Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -NoNewWindow -Wait -PassThru
            
                if ($chocoResult.ExitCode -eq 0) {
                    Add-Log -Message "$appName installed successfully using Chocolatey!." -Level "INFO"
                } else {

                    Write-Host "Chocolatey installation failed for $appName."
                    Write-Host "Attempting to install $appName using Winget..."

                    # install winget if not installed on device
                    Install-WinUtilWinget

                    # Check if the app is installed via Winget
                    $isInstalledWinget = Is-AppInstalledWinget $appWinget

                    # Check if the app is installed via Chocolatey
                    if ($isInstalledWinget) {
                        Add-Log -Message "$appName is already installed." -Level "INFO"
                        return
                    }

                    # start install by using Winget
                    $wingetResult = Start-Process -FilePath "winget" -ArgumentList "install -e -h --accept-source-agreements --ignore-security-hash --accept-package-agreements --id $appWinget" -NoNewWindow -Wait -PassThru

                    # check winget install opritaion
                    if ($wingetResult.ExitCode -eq 0) {

                        # if winget install app sus
                        Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
                    } 
                    elseif ($wingetResult.ExitCode -eq 1) 
                    {
                        # if install failed 
                        Add-Log -Message "Winget installation failed for $appName. Please install $appName manually." -Level "ERROR"
                        exit 1
                    }
                }
            }

            try 
            {

                $result = [System.Windows.MessageBox]::Show("Do you want to install selected apps", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                
                if($result -eq "Yes")
                {
                    $sync.ProcessRunning = $true

                    UpdateUI -InstallBtn "Downloading..." -Description "Downloading..." 

                    #Write-Host "Installing Follwing Apps $($selectedApps.Name)" -ForegroundColor Green

                    # Displaying the names of the selected apps
                    $selectedAppNames = $selectedApps | ForEach-Object { $_.Name }
                    Write-Host "Installing the following apps: $($selectedAppNames -join ', ')" -ForegroundColor Green

                    foreach ($app in $selectedApps) 
                    {
                        Install-App -appName $app.Name -appChoco $app.Choco -appWinget $app.Winget
                    }

                    Write-Host "*******************************************************" -ForegroundColor Green
                    Write-Host "All applications have been processed" -ForegroundColor Green
                    Write-Host "*******************************************************" -ForegroundColor Green

                    UpdateUI -InstallBtn "Install..."
                    CustomMsg -title "ITT | Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -MessageBoxImage "Information" -MessageBoxButton "OK"
                    Notify -title "ITT Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -icon "Info" -time 5666
                    Add-Log -Message "Portable Apps will save in C:\ProgramData\chocolatey\lib." -Level "INFO"
                    Finish
                    SendApps -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME -list $selectedAppNames
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
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}