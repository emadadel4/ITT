#region PlayMusic Functions
function PlayMusic {

    Function PlayAudio($url)
    {
        $mediaItem =  $sync.mediaPlayer.newMedia($url)
        $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
        $sync.mediaPlayer.controls.play()
        
    }

    # Function to shuffle the playlist
    Function ShuffleArray
    {
        param([array]$array)

        $count = $array.Length

        for ($i = 0; $i -lt $count; $i++)
        {
            $randomIndex = Get-Random -Minimum $i -Maximum $count
            $temp = $array[$i]
            $array[$i] = $array[$randomIndex]
            $array[$randomIndex] = $temp
        }
    }

    # Shuffle the playlist
    ShuffleArray -array $sync.database.OST.Tracks

    # Function to play the entire shuffled playlist
    Function PlayShuffledPlaylist
    {
        foreach ($url in $sync.database.OST.Tracks)
        {
            PlayAudio $url
            # Wait for the track to finish playing
            while ( $sync.mediaPlayer.playState -eq 3 -or  $sync.mediaPlayer.playState -eq 6)
            {
                Start-Sleep -Milliseconds 100
            }
        }
    }

    PlayShuffledPlaylist
}

function MuteMusic {

    $sync.mediaPlayer.settings.volume = 0
}

function Unmute {
   
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

PlayMusic | Out-Null
#endregion
