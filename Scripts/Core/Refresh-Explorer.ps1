function Refresh-Explorer {
    
    # Stop the Explorer process
    Stop-Process -Name explorer -Force

    # Wait a moment to ensure the process has stopped
    Start-Sleep -Seconds 1

    # Restart the Explorer process
    Stop-Process -Name explorer -Force

    # Refresh Windows Explorer
    $shell = New-Object -ComObject Shell.Application
    $shell.Windows() | Where-Object { $_.Name -eq 'File Explorer' } | ForEach-Object { $_.Refresh() }

    # Refresh the desktop
    $desktop = New-Object -ComObject Shell.Application
    $desktop.NameSpace(0).Self.InvokeVerb('Refresh')
}