function About{

    $authorInfo = @"
    Developer : $($sync.developer)
    Telegram  : $($sync.telegram)
    GitHub    : $($sync.github)
    Website   : $($sync.website)
    Version   : $($sync.version)
"@

    Show-CustomDialog -Message $authorInfo -Width 400 
}
