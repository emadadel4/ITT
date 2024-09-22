$url = "https://github.com/emadadel4/itt/releases/latest/download/ittea.ps1"
$currentIdentity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object System.Security.Principal.WindowsPrincipal($currentIdentity)
$administratorRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator
$script = $url
if (-not $principal.IsInRole($administratorRole)) {
    # Determine which PowerShell version and terminal to use
    $powershellcmd = if (Get-Command pwsh -ErrorAction SilentlyContinue) { "pwsh" } else { "powershell" }
    $processCmd = if (Get-Command wt.exe -ErrorAction SilentlyContinue) { "wt.exe" } else { $powershellcmd }
    Start-Process $processCmd -ArgumentList "$powershellcmd -ExecutionPolicy Bypass -NoProfile -Command `"irm $script | iex`"" -Verb RunAs
    exit
} else {
    # Run the script directly if already elevated
    Invoke-RestMethod $script | Invoke-Expression
}
