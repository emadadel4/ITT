function UpdateUI {

    <#
    .Example
        UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "downloading" -TextIcon "installIcon" -Icon "  " -Width "150"
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
        $itt.$Button.Width = $Width
        $itt.$ButtonText.Text = "$applyBtn"

        # Textblock as Icon
        $itt.$TextIcon.Text = "$icon"
    })
}