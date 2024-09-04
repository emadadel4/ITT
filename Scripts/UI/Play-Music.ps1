# Mute the music by setting the volume to the specified value
function MuteMusic {
    param($value)
    $itt.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "$value" -Force
}

# Unmute the music by setting the volume to the specified value
function UnmuteMusic {
    param($value)
    $itt.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "$value" -Force
}

# Stop the music and clean up resources
function StopMusic {
    $itt.mediaPlayer.controls.stop()    # Stop the media player
    $itt.mediaPlayer = $null            # Clear the media player object
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $itt.runspace.Dispose()             # Dispose of the runspace
    $itt.runspace.Close()               # Close the runspace
}

# Stop all runspaces, stop the music, and exit the process
function StopAllRunspace {
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $itt.runspace.Dispose()             # Dispose of the runspace
    $itt.runspace.Close()               # Close the runspace
    $script:powershell.Stop()            # Stop the PowerShell script
    StopMusic                            # Stop the music and clean up resources
    $newProcess.exit                     # Exit the process
    # Display a message reminding to pray for the oppressed
    Write-Host "`n` Don't forget to pray for the oppressed people, Stand with Palestine" 
}