function PlayMusic
{
    $MediaPlayer = [Windows.Media.Playback.MediaPlayer, Windows.Media, ContentType = WindowsRuntime]::New()
    $MediaPlayer.IsLoopingEnabled = $true
    $MediaPlayer.Volume = 0.6
    $ost = 'https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3'
    $MediaPlayer.Source = [Windows.Media.Core.MediaSource]::CreateFromUri($ost)
    $MediaPlayer.Play()   
}