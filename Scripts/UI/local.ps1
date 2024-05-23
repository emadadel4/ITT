function GetCulture {

    param (
        [string]$currentlang
    )

    $currentCulture = [System.Globalization.CultureInfo]::CurrentCulture
    $shortCulture = $currentCulture.Name.Substring(0,2)

    $lang = (Get-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "lang").lang

    if ($sync.Langusege -ne "en") 
    {
        $sync["window"].DataContext = $sync.database.locales.$lang
        return
    } 

    if($shortCulture -eq "en")
    {
        $sync["window"].DataContext = $sync.database.locales.en

    }
    elseif ($shortCulture -eq "ar") {
        $sync["window"].DataContext = $sync.database.locales.ar
    }
    else
    {
        # default lang
        $sync["window"].DataContext = $sync.database.locales.en
        #Write-Host "fallback to default lang"
    }

}


GetCulture