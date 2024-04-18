#===========================================================================
# Start functions
#===========================================================================
function About{

    $authorInfo = @"
        Author   : $($sync.author)
        GitHub   : $($sync.github)
        Website  : $($sync.website)
        Version  : $($sync.version)
"@

    Show-CustomDialog -Message $authorInfo -Width 400 
}

