function GetQuotes {

    Invoke-RunspaceWithScriptBlock -ScriptBlock {


        # Define the path to your JSON file
        $jsonFilePath = $sync.configs.Quotes

        # Function to shuffle an array
        function Shuffle-Array {
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
        $shuffledNames = Shuffle-Array -Array (Get-NamesFromJson)

        # Loop forever and print shuffled names
        while ($true) {
            foreach ($name in $shuffledNames) {

                $sync.q.Dispatcher.Invoke([Action]{
                    $sync.q.Text = "`".$name`""
                })

                Start-Sleep -Seconds 8  # Adjust the sleep time as needed
            }
        }


    }
}

