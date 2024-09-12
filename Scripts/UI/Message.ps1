function Message {

    <#
    Icons list
    Warning
    Question
    
    .EXAMPLE Usge
        Message -key "Welcome" -icon "Warning"
    #>
    
    param($key,$icon)

    $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).$($key)
    $msg = "$localizedMessageTemplate"
    [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::$icon)
}