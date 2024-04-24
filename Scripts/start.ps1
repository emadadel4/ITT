
<#
.Dev
    Author         : Emad Adel @emadadel4
    GitHub         : https://github.com/emadadel4
    Website        : https://eprojects.orgfree.com/
    Version        : #{replaceme}
#>

if (!(Test-Path -Path $ENV:TEMP)) {
    New-Item -ItemType Directory -Force -Path $ENV:TEMP
}

# Load DLLs
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName PresentationFramework.Aero


# Variable to sync between runspaces
$sync = [Hashtable]::Synchronized(@{})
$script:powershell = [powershell]::Create()
$sync.PSScriptRoot = $PSScriptRoot
$sync.version = "#{replaceme}"
$sync.github = "https://github.com/emadadel4"
$sync.website = "https://eprojects.orgfree.com"
$sync.author = "Emad Adel @emadadel4"
$sync.registryPath = "HKCU:\Software\ITTEmadadel"
$sync.configs = @{}
$sync.ProcessRunning = $false

$sync.theme = "Light"
$sync.isDarkMode = $sync.theme
$sync.mediaPlayer = New-Object -ComObject WMPlayer.OCX


$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator



if ($principal.IsInRole($adminRole))
{
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Admin)"
    clear-host
}
else
{
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    [System.Diagnostics.Process]::Start($newProcess);
    break
}

# Check if the registry path exists
if (!(Test-Path $sync.registryPath)) {
    # If it doesn't exist, create it
    New-Item -Path $sync.registryPath -Force *> $null
}
