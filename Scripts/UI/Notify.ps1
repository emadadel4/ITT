function Notify {
    param(
        [string]$title,
        [string]$msg,
        [string]$icon,
        [Int32]$time
    )

    $notification = New-Object System.Windows.Forms.NotifyIcon
    $notification.Icon = [System.Drawing.SystemIcons]::Information
    $notification.BalloonTipIcon = $icon
    $notification.BalloonTipText = $msg
    $notification.BalloonTipTitle = $title
    $notification.Visible = $true

    $notification.ShowBalloonTip($time)  # Display for specified time

    # Clean up resources
    $notification.Dispose()
}