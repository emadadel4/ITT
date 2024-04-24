function PlayMusic {

    Invoke-RunspaceWithScriptBlock -ScriptBlock {

        $audioUrls = @(
            "https://epsilon.vgmsite.com/soundtracks/far-cry-3/iqgdbfrhtw/17.%20Further%20%28feat.%20Serena%20McKinney%29.mp3",
            "https://dl.vgmdownloads.com/soundtracks/hollow-knight-original-soundtrack/qqrmmaqyqg/26.%20Hollow%20Knight.mp3",
            "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-unity-vol.-1/hxqrvcoyfj/01.%20Unity.mp3",
            "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/jgevpclfcr/01.%20Assassin%27s%20Creed%20III%20Main%20Theme.mp3",
            "https://dl.vgmdownloads.com/soundtracks/assassins-creed-mirage-original-game-soundtrack-2023/axtwruyduh/01.%20Mirage%20Theme.mp3",
            "https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3",
            "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-iv-black-flag/zxpesokhkg/1-02%20Pyrates%20Beware.mp3",
            "https://vgmsite.com/soundtracks/battlefield-3/tabqykkp/01.%20Battlefield%203%20Main%20Theme.mp3",
            "https://archive.org/download/GrandTheftAuto4ThemeSong_201904/Grand%20Theft%20Auto%204%20Theme%20Song.mp3",
            "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/jlrprchapt/1-03%20Ezio%27s%20Family.mp3",
            "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/nkantwuktr/1-01%20Earth.mp3",
            "https://epsilon.vgmsite.com/soundtracks/mass-effect-3-gamerip-2012/nchtmgcz/304.%20End%20of%20Cycle.mp3"
        )
    
        Function PlayAudio($url) {
            try {
                $mediaItem =  $sync.mediaPlayer.newMedia($url)
                $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
                $sync.mediaPlayer.controls.play()
            }
            catch {
            }
        }
    
        # Function to shuffle the playlist
        Function ShuffleArray {
            param([array]$array)
            $count = $array.Length
            for ($i = 0; $i -lt $count; $i++) {
                $randomIndex = Get-Random -Minimum $i -Maximum $count
                $temp = $array[$i]
                $array[$i] = $array[$randomIndex]
                $array[$randomIndex] = $temp
            }
        }
    
        # Shuffle the playlist
        ShuffleArray -array $audioUrls
    
        # Function to play the entire shuffled playlist
        Function PlayShuffledPlaylist {
            foreach ($url in $audioUrls) {
                PlayAudio $url
                # Wait for the track to finish playing
                while ( $sync.mediaPlayer.playState -eq 3 -or  $sync.mediaPlayer.playState -eq 6) {
                    Start-Sleep -Milliseconds 100
                }
            }
        }
    
        # Play the shuffled playlist indefinitely
        while ($true) 
        {
            PlayShuffledPlaylist
        }
    }
}

function StopMusic {

    $sync.mediaPlayer.controls.stop()
    $sync.mediaPlayer = $null

    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
}

