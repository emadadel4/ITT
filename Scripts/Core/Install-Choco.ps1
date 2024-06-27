function WriteAText {
    param (
        $message,
        $color
    )

Write-Host "+==============================================================================+";
Write-Host "|                                                                              |";
Write-Host "|                                                                              |";
Write-Host "|   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |";
Write-Host "|  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |";
Write-Host "|   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |";
Write-Host "|   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |";
Write-Host "|  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |";
Write-Host "|                                                                              |";
Write-Host "|                                                                              |";
Write-Host "+==============================================================================+";
Write-Host " `n` $message"
Write-Host "`n` IT (Install and Tweaks Tools) is open source, You can contribute to improving the tool."
Write-Host " If you have trouble installing a program, report the problem on feedback links"
Write-Host " https://github.com/emadadel4/ITT/issues"
Write-Host " https://t.me/emadadel4"
}
function Startup {
    Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    Get-PCInfo 
}