function UpdateUI {
    <#

    .Example
        #UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "downloading" -TextIcon "installIcon" -Icon "  " -Width "150"
        
    #>

    param(
        [string]$Button,
        [string]$ButtonText,
        [string]$Icon,
        [string]$Content,
        [string]$TextIcon,
        [string]$Width = "100"
    )

    $applyBtn = $itt.database.locales.Controls.$($itt.Language).$Content

    $itt['window'].Dispatcher.Invoke([Action]{

        # Button and Button Text
        $itt.$ButtonText.Text = "$applyBtn"
        $itt.$Button.Width = $Width

        # Textblock as Icon
        $itt.$icon.Text = $TextIcon
    })
}