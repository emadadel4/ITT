function GetCulture {

    param (
        [string]$currentlang
    )

    $currentCulture = [System.Globalization.CultureInfo]::CurrentCulture
    $shortCulture = $currentCulture.Name.Substring(0,2)

    # #$lang = (Get-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "lang").lang

    # if ($sync.Langusege -ne "en") 
    # {
    #     $sync["window"].DataContext = $sync.database.locales.$lang
    #     return
    # } 

    switch ($shortCulture) {
        "en" {
            $sync["window"].DataContext = $sync.database.locales.en
        }
        "ar" {
            $sync["window"].DataContext = $sync.database.locales.ar
        }
        default {
            # Default language
            $sync["window"].DataContext = $sync.database.locales.en
            #Write-Host "fallback to default lang"
        }
    }

}


GetCulture