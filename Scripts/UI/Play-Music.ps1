function PlayMusic {

    Invoke-ScriptBlock -ScriptBlock {

        # Function to play an audio track
        function PlayAudio($track) {
            $mediaItem = $sync.mediaPlayer.newMedia($track)
            $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
            $sync.mediaPlayer.controls.play()
        }

        # Shuffle the playlist and create a new playlist
        function GetShuffledTracks {

            # Play Favorite Music in Special Date
            if ($sync.Date.Month -eq 9 -and $sync.Date.Day -eq 1) {
                return $sync.database.OST.Favorite | Get-Random -Count $sync.database.OST.Favorite.Count
            }
            else {
                return $sync.database.OST.Tracks | Get-Random -Count $sync.database.OST.Tracks.Count
            }
        }

        # Preload and play the shuffled playlist
        function PlayPreloadedPlaylist {
            # Preload the shuffled playlist
            $shuffledTracks = GetShuffledTracks

            while ($true) {  # Loop indefinitely to repeat the preloaded playlist
                foreach ($track in $shuffledTracks) {
                    PlayAudio -track $track.url
                    # Wait for the track to finish playing
                    while ($sync.mediaPlayer.playState -in 3, 6) {
                        Start-Sleep -Milliseconds 100
                    }
                }
            }
        }

        # Play the preloaded playlist
        PlayPreloadedPlaylist
    }
}

# Mute the music by setting the volume to the specified value
function MuteMusic {
    param($value)
    $sync.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "Music" -Value "$value" -Force
}

# Unmute the music by setting the volume to the specified value
function UnmuteMusic {
    param($value)
    $sync.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "Music" -Value "$value" -Force
}

# Stop the music and clean up resources
function StopMusic {
    $sync.mediaPlayer.controls.stop()    # Stop the media player
    $sync.mediaPlayer = $null            # Clear the media player object
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $sync.runspace.Dispose()             # Dispose of the runspace
    $sync.runspace.Close()               # Close the runspace
}

# Stop all runspaces, stop the music, and exit the process
function StopAllRunspace {
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $sync.runspace.Dispose()             # Dispose of the runspace
    $sync.runspace.Close()               # Close the runspace
    $script:powershell.Stop()            # Stop the PowerShell script
    StopMusic                            # Stop the music and clean up resources
    $newProcess.exit                     # Exit the process
    # Display a message reminding to pray for the oppressed
    Write-Host "`n` Don't forget to pray for the oppressed people, Stand with Palestine" 
}