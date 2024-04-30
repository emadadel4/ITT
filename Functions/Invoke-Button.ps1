function Invoke-Button {

    Param ([string]$Button)

    # debug
    #Write-Host $Button

    Switch -Wildcard ($Button){

        "installBtn" {ToggleTheme $Button}
    }
}