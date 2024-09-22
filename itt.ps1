$url = "https://github.com/emadadel4/itt/releases/latest/download/ittea.ps1"

$script = Invoke-RestMethod $url

# Elevate Shell if necessary
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $powershellcmd = if (Get-Command pwsh -ErrorAction SilentlyContinue) { "pwsh" } else { "powershell" }
    $processCmd = if (Get-Command wt.exe -ErrorAction SilentlyContinue) { "wt.exe" } else { $powershellcmd }
    Start-Process $processCmd -ArgumentList "$powershellcmd -ExecutionPolicy Bypass -NoProfile -Command $(Invoke-Expression $script)" -Verb RunAs
}
else{
    Invoke-Expression $script
}