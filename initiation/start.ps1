# Load DLLs
Add-Type -AssemblyName System.Windows.Forms

# Synchronized Hashtable for shared variables
$sync = [Hashtable]::Synchronized(@{
    database       = @{}
    ProcessRunning = $false
    lastupdate     = "07/18/24"
    github         = "https://github.com/emadadel4"
    telegram       = "https://t.me/emadadel4"
    website        = "https://emadadel4.github.io"
    developer      = "Emad Adel"
    registryPath   = "HKCU:\Software\itt.emadadel"
    firebaseUrl    = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
    isDarkMode     = $null
    Langusege      = "en"
    mediaPlayer    = New-Object -ComObject WMPlayer.OCX
})

$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object System.Security.Principal.WindowsPrincipal($currentPid)
$administrator = [System.Security.Principal.WindowsBuiltInRole]::Administrator

$newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell"

if ($principal.IsInRole($administrator)) {
    $Host.UI.RawUI.WindowTitle = "ITT (Install and Tweaks Tool) - Admin"
} else {
    $newProcess.Arguments = $myInvocation.MyCommand.Definition
    $newProcess.Verb = "runas"
    [System.Diagnostics.Process]::Start($newProcess)
    exit
}

