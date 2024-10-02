
# Invoke Event Window WPF
function Show-Event {
    param(
        [string]$image,
        [string]$title,
        [string]$description,
        [string]$day,
        [string]$WindowHeight,
        [string]$WindowWidth,
        [string]$ImageHeight,
        [string]$ImageWidth
    )

    [xml]$event = $EventXaml

    $EventWindowReader = (New-Object System.Xml.XmlNodeReader $event)
    $itt.event = [Windows.Markup.XamlReader]::Load($EventWindowReader)
    $itt["event"].Resources.MergedDictionaries.Add($itt["window"].FindResource($itt.CurretTheme))
    $itt.event.title = "ITT | $title"
    $itt.event.Height = "$WindowHeight"
    $itt.event.Width = "$WindowWidth"

    # Set new values
    $titleTextBlock = $itt.event.FindName('title')
    $subtitleTextBlock = $itt.event.FindName('Subtitle')
    $tutorialImage = $itt.event.FindName('Image')
    #$mainStackPanel = $itt.event.FindName('MainStackPanel')

    $itt.event.FindName('date').Text = $itt.lastupdate

    # Switch-like structure using switch statement
    switch ($day) {

        "Birthday" {
            $titleTextBlock.Text = "$title"
            $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
            $subtitleTextBlock.Text = "$description"
            $itt.event.FindName('DisablePopup').Text = "Happy birthday day Emad"
            $tutorialImage.Height = $ImageHeight
            $subtitleTextBlock.VerticalAlignment = "Center"
            $subtitleTextBlock.HorizontalAlignment = "Center"
            $subtitleTextBlock.FontSize = "20"

            $itt.event.FindName("DisablePopup").add_MouseLeftButtonDown({
                $itt.event.FindName("DisablePopup").Text = "Thank you :)"
            })
        }
        Default {

            # Check RTL & LTR
            if($itt.Language -ne "ar")
            {
                $titleTextBlock.Text = "$title $env:USERNAME" 
                $subtitleTextBlock.Text = "$description"

            }else
            {
                $titleTextBlock.Text = "$env:USERNAME $title " 
                $subtitleTextBlock.Text = "$description"
            }

            # Lazy loading image event handler
            $tutorialImage.add_IsVisibleChanged({
                if ($_.IsVisible) {
                    $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
                }
            })
                    
            $tutorialImage.add_MouseLeftButtonDown({
                Start-Process("https://youtu.be/QmO82OTsU5c")
            })

            $itt.event.FindName("DisablePopup").add_MouseLeftButtonDown({
                DisablePopup
                $itt.event.Close()
            })
        }
    }

    $itt.event.FindName("closebtn").add_MouseLeftButtonDown({
        $itt.event.Close()
    })

    $KeyEvents = {

        # Close
        if ($_.Key -eq "Escape") {
            $itt.event.Close()
        }
    }
    $itt.event.Add_PreViewKeyDown($KeyEvents)

    # Show dialog
    $itt.event.ShowDialog() | Out-Null
}

# Function to check current date and call Show-Event
function Get-DateStatus {

    $watchdemo = $itt.database.locales.Controls.$($itt.Language).watchdemo
    $happybirthday = $itt.database.locales.Controls.$($itt.Language).happybirthday
    $myplaylist = $itt.database.locales.Controls.$($itt.Language).myplaylist
    $subs = $itt.database.locales.Updates.Keyboard

    if ($itt.Date.Month -eq 9 -and $itt.Date.Day -eq 1) 
    {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/happy.jpg" -ImageHeight 400 -title "$happybirthday" -description "$myplaylist" -day "Birthday" -WindowHeight 600 -WindowWidth 486
    } 
    elseif ($itt.Date.Month -eq 10 -and $itt.Date.Day -eq 7 -or $itt.Date.Day -eq 8 ) 
    {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/happy.jpg" -ImageHeight 400 -title "$happybirthday" -description "$myplaylist" -day "Birthday" -WindowHeight 600 -WindowWidth 486 
    } 
    {
        if($itt.PopupWindow -eq "off") {return}   
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/thumbnail.jpg" -title "$watchdemo" -description "$subs" -day "Default" -WindowHeight 500 -WindowWidth 486
    }
}

# Save Current State event
function DisablePopup {
    Set-ItemProperty -Path $itt.registryPath  -Name "PopupWindow" -Value "off" -Force
}