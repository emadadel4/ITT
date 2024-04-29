
CheckChoco
GetQuotes *> $null
PlayMusic *> $null

#region check currnet Theme
if ($sync.theme -eq "Dark") {
  Switch-ToDarkMode
  $sync.isDarkMode = "Dark"
} 
else 
{
  Switch-ToLightMode
  $sync.isDarkMode = "Light"
}
#endregion

#region Buttons
$sync['window'].FindName('taps').add_SelectionChanged({ChangeTap})
$sync['window'].FindName('installBtn').add_click({Invoke-Install})
$sync['window'].FindName('applyBtn').add_click({ApplyTweaks})
$sync['window'].FindName('searchInput').add_TextChanged({Search})
$sync['window'].FindName('searchInput').add_GotFocus({ClearFilter})
$sync['window'].FindName('about').add_MouseLeftButtonDown({About})
$sync['window'].FindName('themeText').add_click({ToggleTheme})
$sync['window'].FindName('cat').add_SelectionChanged({FilterByCat( $sync['window'].FindName('cat').SelectedItem.Content)})
#endregion Buttons

#region Computer Managment tools
$sync['window'].FindName('deviceManager').add_click({Start-Process devmgmt.msc})
$sync['window'].FindName('services').add_click({Start-Process services.msc})
$sync['window'].FindName('network').add_click({Start-Process ncpa.cpl})
$sync['window'].FindName('sysinfo').add_click({Start-Process msinfo32.exe; dxdiag.exe})
$sync['window'].FindName('poweroption').add_click({Start-Process powercfg.cpl})
$sync['window'].FindName('appsfeatures').add_click({start-Process ms-settings:appsfeatures})
$sync['window'].FindName('taskmgr').add_click({Start-Process taskmgr.exe})
$sync['window'].FindName('diskmgmt').add_click({Start-Process diskmgmt.msc})
#endregion Computer Managment tools

#region Third-Party
$sync['window'].FindName('mas').add_click({
  Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts")
})

$sync['window'].FindName('idm').add_click({

Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script")
})
#endregion Third-Party

#region About

$sync['window'].FindName('ittlink').add_click({

  Start-Process ("https://github.com/emadadel4/ITT")

})

$sync['window'].FindName('eprojectslink').add_click({

  Start-Process ("https://eprojects.orgfree.com/")

})

$sync['window'].FindName('teleegramprofile').add_click({

  Start-Process ("https://t.me/emadadel4")

})

#endregion About

#region Preferences
$sync['window'].FindName('load').add_click({LoadJson})
$sync['window'].FindName('save').add_click({
  
  ClearFilter
  SaveItemsToJson

})
#endregion Preferences

$sync['window'].add_Closing({
  Write-Host "Bye see you soon :)"
  StopAllRunspace
  StopMusic
})


$sync["window"].ShowDialog() | out-null
