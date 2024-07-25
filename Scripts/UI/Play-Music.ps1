function PlayMusic {
    # Function to play an audio track
    function PlayAudio($url) {
        $mediaItem = $sync.mediaPlayer.newMedia($url)
        $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
        $sync.mediaPlayer.controls.play()
    }

    # Shuffle the playlist and create a new playlist
    function GetShuffledTracks {
        return $sync.database.OST.Tracks | Get-Random -Count $sync.database.OST.Tracks.Count
    }

    # Function to play the shuffled playlist
    function PlayShuffledPlaylist {
        $shuffledTracks = GetShuffledTracks
        foreach ($url in $shuffledTracks) {
            PlayAudio $url
            # Wait for the track to finish playing
            while ($sync.mediaPlayer.playState -in 3, 6) {
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
    Write-Host "`n` Bye see you soon. :)" 
}