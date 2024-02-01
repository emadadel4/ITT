if ([Environment]::Is64BitProcess -ne [Environment]::Is64BitOperatingSystem)
{
"PowerShell process does not match the OS"
}else {
    <# Action when all if and elseif conditions are false #>
    msiexec.exe /i https://download-installer.cdn.mozilla.net/pub/firefox/releases/122.0/win64/en-US/Firefox Setup 122.0.msi /passive
}


