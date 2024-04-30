
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

$sync["window"].ShowDialog() | out-null
