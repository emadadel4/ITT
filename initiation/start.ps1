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

if ($principal.IsInRole($administrator)) {
    # Set window title
    $Host.UI.RawUI.WindowTitle = "ITT (Install and Tweaks Tool)"

    # Maximize the PowerShell console window
    $console = [System.Console]
    $consoleWidth = $console.BufferWidth
    $consoleHeight = $console.BufferHeight
    $maxWidth = $console.LargestWindowWidth
    $maxHeight = $console.LargestWindowHeight

    if ($console.WindowWidth -lt $maxWidth -or $console.WindowHeight -lt $maxHeight) {
        $console.BufferWidth = $maxWidth
        $console.BufferHeight = $maxHeight
        $console.WindowWidth = $maxWidth
        $console.WindowHeight = $maxHeight
    }
}
else {
    # Run the script as administrator
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell"
    $newProcess.Arguments = $myInvocation.MyCommand.Definition
    $newProcess.Verb = "runas"
    [System.Diagnostics.Process]::Start($newProcess)
    exit
}