function ITTShortcut {
    # URL of the icon file
    $iconUrl = "https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Icons/icon.ico"
    
    # Local path where the icon will be downloaded
    $localIconPath = "$env:TEMP\ITTIcon.ico"
    
    # Download the icon file
    Invoke-WebRequest -Uri $iconUrl -OutFile $localIconPath
    
    # Create a shortcut object
    $Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$([Environment]::GetFolderPath('Desktop'))\ITT Emad Adel.lnk")
    
    # Set the target path to PowerShell with your command
    $Shortcut.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
    $Shortcut.Arguments = "-ExecutionPolicy Bypass -Command ""irm bit.ly/emadadel | iex"""
    
    # Set the icon path to the downloaded icon file
    $Shortcut.IconLocation = "$localIconPath"
    
    # Save the shortcut
    $Shortcut.Save()
}
