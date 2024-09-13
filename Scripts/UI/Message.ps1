function Message {

  <#
        .SYNOPSIS
            Displays a localized message box to the user with a specified icon.

        .DESCRIPTION
            The `Message` function shows a message box with a localized message based on the provided key and icon type.
            It retrieves the message text from a localization database and displays it using the Windows MessageBox class.
            The icon type determines the visual representation of the message box, which can be "Warning" or "Question".

        .PARAMETER key
            The key used to retrieve the localized message from the `itt.database.locales.Controls` object.
            This key should correspond to a valid entry in the localization database for the current language.

        .PARAMETER icon
            The type of icon to be displayed in the message box. Valid values are:
            - "Warning" for a warning icon
            - "Question" for a question icon

        .EXAMPLE
            Message -key "Welcome" -icon "Warning"
            Displays a message box with the message associated with the "Welcome" key and a warning icon.

        .EXAMPLE
            Message -key "ConfirmAction" -icon "Question"
            Displays a message box with the message associated with the "ConfirmAction" key and a question icon.

        .NOTES
            Ensure that the `itt.database.locales.Controls` object is properly populated with localization data and that the specified keys exist for the current language.

    #>
    
    param($key,$icon)

    $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).$($key)
    $msg = "$localizedMessageTemplate"
    [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::$icon)
}