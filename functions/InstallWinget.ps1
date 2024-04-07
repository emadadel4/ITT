function Install-WinWinget {

    $progressPreference = 'silentlyContinue'
    # Set the environment variable for the root of the temp folder
    $LogPath = $env:TEMP

    # Set the XML Dependency
    $UIXAMLDependency = "Microsoft.UI.Xaml"
    $UIXAMLAPPXDependency = $env:ProgramFiles + "\PackageManagement\NuGet\Packages\Microsoft.UI.Xaml.2.7.0\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.7.appx"
    $VCDependency = "Microsoft.VCLibs.x64.14.00.Desktop.appx"

    # Begin recording all interactions to the log file
    Start-Transcript -Path "$LogPath\wingetinstall.log"

    # Configure download location for Winget
    $latestWingetMsixBundleUri = $(Invoke-RestMethod https://api.github.com/repos/microsoft/winget-cli/releases/latest).assets.browser_download_url | Where-Object {$_.EndsWith(".msixbundle")}
    $latestWingetMsixBundle = $latestWingetMsixBundleUri.Split("/")[-1]

    # Download Microsoft binaries.
    Write-Information "Downloading winget to current directory..."
    Invoke-WebRequest -Uri $latestWingetMsixBundleUri -OutFile "./$latestWingetMsixBundle"
    Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx

    # Workaround for Microsoft.UI.Xaml dependency.
    # Creates an additional dependency on Microsoft.Web.Webview2
    # Detection logic was breaking the silent install. Just installing NuGet's package provider.
    Write-Information "Install Nuget..."
    Install-PackageProvider -Name NuGet -Force -Scope CurrentUser -Confirm:$false

    # Install Winget PowerShell Module
    # Check if Nuget Module is installed
    Write-Information "Checking for Nuget Powershell Module..."
    if(-not (Get-Module -ListAvailable -Name NuGet)) {
        # Install the Nuget PowerShell Module
        Write-Information "Nuget Powershell Module not found. Installing..."
        Install-Module -Name NuGet -Force
    }
    Write-Information "Nuget Powershell Module found."

    # Configure Nuget.org repository
    # Check if Nuget.org repository is registered
    Write-Information "Check if Nuget.org repository is registered..."
    if(-not (Get-PackageSource | Where-Object { $_.Name -eq 'nuget.org' })) 
    {
        # Register the Nuget.org repository
        Write-Information "Nuget.org repository not found. Registering..."
        Register-PackageSource -Name nuget.org -Location https://www.nuget.org/api/v2 -ProviderName NuGet
    }
    Write-Information "Nuget.org repository found."

    # Install Microsoft.UI.Xaml
    # Check if UI Xaml is installed
    Write-Information "Checking for Microsoft UI XAML..."
    if (-not (Get-Package -Name $UIXAMLDependency -RequiredVersion 2.7 -ErrorAction SilentlyContinue)) 
    {
        Write-Information "Installing Microsoft UI XAML..."
        Install-Package $UIXAMLDependency -RequiredVersion 2.7 -Force
        Add-AppxPackage $UIXAMLAPPXDependency
    }
    Write-Information "Microsoft UI XAML found."

    # Install VC++ Libs
    # Check if VC++ Libs  is installed
    Write-Information "Checking for VC dependency..."
    if (-not (Get-AppxPackage -Name $VCDependency -ErrorAction SilentlyContinue)) 
    {
        # Install VC++
        Write-Information "Installing VC dependency..."
        Add-AppxPackage "./$VCDependency" -ErrorAction SilentlyContinue
    }
    Write-Information "VC dependency installed."

    # Install winget
    # Check if winget is installed
    Write-Information "Checking for Winget..."
    $wingetPackageName = $latestWingetMsixBundle.Split(".")[0]
    if (-not (Get-AppxPackage -Name $wingetPackageName -ErrorAction SilentlyContinue)) 
    {
        Write-Information "Installing winget..."
        Add-AppxPackage "./$latestWingetMsixBundle"
    }
    Write-Information "Winget installed."

    # Stop recording interactions
    Stop-Transcript

}