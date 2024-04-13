#===========================================================================
# Start functions
#===========================================================================
function about{

    $authorInfo = @"
        Developer : $($sync.author)
        GitHub    : $($sync.github)
        Telgram   : $($sync.telgram)
        Website   : $($sync.website)
        Version   : $($sync.version)
"@

    Show-CustomDialog -Message $authorInfo -Width 400 
}