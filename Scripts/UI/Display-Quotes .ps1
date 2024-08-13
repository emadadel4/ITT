function DisplayQuotes  {

    Invoke-ScriptBlock -ScriptBlock {

        # Define the JSON file path
        $jsonFilePath = $sync.database.Quotes

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
        function Display-WelcomeText {
            $sync.Quotes.Dispatcher.Invoke([Action]{

                $fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                $shortCulture = $fullCulture.Split('-')[0]
                $sync.Quotes.Text = $sync.database.locales.Controls.$($sync.Language).welcome
               
            })
        }

        # Display welcome text
        Display-WelcomeText

        Start-Sleep -Seconds 30

        # Loop through shuffled names and display them
        do {
            foreach ($name in $shuffledNames) {
                $sync.Quotes.Dispatcher.Invoke([Action]{
                    $sync.Quotes.Text = "`“$name`”"
                })
                # Adjust the sleep time as needed
                Start-Sleep -Seconds 15 
            }
        } while ($true)
    }
}