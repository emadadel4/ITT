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