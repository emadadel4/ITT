function PlayMusic {
    # Function to play an audio track
    function PlayAudio($url) {
        $mediaItem = $sync.mediaPlayer.newMedia($url)
        $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
        $sync.mediaPlayer.controls.play()
    }

    # Shuffle the playlist
    $shuffledTracks = $sync.database.OST.Tracks | Get-Random -Count $sync.database.OST.Tracks.Count

    # Function to play the shuffled playlist
    function PlayShuffledPlaylist {
        foreach ($url in $shuffledTracks) {
            PlayAudio $url
            # Wait for the track to finish playing
            while ($sync.mediaPlayer.playState -eq 3 -or $sync.mediaPlayer.playState -eq 6) {
                Start-Sleep -Milliseconds 100
            }
        }
    }

    # Play the shuffled playlist
    PlayShuffledPlaylist
}

function MuteMusic {

    $sync.mediaPlayer.settings.volume = 0
}
function UnmuteMusic {
   
    $sync.mediaPlayer.settings.volume = 100
}
function StopMusic {
    $sync.mediaPlayer.controls.stop()
    $sync.mediaPlayer = $null
    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
}
function StopAllRunspace {
    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
    $script:powershell.Stop()
    StopMusic
    $newProcess.exit
    Write-Host "Bye see you soon. :)" 
}