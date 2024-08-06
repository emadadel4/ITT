function PlayMusic {
    # Function to play an audio track
    function PlayAudio($track) {

        $mediaItem = $sync.mediaPlayer.newMedia($track)
        $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
        $sync.mediaPlayer.controls.play()
    }

    # Shuffle the playlist and create a new playlist
    function GetShuffledTracks {
        
        if ($sync.Date.Month -eq 9 -and $sync.Date.Day -eq 1) {

            return $sync.database.OST.Favorite | Get-Random -Count $sync.database.OST.Favorite.Count
        }
        else
        {
            return $sync.database.OST.Tracks | Get-Random -Count $sync.database.OST.Tracks.Count
        }
    }

    # Function to play the shuffled playlist
    function PlayShuffledPlaylist {
        $shuffledTracks = GetShuffledTracks
        foreach ($track in $shuffledTracks) {
            PlayAudio -track $track.url
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
    param($value)
    $sync.mediaPlayer.settings.volume = $value
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "Music" -Value "$value" -Force
}
function UnmuteMusic {
    param($value)
    $sync.mediaPlayer.settings.volume = $value
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "Music" -Value "$value" -Force
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
    Write-Host "`n` Don't forget to pray for the oppressed people, Stand with Palestine" 
}