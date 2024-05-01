
CheckChoco
GetQuotes *> $null 
PlayMusic *> $null 

$sync["window"].add_Closing({

    StopAllRunspace
})

$sync["window"].ShowDialog() | out-null
