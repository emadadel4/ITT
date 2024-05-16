function GetQuotes {

    Invoke-ScriptBlock -ScriptBlock {


        # Define the path to your JSON file
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
                $sync.Quotes.Text = $sync.database.Quotes.Q[0]
            })
        }

        # Display welcome text
        Display-WelcomeText

        Start-Sleep -Seconds 15

        # Loop forever and print shuffled names
        while ($true) {
            foreach ($name in $shuffledNames) {

                $sync.Quotes.Dispatcher.Invoke([Action]{
                    $sync.Quotes.Text = "`"$name.`""
                })

                # Adjust the sleep time as needed
                Start-Sleep -Seconds 15  
            }
        }
    }
}
