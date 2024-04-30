function Invoke-Button {

    Param ([string]$Button)

    # debug
    Write-Host $Button

    Switch -Wildcard ($Button){

        "installBtn" {Invoke-Install $Button}
        "applyBtn" {Invoke-ApplyTweaks $Button}
        "taps" {ChangeTap $Button}
        "load" {LoadJson $Button}
        "save" {SaveItemsToJson $Button}
        "themeText" {ToggleTheme $Button}
        "searchInput" {Search $Button}
        "about" {About $Button}
        "cat" {FilterByCat($sync.cat.SelectedItem.Content) $Button}
        "mas" {Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts") $Button}
        "idm" { Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script") $Button}
        "ittlink" { Start-Process ("https://github.com/emadadel4/ITT") $Button}
        "eprojectslink" { Start-Process ("https://eprojects.orgfree.com/") $Button}
        "teleegramprofile" {Start-Process ("https://t.me/emadadel4") $Button}
        "window" { Write-Host "Bye see you soon. :)" StopAllRunspace StopMusic $Button
        
        }

    }
}