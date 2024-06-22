function Invoke-Button {
    Param ([string]$action)

    # Helper function for debugging
    function Debug-Message($message) {
        #Write-Host "Debug: $message"
    }

    # Switch block to handle different actions
    Switch -Wildcard ($action) {

        "installBtn" {
            Invoke-Install 
            Debug-Message $action
        }
        "applyBtn" {
            Invoke-ApplyTweaks
            Debug-Message $action
        }
        "taps" {
            ChangeTap $action
        }
        "category" {
            FilterByCat($sync.category.SelectedItem.Content)
            Debug-Message $action
        }
        "searchInput" {
            Search
            $sync['window'].FindName('category').SelectedIndex = 0
            Debug-Message $action
        }

        # Menu items
        "ar" {
            Set-Langusege -lang "ar"
            Debug-Message $action
        }
        "en" {
            Set-Langusege -lang "en"
            Debug-Message $action
        }
        "save" {
            SaveItemsToJson
            Debug-Message $action
        }
        "load" {
            LoadJson
            Debug-Message $action
        }

        # Device Management
        "deviceManager" {
            Start-Process devmgmt.msc 
            Debug-Message $action
        }
        "appsfeatures" {
            Start-Process appwiz.cpl 
            Debug-Message $action
        }
        "sysinfo" {
            Start-Process msinfo32.exe
            Start-Process dxdiag.exe 
            Debug-Message $action
        }
        "poweroption" {
            Start-Process powercfg.cpl 
            Debug-Message $action
        }
        "services" {
            Start-Process services.msc 
            Debug-Message $action
        }
        "network" {
            Start-Process ncpa.cpl
            Debug-Message $action
        }
        "taskmgr" {
            Start-Process taskmgr.exe 
            Debug-Message $action
        }
        "diskmgmt" {
            Start-Process diskmgmt.msc
            Debug-Message $action
        }

        # Theme
        "Dark" {
            Switch-ToDarkMode
            Debug-Message $action
        }
        "Light" {
            Switch-ToLightMode
            Debug-Message $action
        }
        "systheme" {
            SwitchToSystem 
            Debug-Message $action
        }

        # Music
        "moff" {
            MuteMusic
            Debug-Message $action
        }
        "mon" {
            UnmuteMusic
            Debug-Message $action
        }

        # Mirror Links
        "unhook" {
            Start-Process "https://unhook.app/" 
            Debug-Message $action
        }
        "uBlock" {
            Start-Process "https://ublockorigin.com/" 
            Debug-Message $action
        }
        "mas" {
            Start-Process "https://github.com/massgravel/Microsoft-Activation-Scripts"
            Debug-Message $action
        }
        "idm" {
            Start-Process "https://github.com/WindowsAddict/IDM-Activation-Script"
            Debug-Message $action
        }
        "neat" {
            Start-Process "https://addons.mozilla.org/en-US/firefox/addon/neatdownloadmanager-extension/" 
            Debug-Message $action
        }

        # Other actions
        "ittshortcut" {
            ITTShortcut $action
            Debug-Message $action
        }
        "dev" {
            About
            Debug-Message $action
        }

        Default {
            Write-Host "Unknown action: $action"
        }
    }
}