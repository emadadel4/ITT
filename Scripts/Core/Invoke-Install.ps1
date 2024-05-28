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

    $selectedApps = Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        $sync['window'].FindName('category').SelectedIndex = 0
        ShowSelectedItems

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

                Start-Sleep 3

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

            function InstallWinget {
               
                # Check if winget is installed

                Write-Host "Install Winget first Time"

                if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
                    Write-Output "winget is not installed. Installing winget..."

                    # Define the URL for the latest App Installer package
                    $url = "https://aka.ms/getwinget"

                    # Define the path to download the installer
                    $installerPath = "$env:TEMP\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"

                    try {
                        # Create a new BITS transfer job
                        $bitsJob = Start-BitsTransfer -Source $url -Destination $installerPath -Asynchronous

                        # Wait for the transfer job to complete
                        while ($bitsJob.JobState -eq "Transferring") {
                            Start-Sleep -Seconds 5
                        }

                        # Check if the transfer was completed successfully
                        if ($bitsJob.JobState -eq "Transferred") {
                            # Add-AppxPackage requires running with administrative privileges
                            Start-Process powershell -ArgumentList "Add-AppxPackage -Path $installerPath" -Verb RunAs -Wait

                            # Check if winget is installed successfully
                            if (Get-Command winget -ErrorAction SilentlyContinue) {
                                Write-Output "winget has been successfully installed."
                            } else {
                                Write-Output "winget installation failed. Please check the log for details."
                            }
                        } else {
                            Write-Output "Failed to download winget. Please check your internet connection and try again."
                        }
                    } finally {
                        # Clean up the BITS transfer job
                        Remove-BitsTransfer -BitsJob $bitsJob.Id
                    }
                } else {
                    Write-Output "winget is already installed."
                }

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
            
                    # Iterate through each selected item in the ListView
                    foreach ($item in $list) {

                        $appName = $item.Name
            
                        # Add the app name to the array
                        $selectedItemContent += @{
                            "Apps" = $appName
                        }
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

            try 
            {

                $result = [System.Windows.MessageBox]::Show("Do you want to install selected apps", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                
                if($result -eq "Yes")
                {
                    
                    ClearTemp
                    $sync.ProcessRunning = $true
                    UpdateUI -InstallBtn "Downloading..." -Description "Downloading..." 
                   
                    foreach ($app in $selectedApps) 
                    {
                        SendApps -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME -list $app

                        # Define the name of the application to install
                        $appName = $app.Choco

                        # Attempt to install the app using Chocolatey
                        Write-Host "Attempting to install $appName using Chocolatey..." -ForegroundColor Yellow
                        $chocoResult = Start-Process -FilePath "choco" -ArgumentList "install $appName --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -NoNewWindow -Wait -PassThru

                        # Check if Chocolatey installation was successful
                        if ($chocoResult.ExitCode -eq 0) {
                            Write-Host "$appName installed successfully using Chocolatey!"
                            $sync.ProcessRunning = $False
                            Notify -title "ITT Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -icon "Info" -time 5666
                            UpdateUI -InstallBtn "Install" -Description "Installed successfully."
                            Start-Sleep -Seconds 3
                            Finish
                            exit 0
                        } else {
                            Write-Host "Chocolatey installation failed."
                            # Attempt to install the app using Winget
                            Write-Host "Attempting to install $appName using Winget..." -ForegroundColor Yellow
                            InstallWinget
                            $wingetResult = Start-Process -FilePath "winget" -ArgumentList "install -e -h --accept-source-agreements --ignore-security-hash --accept-package-agreements --id $appName" -NoNewWindow -Wait -PassThru

                            # Check if Winget installation was successful
                            if ($wingetResult.ExitCode -eq 0) {
                                Write-Host "$appName installed successfully using Winget!" -ForegroundColor Yellow
                                $sync.ProcessRunning = $False
                                Notify -title "ITT Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -icon "Info" -time 5666
                                UpdateUI -InstallBtn "Install" -Description "Installed successfully."
                                Start-Sleep -Seconds 3
                                Finish
                                exit 0
                            } else {
                                Write-Host "Winget installation failed. Please install $appName manually."
                                exit 1
                            }
                        }
                        
                    }
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