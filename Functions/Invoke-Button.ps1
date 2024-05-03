function Invoke-Button {

    Param ([string]$Button)

    # debug
    #Write-Host $Button

    Switch -Wildcard ($Button){

        "installBtn" {Invoke-Install $Button}
        "applyBtn" {Invoke-ApplyTweaks $Button}
        "taps" {ChangeTap $Button}
        "load" {LoadJson $Button}
        "save" {SaveItemsToJson $Button}
        "about" {About $Button}
        "cat" {FilterByCat($sync.cat.SelectedItem.Content) $Button}
        "mas" {Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts") $Button}
        "idm" { Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script") $Button}
        "dev" { About $Button}
        "deviceManager" {Start-Process devmgmt.msc $Button}
        "appsfeatures" {Start-Process ms-settings:appsfeatures $Button}
        "sysinfo" {Start-Process msinfo32.exe; dxdiag.exe; $Button}
        "poweroption" {Start-Process powercfg.cpl $Button}
        "services" {Start-Process services.msc $Button}
        "network" {Start-Process ncpa.cpl $Button}
        "taskmgr" {Start-Process taskmgr.exe $Button}
        "diskmgmt" {Start-Process diskmgmt.msc $Button}
        "darkOn" { Switch-ToDarkMode $Button }
        "darkOff" { Switch-ToLightMode $Button }
        "searchInput" {Search; $sync['window'].FindName('cat').SelectedIndex = 0; $sync['window'].FindName('apps').IsSelected = $true; Write-Host "fff";  $Button }
    }
}