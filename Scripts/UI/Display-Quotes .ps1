function DisplayQuotes  {

    Invoke-ScriptBlock -ScriptBlock {

        # Define the JSON file path
        $jsonFilePath = $itt.database.Quotes

        # Function to shuffle an array
        function ShuffleArray {
            param (
                [array]$Array
            )
            $count = $Array.Count
            for ($i = $count - 1; $i -ge 0; $i--) {
                $randomIndex = Get-Random -Minimum 0 -Maximum $count
                $temp = $Array[$i]
                $Array[$i] = $Array[$randomIndex]
                $Array[$randomIndex] = $temp
            }
            return $Array
        }

        # Function to get names from the JSON file
        function Get-NamesFromJson {
            $jsonContent =  $jsonFilePath 
            return $jsonContent.Q
        }

        # Get shuffled names
        $shuffledNames = ShuffleArray -Array (Get-NamesFromJson)

        # Function to display welcome text
        function Show-WelcomeText {
            $itt.Quotes.Dispatcher.Invoke([Action]{

                #$fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                #$shortCulture = $fullCulture.Split('-')[0]
                $itt.Quotes.Text = $itt.database.locales.Controls.$($itt.Language).welcome
               
            })
        }

        # Display welcome text
        Show-WelcomeText

        Start-Sleep -Seconds 20

        # Loop through shuffled names and display them
        do {
            foreach ($name in $shuffledNames) {
                $itt.Quotes.Dispatcher.Invoke([Action]{
                    $itt.Quotes.Text = "`“$name`”"
                })
                # Adjust the sleep time as needed
                Start-Sleep -Seconds 18 
            }
        } while ($true)
    }
}