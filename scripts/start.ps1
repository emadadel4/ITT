<#
.NOTES
    Author         : Emad Adel @emadadel4
    GitHub         : https://github.com/emadadel4
    Website        : https://eprojects.orgfree.com/
    Version        : #{replaceme}
#>
param (
    [switch]$Debug,
    [string]$Config,
    [switch]$Run
)

# Set DebugPreference based on the -Debug switch
if ($Debug) {
    $DebugPreference = "Continue"
}

if (!(Test-Path -Path $ENV:TEMP)) {
    New-Item -ItemType Directory -Force -Path $ENV:TEMP
}

Start-Transcript $ENV:TEMP\itt.log -Append

# Load DLLs
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms

# Variable to sync between runspaces
$sync = [Hashtable]::Synchronized(@{})
$sync.PSScriptRoot = $PSScriptRoot
$sync.version = "#{replaceme}"
$sync.configs = @{}
$sync.ProcessRunning = $false

# $currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
# $principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
# $adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator


# if ($principal.IsInRole($adminRole))
# {
#     $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Admin)"
#     clear-host
# }
# else
# {
#     $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
#     $newProcess.Arguments = $myInvocation.MyCommand.Definition;
#     $newProcess.Verb = "runas";
#     [System.Diagnostics.Process]::Start($newProcess);
#     break
# }

