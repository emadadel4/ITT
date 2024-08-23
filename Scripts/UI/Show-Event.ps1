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
    $sync.event = [Windows.Markup.XamlReader]::Load($EventWindowReader)
    $sync["event"].Resources.MergedDictionaries.Add($sync["window"].FindResource($sync.CurretTheme))
    $sync.event.title = "ITT | $title"
    $sync.event.Height = "$WindowHeight"
    $sync.event.Width = "$WindowWidth"

    # Set new values
    $titleTextBlock = $sync.event.FindName('title')
    $subtitleTextBlock = $sync.event.FindName('Subtitle')
    $tutorialImage = $sync.event.FindName('TutorialImage')
    $mainStackPanel = $sync.event.FindName('MainStackPanel')

    # Switch-like structure using switch statement
    switch ($day) {

        "Birthday" {
            # Remove the subtitle text block
            $titleTextBlock.Text = "$title"
            $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
            $subtitleTextBlock.Text = "$description"
            $sync.event.FindName('DisablePopup').Text = "Happy birthday day Emad"
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

            if($sync.Language -ne "ar")
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


    $sync.event.FindName("DisablePopup").add_MouseLeftButtonDown({
        DisablePopup
        $sync.event.Close()
    })

    # Show dialog
    $sync.event.ShowDialog() | Out-Null
}

# Function to check current date and call Show-Event
function Check-Date {

    $watchdemo = $sync.database.locales.Controls.$($sync.Language).watchdemo
    $happybirthday = $sync.database.locales.Controls.$($sync.Language).happybirthday
    $myplaylist = $sync.database.locales.Controls.$($sync.Language).myplaylist
    $subs = $sync.database.locales.Controls.$($sync.Language).Subtitle


    if ($sync.Date.Month -eq 9 -and $sync.Date.Day -eq 1) 
    {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/happy.jpg" -ImageHeight 200 -title "$happybirthday" -description "$myplaylist" -day "Birthday" -WindowHeight 455 -WindowWidth 555
    } 
    else 
    {
        if($sync.PopupWindow -eq "off")
        {
            return
        }   

        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/thumbnail.jpg" -title "$watchdemo" -description "$subs" -day "Default" -WindowHeight 455 -WindowWidth 555
    }
}

function DisablePopup {
    Set-ItemProperty -Path $sync.registryPath  -Name "PopupWindow" -Value "off" -Force
}