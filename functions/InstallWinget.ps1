function Install-WinWinget {

      <#

    .SYNOPSIS
        Installs Winget if it is not already installed.

    .DESCRIPTION
        This function will download the latest version of Winget and install it. If Winget is already installed, it will do nothing.
    #>
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

        # Install Winget via GitHub method.
        # Used part of my own script with some modification: ruxunderscore/windows-initialization
        Write-Host "Downloading Winget Prerequsites`n"
        Get-WinUtilWingetPrerequisites
        Write-Host "Downloading Winget and License File`r"
        Get-WinUtilWingetLatest
        Write-Host "Installing Winget w/ Prerequsites`r"
        Add-AppxProvisionedPackage -Online -PackagePath $ENV:TEMP\Microsoft.DesktopAppInstaller.msixbundle -DependencyPackagePath $ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx, $ENV:TEMP\Microsoft.UI.Xaml.x64.appx -LicensePath $ENV:TEMP\License1.xml
        Write-Host "Winget Installed" -ForegroundColor Green
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

Function Install-WinUtilProgramWinget {

    <#

    .SYNOPSIS
        Manages the provided programs using Winget

    .PARAMETER ProgramsToInstall
        A list of programs to manage

    .PARAMETER manage
        The action to perform on the programs, can be either 'Installing' or 'Uninstalling'

    .NOTES
        The triple quotes are required any time you need a " in a normal script block.

    #>

    param(
        $ProgramsToInstall,
        $manage = "Installing"
    )

    $x = 0
    $count = $($ProgramsToInstall -split ",").Count

    Write-Progress -Activity "$manage Applications" -Status "Starting" -PercentComplete 0

    Foreach ($Program in $($ProgramsToInstall -split ",")){

        Write-Progress -Activity "$manage Applications" -Status "$manage $Program $($x + 1) of $count" -PercentComplete $($x/$count*100)
        if($manage -eq "Installing"){
            # --scope=machine when installing non-UWP apps with winget fails with error code 0x80070005.
            # Removed argument while testing new Winget install method.
            # Open issue on winget-cli github repo: https://github.com/microsoft/winget-cli/issues/3936
            Start-Process -FilePath winget -ArgumentList "install -e --accept-source-agreements --accept-package-agreements --silent $Program" -NoNewWindow -Wait
        }
        if($manage -eq "Uninstalling"){
        Start-Process -FilePath winget -ArgumentList "uninstall -e --accept-source-agreements --purge --force --silent $Program" -NoNewWindow -Wait
	}

        $X++
    }

    Write-Progress -Activity "$manage Applications" -Status "Finished" -Completed

}

function Test-WinUtilPackageManager {
    <#

    .SYNOPSIS
        Checks if Winget and/or Choco are installed

    .PARAMETER winget
        Check if Winget is installed

    .PARAMETER choco
        Check if Chocolatey is installed

    #>

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
            $wingetBadVersion = [System.Version]::Parse("1.2.10691") # Windows 11 (22H2) comes with v1.2.10691, which is bugged.
            $wingetOutdated = $wingetCurrentVersion -le $wingetBadVersion
            Write-Host "===========================================" -ForegroundColor Green
            Write-Host "--         Winget is installed          ---" -ForegroundColor Green
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
            Write-Host "--       Winget is not installed        ---" -ForegroundColor Red
            Write-Host "===========================================" -ForegroundColor Red
            $status = "not-installed"
        }
    }

    if ($choco) {
        if ((Get-Command -Name choco -ErrorAction Ignore) -and ($chocoVersion = (Get-Item "$env:ChocolateyInstall\choco.exe" -ErrorAction Ignore).VersionInfo.ProductVersion)) {
            Write-Host "===========================================" -ForegroundColor Green
            Write-Host "--       Chocolatey is installed        ---" -ForegroundColor Green
            Write-Host "===========================================" -ForegroundColor Green
            Write-Host "Version: v$chocoVersion" -ForegroundColor White
            $status = "installed"
        } else {
            Write-Host "===========================================" -ForegroundColor Red
            Write-Host "--     Chocolatey is not installed      ---" -ForegroundColor Red
            Write-Host "===========================================" -ForegroundColor Red
            $status = "not-installed"
        }
    }

    return $status
}
