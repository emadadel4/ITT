
<#
.Dev
    developer      : Emad Adel @emadadel4
    GitHub         : https://github.com/emadadel4
    Telegram       : https://t.me/emadadel4
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
$sync.PSScriptRoot = $PSScriptRoot
$sync.version = "#{replaceme}"
$sync.github =   "https://github.com/emadadel4"
$sync.telegram = "https://t.me/emadadel4"
$sync.website =  "https://eprojects.orgfree.com"
$sync.developer =   "Emad Adel @emadadel4"
$sync.registryPath = "HKCU:\Software\ITTEmadadel"
$sync.database = @{}
$sync.ProcessRunning = $false
$sync.isDarkMode
$sync.mediaPlayer = New-Object -ComObject WMPlayer.OCX
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator

if ($principal.IsInRole($adminRole))
{
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Admin)"
    Clear-Host
}
else
{
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    $newProcess.WindowStyle = "Maximized"
    [System.Diagnostics.Process]::Start($newProcess);
}

Send-SystemInfo -FirebaseUrl $FirebaseUrl -Key $Key *> $null