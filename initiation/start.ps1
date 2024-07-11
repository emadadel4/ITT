# Load DLLs
Add-Type -AssemblyName System.Windows.Forms

# Variable to sync between runspaces
$sync = [Hashtable]::Synchronized(@{})
$sync.database = @{}
$sync.ProcessRunning = $false
$sync.lastupdate = "#{replaceme}"
$sync.github =   "https://github.com/emadadel4"
$sync.telegram = "https://t.me/emadadel4"
$sync.website =  "https://emadadel4.github.io"
$sync.developer =   "Emad Adel"
$sync.registryPath = "HKCU:\Software\itt.emadadel"
$sync.firebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
$sync.isDarkMode
$sync.Langusege = "en"
$sync.mediaPlayer = New-Object -ComObject WMPlayer.OCX
$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$administrator=[System.Security.Principal.WindowsBuiltInRole]::Administrator
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";

if ($principal.IsInRole($administrator))
{
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Admin)"
    $Host.UI.RawUI.WindowTitle = "ITT (Install and Tweaks Tool)"
    # Set the window to start maximized
    $Maximized = New-Object -ComObject Shell.Application
    $Maximized.MinimizeAll()

 
    #Clear-Host
}
else
{
    $newProcess.Arguments = $myInvocation.MyCommand.Definition
    $newProcess.Verb = "runas"
    $newProcess.WindowStyle = [System.Diagnostics.ProcessWindowStyle]::Maximized
    [System.Diagnostics.Process]::Start($newProcess)
    exit
}