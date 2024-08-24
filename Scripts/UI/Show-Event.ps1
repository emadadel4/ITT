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
    $tutorialImage = $itt.event.FindName('TutorialImage')
    $mainStackPanel = $itt.event.FindName('MainStackPanel')

    # Switch-like structure using switch statement
    switch ($day) {

        "Birthday" {
            # Remove the subtitle text block
            $titleTextBlock.Text = "$title"
            $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
            $subtitleTextBlock.Text = "$description"
            $itt.event.FindName('DisablePopup').Text = "Happy birthday day Emad"
            $tutorialImage.Height = $ImageHeight
        }
        "NewYear" {
            # Remove the subtitle text block and image
            $mainStackPanel.Children.Remove($subtitleTextBlock)
            $mainStackPanel.Children.Remove($tutorialImage)
            # Update the title text block
            $titleTextBlock.Text = "$title - Happy New Year!"
        }
        Default {
            # Default case: update text blocks

            if($itt.Language -ne "ar")
            {
                $subtitleTextBlock.TextAlignment = "Left"
                $titleTextBlock.Text = "$title '$env:USERNAME'" 
                $subtitleTextBlock.Text = "$description"

            }else
            {
                $subtitleTextBlock.TextAlignment = "right"
                $titleTextBlock.Text = "$title '$env:USERNAME'" 
                $subtitleTextBlock.Text = "$description"
            }

            #$mainStackPanel.Children.Remove($subtitleTextBlock)

            # Lazy loading image event handler
            $tutorialImage.add_IsVisibleChanged({
                if ($_.IsVisible) {
                    $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
                }
            })
        }
    }


    $itt.event.FindName("DisablePopup").add_MouseLeftButtonDown({
        DisablePopup
        $itt.event.Close()
    })

    # Show dialog
    $itt.event.ShowDialog() | Out-Null
}

# Function to check current date and call Show-Event
function Check-Date {

    $watchdemo = $itt.database.locales.Controls.$($itt.Language).watchdemo
    $happybirthday = $itt.database.locales.Controls.$($itt.Language).happybirthday
    $myplaylist = $itt.database.locales.Controls.$($itt.Language).myplaylist
    $subs = $itt.database.locales.Controls.$($itt.Language).Subtitle


    if ($itt.Date.Month -eq 9 -and $itt.Date.Day -eq 1) 
    {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/happy.jpg" -ImageHeight 200 -title "$happybirthday" -description "$myplaylist" -day "Birthday" -WindowHeight 455 -WindowWidth 555
    } 
    else 
    {
        if($itt.PopupWindow -eq "off")
        {
            return
        }   

        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/thumbnail.jpg" -title "$watchdemo" -description "$subs" -day "Default" -WindowHeight 455 -WindowWidth 555
    }
}

function DisablePopup {
    Set-ItemProperty -Path $itt.registryPath  -Name "PopupWindow" -Value "off" -Force
}