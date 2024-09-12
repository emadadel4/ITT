function Message {

    <#
    .EXAMPLE Usge
        Message -key "Welcome"
    #>
    
    param($key)

    $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).$($key)
    $msg = "$localizedMessageTemplate"
    [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
}