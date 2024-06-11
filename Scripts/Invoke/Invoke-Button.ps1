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

        #region Lang
        "ar" {SetLangusege -lang "ar" $Button}
        "en" {SetLangusege -lang "en" $Button}
        #endregion Lang 

        "save" {SaveItemsToJson $debug}
        "load" {LoadJson $Button}

        #region Device Managment
        "deviceManager" {Start-Process devmgmt.msc $debug}
        "appsfeatures" {Start-Process ms-settings:appsfeatures $debug}
        "sysinfo" {Start-Process msinfo32.exe; dxdiag.exe; $debug}
        "poweroption" {Start-Process powercfg.cpl $debug}
        "services" {Start-Process services.msc $debug}
        "network" {Start-Process ncpa.cpl $debug}
        "taskmgr" {Start-Process taskmgr.exe $debug}
        "diskmgmt" {Start-Process diskmgmt.msc $debug}
        #endregion Managment

        #region Theme
            "Dark" { Switch-ToDarkMode $debug }
            "Light" { Switch-ToLightMode $debug }
            "systheme" {SwitchToSystem $Button}
        #endregion Menu items

        #region Music
            "moff" { MuteMusic $debug }
            "mon" { Unmute $debug }
        #endregion Music

        #region Mirror Links
        "unhook" { Start-Process ("https://unhook.app/") $debug}
        "uBlock" { Start-Process ("https://ublockorigin.com/") $debug}
        "mas" {Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts") $debug}
        "idm" { Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script") $debug}
        "neat" { Start-Process ("https://addons.mozilla.org/en-US/firefox/addon/neatdownloadmanager-extension/")  $debug }
        #endregion Mirror Links

        "ittshortcut" { ITTShortcut $debug }
        "dev" { About $Button}

        #===========================================================================
        #endregion Menu items
        #===========================================================================
    }
}