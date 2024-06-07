function Invoke-Button {

    Param ([string]$debug)

    # debug
    #Write-Host $debug

    Switch -Wildcard ($debug){

        "installBtn" {Invoke-Install $debug}
        "applyBtn" {Invoke-ApplyTweaks $debug}
        "taps" {ChangeTap $debug}
        "category" {FilterByCat($sync.category.SelectedItem.Content) $debug}
        "searchInput" {Search; $sync['window'].FindName('category').SelectedIndex = 0; $debug }

        #===========================================================================
        #region Menu items
        #===========================================================================
        "load" {LoadJson $Button}


        "ar" {
            SetLangusege -lang "ar"
            $Button
        }

        "en" {
            SetLangusege -lang "en"
            $Button
        }


        "save" {SaveItemsToJson $debug}
        "logo" {About $debug}
        "mas" {Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts") $debug}
        "idm" { Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script") $debug}
        "unhook" { Start-Process ("https://unhook.app/") $debug}
        "uBlock" { Start-Process ("https://ublockorigin.com/") $debug}
        "dev" { About $Button}
        "deviceManager" {Start-Process devmgmt.msc $debug}
        "appsfeatures" {Start-Process ms-settings:appsfeatures $debug}
        "sysinfo" {Start-Process msinfo32.exe; dxdiag.exe; $debug}
        "poweroption" {Start-Process powercfg.cpl $debug}
        "services" {Start-Process services.msc $debug}
        "network" {Start-Process ncpa.cpl $debug}
        "taskmgr" {Start-Process taskmgr.exe $debug}
        "diskmgmt" {Start-Process diskmgmt.msc $debug}
        "darkOn" { Switch-ToDarkMode $debug }
        "darkOff" { Switch-ToLightMode $debug }
        "ittshortcut" { ITTShortcut $debug }
        "moff" { MuteMusic $debug }
        "mon" { Unmute $debug }
        "neat" { Start-Process ("https://addons.mozilla.org/en-US/firefox/addon/neatdownloadmanager-extension/")  $debug }
        #===========================================================================
        #endregion Menu items
        #===========================================================================

    }
}
