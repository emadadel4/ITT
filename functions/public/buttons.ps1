#region Buttons Events
function Buttons {

    <#
    .SYNOPSIS
        Invokes the function associated with the clicked button
    .PARAMETER Button
        The name of the button that was clicked
    #>
    Param ([string]$Button)

    # Use this to get the name of the button
    #[System.Windows.MessageBox]::Show("$Button","Chris Titus Tech's Windows Utility","OK","Info")

    Switch -Wildcard ($Button){

        "install-btn" {Invoke-Install}
    }
}
#endregion

