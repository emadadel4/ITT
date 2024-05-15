function Get-SelectedTweaks
{

    $items = @()

    foreach ($item in $sync.TweaksListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.database.Tweaks)
            {
                if($item.Content -eq $program.Name)
                {
                    $items += @{
                        Name = $program.Name
                        Type = $program.type
                        registry = $program.Registry
                        service = $program.Service
                        removeAppxPackage = $program.RemoveAppxPackage
                        Command = $program.Commands

                        # if you want to implement a new thing from JSON applications do it here.
                    }
                }
            }
        }
    }

    return $items 
}

function ShowSelectedTweaks {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)

    $filterPredicate = {
       param($item)

       $tagToFilter =  $true
       # Check if the item has the tag
       $itemTag = $item.IsChecked
       return $itemTag -eq $tagToFilter
   }

   $collectionView.Filter = $filterPredicate

}

function Invoke-ApplyTweaks
{
    ShowSelectedTweaks
    $tweaks  = Get-SelectedTweaks

    if(Get-SelectedTweaks -ne $null)
    {
        if($tweaks.Count -gt 0)
        {

            Invoke-ScriptBlock -ArgumentList $tweaks -ScriptBlock{

                param($tweaks)
                
                function Set-Registry {
                    param (
                        $Name,
                        $Type,
                        $Path,
                        $Value
                    )
                    
                    try
                    {
                        if (-not (Test-Path -Path $Path)) {
                            New-Item -Path $Path -Force | Out-Null
                        }

                        Write-Host "$Name disabled"
                        Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
            
                    }
                    catch {
                        Write-Error "An error occurred: $_"
                    }
                }

                function Remove-Registry {
                    param (
                        [Parameter(Mandatory=$true)]
                        [string]$RegistryPath,
                        [Parameter(Mandatory=$true)]
                        [string]$Folder
                    )
                
                    try {
                        # Combine the registry path and folder to create the full registry key path
                        $KeyPath = "$RegistryPath\\$Folder"
                
                        # Check if the registry key exists
                        if (Test-Path "Registry::$KeyPath") {
                            # Delete the registry key and all subkeys recursively
                            Remove-Item -Path "Registry::$KeyPath" -Recurse -Force
                            Write-Output "Registry key '$KeyPath' and its subkeys have been deleted."
                        } else {
                            Write-Output "Registry key '$KeyPath' does not exist."
                        }
                    }
                    catch {
                        Write-Output "An error occurred: $_"
                    }
                }

                function Disable-Service {
                    param(
                        $ServiceName,
                        $StartupType
                    )

                    try {


                         # Check if the service exists
                        if (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue) {

                            Set-Service -Name $ServiceName -StartupType $StartupType -ErrorAction Stop
                            Stop-Service -Name $ServiceName
                            Write-Host "Service '$ServiceName' disabled."
                        }
                        else {
                            Write-Host "Service '$ServiceName' not found."
                        }
                    }
                    catch
                    {
                        Write-Host "Failed to disable service '$ServiceName'. Error: $_"
                    }
                }

                function Remove-AppxPackage  {

                    param (
                        $App
                    )
                
                    if (Get-AppxPackage -AllUsers -Name $App -ErrorAction SilentlyContinue) {
                        try {
                            Get-AppxPackage -AllUsers -Name "$App" | Remove-AppxPackage -ErrorAction Stop
                            Write-Host "Successfully removed $App"
                        } 
                        catch {
                            Write-Host "Failed to remove $App. $_"
                        }
                    }
                    else {
                        Write-Host "$App not found."
                    }
                }
                
                function UpdateUI {

                    param($InstallBtn,$Description)
                    
                    $sync['window'].Dispatcher.Invoke([Action]{
                        $sync.applyBtn.Content = "$InstallBtn"
                        $sync.Description.Text = "$Description"
                    })
                }

                function Finish {

                    $sync.TweaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweaksListView.Items)
                        {
                            $item.IsChecked = $false
                        }
                    })

                    UpdateUI -InstallBtn "Apply" -Description "" 


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

                try
                {
                    $msg = [System.Windows.MessageBox]::Show("Do you want to apply $($tweaks.Count) selected Tweaks", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                    if ($msg -eq "Yes")
                    {
                        UpdateUI -InstallBtn "Wait..." -Description "Applying..." 
                        $sync.ProcessRunning = $true

                        foreach ($app in $tweaks) 
                        {

                            if ($app.Type -eq "command")
                            {
                                foreach ($cmd in $app.Command) 
                                {
                                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($cmd.run)`"" -NoNewWindow -Wait
                                    # debug
                                    #Write-Host Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($cmd.run)`"" -NoNewWindow -Wait
                                }
                            }

                            if ($app.Type -eq "modifying")
                            {
                                foreach ($re in $app.registry) 
                                {
                                    Set-Registry -Name $re.Name -Type $re.Type -Path $re.Path -Value $re.Value

                                    # debug
                                    #Write-Host Set-Registry -Name $re.Name -Type $re.Type -Path $re.Path -Value $re.Value
                                    
                                }
                            }

                            if ($app.Type -eq "delete")
                            {
                                foreach ($re in $app.registry) 
                                {
                                    Remove-Registry -RegistryPath $re.Path -Folder $re.Name

                                    # debug
                                    #Write-Host Remove-Registry -RegistryPath $re.Path -Folder $re.Name

                                }
                            }
            
                            if ($app.Type -eq "service")
                            {
                                foreach ($se in $app.service) 
                                {
                                    Disable-Service -ServiceName $($se.Name) -StartupType $($se.StartupType)
                                }
                            }

                            if ($app.Type -eq "AppxPackage")
                            {
                                foreach ($appx in $app.removeAppxPackage) 
                                {
                                   Remove-AppxPackage -App $appx.Name

                                   # debug
                                   #Write-Host Remove-AppxPackage -App $appx.Name

                                }
                            }
                        }

                        $sync.ProcessRunning = $False
                        CustomMsg -title "ITT | Emad Adel" -msg "Done" -MessageBoxImage "Information" -MessageBoxButton "OK"

                        Start-Sleep -Seconds 1
                        Finish

                    }
                    else
                    {
                        # Uncheck all checkboxes in $list
                        $sync.TweaksListView.Dispatcher.Invoke([Action]{
                            foreach ($item in $sync.TweaksListView.Items)
                            {
                                $item.IsChecked = $false
                                $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                                $collectionView.Filter = $null
                            }
                        })
                    }
                }
                catch {
                    Write-Host "Error: $_"
                }
            }
        }
    }
}

