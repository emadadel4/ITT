function Show-Event {
    param(
        [string]$image,
        [string]$title,
        [string]$description,
        [string]$day  # Added day parameter to handle different cases
    )

    [xml]$event = $EventXaml

    $EventWindowReader = (New-Object System.Xml.XmlNodeReader $event)

    $sync.event = [Windows.Markup.XamlReader]::Load($EventWindowReader)

    $sync.event.title = "ITT | $title"

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
            $mainStackPanel.Children.Remove($subtitleTextBlock)
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
            $titleTextBlock.Text = "$title"
            $mainStackPanel.Children.Remove($subtitleTextBlock)

            # Lazy loading image event handler
            $tutorialImage.add_IsVisibleChanged({
                if ($_.IsVisible) {
                    $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
                }
            })
        }
    }

    # Show dialog
    $sync.event.ShowDialog() | Out-Null
}

function Get-DateFromWorldTimeApi {

    Invoke-ScriptBlock -ScriptBlock {

        $apiUrl = "http://worldtimeapi.org/api/ip"

        try {
            # Fetch date and time from the API
            $response = Invoke-RestMethod -Uri $apiUrl -Method Get

            # Extract and return the date and time
            $dateTime = [DateTime]$response.datetime
            return $dateTime
        } catch {
            Write-Error "Failed to fetch date from World Time API. Error: $_"
            return $null
        }
    }
}

# Example usage
$currentDate = Get-DateFromWorldTimeApi
if ($currentDate) {
    Write-Output "Current Date and Time: $currentDate"
}

# Function to check current date and call Show-Event
function Check-DateAndShowEvent {
    $currentDate = Get-DateFromWorldTimeApi

    if ($currentDate.Month -eq 9 -and $currentDate.Day -eq 1) {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/happy.jpg" -title "Happy Birthday!" -description "It's my Birthday" -day "Birthday"
    } elseif ($currentDate.Month -eq 1 -and $currentDate.Day -eq 1) {
        Show-Event -image "https://newyear-image-url.com" -title "New Year" -description "Happy New Year!" -day "NewYear"
    } else {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/thumbnail.png" -title "Watch tutorial" -day "Default"
    }
}