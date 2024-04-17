function PlayMusic {

    Invoke-RunspaceWithScriptBlock -ScriptBlock {

        $audioUrls = @(
            "https://epsilon.vgmsite.com/soundtracks/far-cry-3/iqgdbfrhtw/17.%20Further%20%28feat.%20Serena%20McKinney%29.mp3",
            "https://dl.vgmdownloads.com/soundtracks/hollow-knight-original-soundtrack/qqrmmaqyqg/26.%20Hollow%20Knight.mp3",
            "https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3"
        )
    
        $mediaPlayer = New-Object -ComObject WMPlayer.OCX
    
        Function PlayAudio($url) {
            try {
                $mediaItem = $mediaPlayer.newMedia($url)
                $mediaPlayer.currentPlaylist.appendItem($mediaItem)
                $mediaPlayer.controls.play() | Out-Null
            }
            catch {
            }
        }
    
        # Function to play the entire playlist
        Function PlayPlaylist {
            foreach ($url in $audioUrls) {
                PlayAudio $url
                
            }
        }
    
        # Play the playlist indefinitely
        while ($true) {
            PlayPlaylist
    
            # Wait for the playlist to finish
            while ($mediaPlayer.playState -eq 3 -or $mediaPlayer.playState -eq 6) {
                Start-Sleep -Milliseconds 100
            }
    
            # Reset the playlist position to the beginning
            $mediaPlayer.controls.currentPosition = 0
        }
    }

    Clear-Host
}

PlayMusic