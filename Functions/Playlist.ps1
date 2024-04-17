function PlayMusic {

    Invoke-RunspaceWithScriptBlock -ScriptBlock {

        $audioUrls = @(
            "https://epsilon.vgmsite.com/soundtracks/far-cry-3/iqgdbfrhtw/17.%20Further%20%28feat.%20Serena%20McKinney%29.mp3",
            "https://dl.vgmdownloads.com/soundtracks/hollow-knight-original-soundtrack/qqrmmaqyqg/26.%20Hollow%20Knight.mp3",
            "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-unity-vol.-1/hxqrvcoyfj/01.%20Unity.mp3",
            "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/jgevpclfcr/01.%20Assassin%27s%20Creed%20III%20Main%20Theme.mp3",
            "https://dl.vgmdownloads.com/soundtracks/assassins-creed-mirage-original-game-soundtrack-2023/axtwruyduh/01.%20Mirage%20Theme.mp3",
            "https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3"
            "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-iv-black-flag/zxpesokhkg/1-02%20Pyrates%20Beware.mp3"
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
            $randomIndex = Get-Random -Minimum 0 -Maximum $audioUrls.Count
            $randomUrl = $audioUrls[$randomIndex]
            PlayAudio $randomUrl
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