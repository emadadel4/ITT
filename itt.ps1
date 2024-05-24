######################################################################################
#                                                                                    #
#                                                                                    #
#      ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _          #
#     |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |         #
#      | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |         #
#      | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___      #
#     |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|     #
#                                                                                    #
#                          https://github.com/emadadel4                              #
#                          https://t.me/emadadel4                                    #
#                                                                                    #
#                       Automatically generated from build                           # 
#                                                                                    #
#                            #Stand With Palestine                                   #
#                                                                                    #
######################################################################################

#===========================================================================
#region Begin Start
#===========================================================================

# Load DLLs
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName PresentationFramework.Aero
Add-Type -AssemblyName System.Windows.Forms

# Variable to sync between runspaces
$sync = [Hashtable]::Synchronized(@{})
$sync.PSScriptRoot = $PSScriptRoot
$sync.version = "24-05-2024 (08:53 AM)"
$sync.github =   "https://github.com/emadadel4"
$sync.telegram = "https://t.me/emadadel4"
$sync.website =  "https://eprojects.orgfree.com"
$sync.developer =   "Emad Adel @emadadel4"
$sync.registryPath = "HKCU:\Software\ITTEmadadel"
$sync.firebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/"
$sync.database = @{}
$sync.ProcessRunning = $false
$sync.isDarkMode
$sync.Langusege = "en"
$sync.mediaPlayer = New-Object -ComObject WMPlayer.OCX
$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$administrator=[System.Security.Principal.WindowsBuiltInRole]::Administrator
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";

if ($principal.IsInRole($administrator))
{
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Admin)"
    #Clear-Host
}
else
{
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    [System.Diagnostics.Process]::Start($newProcess);
    break
}

#===========================================================================
#endregion End Start
#===========================================================================

#===========================================================================
#region Begin Database /APPS/TWEEAKS/Quotes/OST
#===========================================================================

$sync.database.Applications = '[
  {
    "Name": "Thorium SSE3",
    "Description": "A web browser designed for smooth and secure browsing experiences.",
    "winget": "none",
    "choco": "thorium --params /SSE3",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Thorium AVX",
    "Description": "A web browser designed for smooth and secure browsing experiences.",
    "winget": "none",
    "choco": "thorium --params /AVX",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Firefox",
    "Description": "A widely-used open-source web browser known for its speed, privacy features, and customization options.",
    "winget": "none",
    "choco": "firefox",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Microsoft Edge",
    "Description": "Microsoft''s web browser built for fast and secure internet surfing, integrating seamlessly with Windows ecosystem.",
    "winget": "none",
    "choco": "microsoft-edge",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Google Chrome",
    "Description": "A popular web browser known for its speed, simplicity, and vast ecosystem of extensions.",
    "winget": "none",
    "choco": "googlechrome",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Chromium",
    "Description": "An open-source web browser project that serves as the foundation for many browsers, including Google Chrome.",
    "winget": "none",
    "choco": "chromium",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Brave",
    "Description": "A privacy-focused web browser that blocks ads and trackers, offering faster and safer browsing experiences.",
    "winget": "none",
    "choco": "brave",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Tor Browser",
    "Description": "A web browser that prioritizes user privacy by routing internet traffic through a global network of servers, enabling anonymous browsing.",
    "winget": "none",
    "choco": "tor-browser",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Opera",
    "Description": "The Opera web browser makes the Web fast and fun, giving you a better web browser experience on any computer.",
    "winget": "none",
    "choco": "opera",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Internet Download Manager",
    "Description": "A popular download manager tool that accelerates downloads and allows users to organize and schedule downloads efficiently.",
    "winget": "none",
    "choco": "internet-download-manager",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Neat Download Manager",
    "Description": "Introducing Neat Download Manager, the powerful neatdownload manager that supports macOS, Windows 7 or later, and Windows 11. With lightning-fast downloads, smart file filter management, and the best features, start downloading today and see why Neat Download Manager is the perfect tool for you.r",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "true",
        "url": "https://www.neatdownloadmanager.com/file/NeatDM_setup.exe",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "$env:temp"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "JDownloader",
    "Description": "JDownloader is an internet download manager.",
    "winget": "none",
    "choco": "jdownloader",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "K-Lite Mega Codec Full Pack",
    "Description": "Comprehensive collection of audio and video codecs, filters, and tools, enabling playback of various media formats.",
    "winget": "none",
    "choco": "k-litecodecpackfull",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "PotPlayer",
    "Description": "A multimedia player with a sleek interface and advanced features, supporting a wide range of audio and video formats.",
    "winget": "none",
    "choco": "potplayer",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "VLC",
    "Description": "A versatile media player capable of playing almost any multimedia file format, with support for various streaming protocols.",
    "winget": "none",
    "choco": "vlc.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Kodi",
    "Description": "A powerful open-source media center software that allows users to organize and stream their media collections.",
    "winget": "none",
    "choco": "kodi",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "Jellyfin",
    "Description": "An open-source media server software that enables users to stream their media libraries across devices, providing a self-hosted alternative to commercial services.",
    "winget": "none",
    "choco": "jellyfin",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "Winamp",
    "Description": "A classic media player known for its customizable interface and extensive plugin support, providing a nostalgic music playback experience.",
    "winget": "none",
    "choco": "winamp",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "Aimp",
    "Description": "A lightweight and feature-rich audio player with support for various audio formats and customizable interface themes.",
    "winget": "none",
    "choco": "aimp",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "Spotify",
    "Description": "Spotify is a new way to listen to music.",
    "winget": "none",
    "choco": "spotify",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "FastStone Image Viewer",
    "Description": "FastStone Image Viewer is a fast, stable, user-friendly image browser, converter and editor ",
    "winget": "none",
    "choco": "fsviewer",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "Name": "OpenOffice",
    "Description": "An open-source office productivity suite offering word processing, spreadsheet, presentation, and other office tools, compatible with Microsoft Office formats.",
    "winget": "none",
    "choco": "openoffice",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "Name": "FoxitReader",
    "Description": "A lightweight and feature-rich PDF reader with annotation, form filling, and document signing capabilities.",
    "winget": "none",
    "choco": "foxitreader",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "Name": "LibreOffice",
    "Description": "A powerful open-source office suite providing word processing, spreadsheet, presentation, and other office tools, compatible with Microsoft Office formats.",
    "winget": "none",
    "choco": "libreoffice-fresh",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Documents",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "SumatraPDF",
    "Description": "A lightweight and fast PDF reader with minimalistic design and focus on simplicity and speed.",
    "winget": "none",
    "choco": "sumatrapdf.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "Name": "WinRAR",
    "Description": "A popular file compression and archiving utility that supports various archive formats and offers advanced features such as encryption and self-extracting archives.",
    "winget": "none",
    "choco": "winrar",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Compression",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "7-Zip",
    "Description": "An open-source file archiver with a high compression ratio, supporting various archive formats and providing a powerful command-line interface.",
    "winget": "none",
    "choco": "7zip",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Compression",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "PeaZip",
    "Description": " PeaZip is a free cross-platform file archiver.",
    "winget": "none",
    "choco": "peazip",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Compression",
    "check": "false"
  },
  {
    "Name": "Telegram Desktop",
    "Description": "A cross-platform messaging app with a focus on speed and security, offering end-to-end encryption and a wide range of features such as group chats, file sharing, and stickers.",
    "winget": "none",
    "choco": "telegram",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Signal",
    "Description": "Fast, simple, secure. Privacy that fits in your pocket.",
    "winget": "none",
    "choco": "signal",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "Meta Messenger",
    "Description": "A messaging app that allows users to connect with friends and family through text messages, voice calls, and video calls, offering various multimedia sharing features.",
    "winget": "none",
    "choco": "messenger",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "Zoom",
    "Description": "A video conferencing app that facilitates online meetings, webinars, and virtual events, allowing participants to interact through video, audio, and chat.",
    "winget": "none",
    "choco": "zoom",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "Microsoft Teams",
    "Description": "A collaboration platform that combines workplace chat, video meetings, file storage, and application integration, enhancing teamwork and productivity within organizations.",
    "winget": "none",
    "choco": "microsoft-teams.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "Discord",
    "Description": "A VoIP application and digital distribution platform designed for creating communities and connecting gamers, providing text, voice, and video communication features.",
    "winget": "none",
    "choco": "discord",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "TeamViewer",
    "Description": "A remote access and support software that enables users to remotely control computers, transfer files, and collaborate online, facilitating remote work and IT support.",
    "winget": "none",
    "choco": "teamviewer",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "Name": "GIMP",
    "Description": "A free and open-source raster graphics editor used for image retouching and editing, drawing and painting, and converting between different image formats.",
    "winget": "none",
    "choco": "gimp",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "Name": "DirectX",
    "Description": "DirectX is a collection of APIs for handling tasks related to games and videos.",
    "winget": "none",
    "choco": "directx",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ Runtime - all versions",
    "Description": "Microsoft Visual C++ Redistributable installs run-time components of Visual C++ libraries. These components are required to run C++ applications that are developed using Visual Studio and link dynamically to Visual C++ libraries.",
    "winget": "none",
    "choco": "vcredist-all",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2005 (x86) Redistributable",
    "Description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2005, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2005",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2005 (x64) Redistributable",
    "Description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2005, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2005",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2008 (x86) Redistributable",
    "Description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2008, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2008",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2008 (x64) Redistributable",
    "Description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2008, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2008",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2010 (x86) Redistributable",
    "Description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2010, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2010",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2010 (x64) Redistributable",
    "Description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2010, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2010",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2012 (x86) Redistributable",
    "Description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2012, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2012",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2012 (x64) Redistributable",
    "Description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2012, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2012",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2013 (x86) Redistributable",
    "Description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2013, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2013",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2013 (x64) Redistributable",
    "Description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2013, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2013",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2015-2022 (x64) Redistributable",
    "Description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2015-2022, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2015",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Microsoft Visual C++ 2015-2022  (x86) Redistributable",
    "Description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2015-2022, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2015",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "NET Framework All Versions",
    "Description": "A comprehensive and consistent programming model for building applications that have visually stunning user experiences, seamless and secure communication, and the ability to model a range of business processes.",
    "winget": "none",
    "choco": "dotnet-all",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "AMD Ryzen Chipset Drivers",
    "Description": "Supports: AMD Ryzen Threadripper PRO Processor, AMD Ryzen 8000/7040/7000 Series Desktop & Mobile Processors, AMD Ryzen 5000/3rd Gen/2nd Gen Desktop & Threadripper Processors, AMD Ryzen Desktop Processor with Radeon Graphics & Mobile Processor with Radeon Graphics, 7th-Gen AMD A-Series Processors, AMD X670E/X670/B650E/B650/B350/A320/X370/X399/B450/X470/X570/B550/A520/A620/TRX40/TRX50/WRX80/WRX90 Chipsets",
    "winget": "none",
    "choco": "amd-ryzen-chipset",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "NVidia Display Driver",
    "Description": "The software component that allows the operating system and installed software to communicate with and control the NVIDIA graphics processing unit (GPU).",
    "winget": "none",
    "choco": "nvidia-display-driver",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "NVIDIA GeForce Experience",
    "Description": "A cloud-based gaming service provided by NVIDIA that allows users to play video games on supported devices via a remote gaming PC hosted on NVIDIA''s servers.",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Msi Afterburner",
    "Description": "MSI Afterburner is the ultimate graphics card utility, co-developed by MSI and RivaTuner teams.",
    "winget": "none",
    "choco": "msiafterburner",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "NVIDIA PhysX",
    "Description": "A physics processing unit (PPU) software development kit (SDK) offered by NVIDIA for real-time physics simulations in video games.",
    "winget": "none",
    "choco": "physx.legacy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Steam",
    "Description": "A digital distribution platform developed by Valve Corporation for purchasing and playing video games.",
    "winget": "none",
    "choco": "steam",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Ubisoft Connect",
    "Description": "A digital distribution, digital rights management, multiplayer, and communications service developed by Ubisoft, providing access to Ubisoft''s games, rewards, and social features.",
    "winget": "none",
    "choco": "ubisoft-connect",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Origin",
    "Description": " Game store launcher",
    "winget": "none",
    "choco": "origin",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Rockstar Games Launcher",
    "Description": "Download and play the latest Rockstar Games PC titles",
    "winget": "none",
    "choco": "rockstar-launcher",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "GameSave Manager",
    "Description": "A utility tool that allows users to backup, restore, and transfer their game saves between different gaming platforms and directories.",
    "winget": "none",
    "choco": "gamesavemanager",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "StreamlabsOBS",
    "Description": "A free and open-source streaming software built on top of OBS Studio with additional features tailored for streamers, such as built-in alerts, overlays, and chat integration.",
    "winget": "none",
    "choco": "streamlabs-obs",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "OBS Studio",
    "Description": "A free and open-source software for video recording and live streaming. It offers high performance real-time video/audio capturing and mixing.",
    "winget": "none",
    "choco": "obs-studio.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Logitech Gaming Software",
    "Description": "Logitech Gaming Software lets you customize Logitech G gaming mice, keyboards, headsets and select wheels.",
    "winget": "none",
    "choco": "logitechgaming",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Lively Wallpaper",
    "Description": "A software that allows users to set animated and interactive wallpapers on their Windows desktop, providing various customization options.",
    "winget": "none",
    "choco": "lively",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Playnite",
    "Description": "Open source video game library manager and launcher with support for 3rd party libraries like Steam, GOG, Origin, Battle.net and Uplay.",
    "winget": "none",
    "choco": "playnite",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Driver Easy",
    "Description": "A driver update tool that automatically detects, downloads, and installs device drivers for the user''s computer hardware.",
    "winget": "none",
    "choco": "drivereasyfree",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Intel Graphics Windows DCH",
    "Description": "Intel Graphics Driver for Windows 10.",
    "winget": "none",
    "choco": "intel-graphics-driver",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Intel Driver Support Assistant",
    "Description": "Intel Driver & Support Assistant enables you to scan computing devices for the latest drivers available from Intel.",
    "winget": "none",
    "choco": "intel-dsa",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Intel Network Adapter",
    "Description": "Intel Network Adapter Drivers for Windows 10.",
    "winget": "none",
    "choco": "intel-network-drivers-win10",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Snappy Driver Installer",
    "Description": "A free and open-source tool for updating and installing device drivers on Windows, offering offline driver updates and wide hardware support.",
    "winget": "none",
    "choco": "sdio",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Driver booster",
    "Description": "Scans and identifies outdated drivers automatically, and downloads and installs the right update for you with just ONE click.",
    "winget": "none",
    "choco": "driverbooster",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Driver Genius",
    "Description": "Professional driver management tool and hardware diagnostics.",
    "winget": "none",
    "choco": "drivergenius",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Display Driver Uninstaller",
    "Description": "Utility to completely remove system drivers",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Driver Store Explorer",
    "Description": " Windows driver store utility.",
    "winget": "none",
    "choco": "rapr",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "1Password",
    "Description": "A password manager that securely stores login credentials, credit card information, and other sensitive data in an encrypted vault, accessible with a single master password.",
    "winget": "none",
    "choco": "1password",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "MiniTool Partition Wizard",
    "Description": "A disk partition management tool that allows users to create, resize, move, merge, split, copy, and convert partitions on their hard drives or storage devices.",
    "winget": "none",
    "choco": "partitionwizard",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "AOMEI Partition Assistant Standard",
    "Description": "AOMEI Partition Assistant Standard allows you to realize disk upgrade/replacement, partition style conversion, OS migration and other disk managements without any difficulties.",
    "winget": "none",
    "choco": "partition-assistant-standard",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "AOMEI Backupper",
    "Description": "A backup and recovery software that enables users to create system backups, disk backups, partition backups, and file backups to protect data against system failures and data loss.",
    "winget": "none",
    "choco": "backupper-standard",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Recuva recover",
    "Description": "A data recovery software that helps users retrieve accidentally deleted files, including photos, documents, videos, and more, from various storage devices such as hard drives, USB drives, and memory cards.",
    "winget": "none",
    "choco": "recuva",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "CCleaner",
    "Description": "A system optimization, privacy, and cleaning tool that helps users remove unused files, clean up temporary files, and optimize their Windows PCs for better performance.",
    "winget": "none",
    "choco": "ccleaner",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "BCUninstaller",
    "Description": "A powerful uninstaller tool for Windows that allows users to remove unwanted programs, plugins, and Windows Store apps, along with leftover files and registry entries.",
    "winget": "none",
    "choco": "bulk-crap-uninstaller",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Easy Context Menu",
    "Description": "To install Easy Context Menu, run the following command from the command line or from PowerShell:",
    "winget": "none",
    "choco": "ecm",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "HWiNFO",
    "Description": "A hardware information and diagnostic tool that provides detailed information about the hardware components of a computer system, including sensors, temperature, voltage, and more.",
    "winget": "none",
    "choco": "hwinfo.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Speccy",
    "Description": "A system information tool that provides detailed information about the hardware and operating system of a computer, including CPU, RAM, motherboard, graphics card, and storage devices.",
    "winget": "none",
    "choco": "speccy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "FurMark",
    "Description": "A graphics card stress testing and benchmarking utility that helps users test the stability, cooling, and performance of their GPU by rendering a highly intensive 3D graphics scene.",
    "winget": "none",
    "choco": "furmark",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Hard Disk Sentinel",
    "Description": "A hard disk monitoring and analysis software that helps users monitor the health, performance, and temperature of their hard drives, SSDs, and other storage devices.",
    "winget": "none",
    "choco": "hdsentinel",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "CPUID CPU-Z",
    "Description": "A system monitoring utility that provides detailed information about the CPU, motherboard, memory, and other hardware components of a computer system.",
    "winget": "none",
    "choco": "cpu-z",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Mem Reduct",
    "Description": "Lightweight real-time memory management application to monitor and clean system memory on your computer.",
    "winget": "none",
    "choco": "memreduct",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "HandBrake",
    "Description": "A free and open-source video transcoder tool that converts video files from one format to another, supporting a wide range of input and output formats.",
    "winget": "none",
    "choco": "handbrake.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Rufus",
    "Description": "A utility tool for creating bootable USB drives from ISO images, helping users to install or run operating systems, such as Windows, Linux, or other utilities.",
    "winget": "none",
    "choco": "rufus",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "ImgBurn",
    "Description": "Lightweight CD / DVD burning application ",
    "winget": "none",
    "choco": "imgburn",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Virtual CloneDrive",
    "Description": "A free software that allows users to mount disc images as virtual drives, enabling them to access the content of ISO, BIN, and CCD files without the need for physical discs.",
    "winget": "none",
    "choco": "virtualclonedrive",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Ultra ISO",
    "Description": "A powerful ISO image management tool that enables users to create, edit, extract, and burn ISO files, providing a comprehensive solution for managing disk image files.",
    "winget": "none",
    "choco": "ultraiso",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Ventoy",
    "Description": "An open-source tool for creating bootable USB drives with multiple ISO files, allowing users to boot various operating systems or utilities directly from a single USB drive.",
    "winget": "none",
    "choco": "ventoy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "iVentoy",
    "Description": "With iVentoy you can boot and install OS on multiple machines at the same time through the network.",
    "winget": "none",
    "choco": "iventoy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "AutoHotkey",
    "Description": "A scripting language for automating repetitive tasks and creating macros on Windows, allowing users to customize keyboard shortcuts, remap keys, and automate mouse actions.",
    "winget": "none",
    "choco": "autohotkey",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Rainmeter",
    "Description": "A customizable desktop customization tool that displays customizable skins, widgets, and applets on the Windows desktop, providing users with real-time system monitoring and information.",
    "winget": "none",
    "choco": "rainmeter",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "FxSound",
    "Description": "An audio enhancer software that improves the sound quality of music, videos, and games on Windows PCs by providing advanced audio processing and customization options.",
    "winget": "none",
    "choco": "fxsound",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Vysor",
    "Description": "A screen mirroring and remote control software that enables users to view and control Android devices from Windows PCs, allowing for easy screen sharing, app testing, and troubleshooting.",
    "winget": "none",
    "choco": "vysor",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Unified Remote",
    "Description": "A remote control app that turns smartphones into universal remote controls for Windows, macOS, and Linux computers, allowing users to control media playback, presentations, and more.",
    "winget": "none",
    "choco": "unifiedremote",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "AnyDesk",
    "Description": "A remote desktop software that allows users to access and control Windows, macOS, Linux, Android, and iOS devices from anywhere, providing secure and reliable remote access.",
    "winget": "none",
    "choco": "anydesk",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "Name": "Airdroid",
    "Description": "AirDroid is a free and fast Android device manager app that allows you to access Android phone/tablet from computer remotely and securely. Manage SMS, files, photos and videos, WhatsApp, Line, WeChat and more on computer.",
    "winget": "none",
    "choco": "airdroid",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "Name": "UltraViewer",
    "Description": "Remote control to support your clients / partners from everywhere.",
    "winget": "none",
    "choco": "ultraviewer",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "Name": "Wireless Network Watcher Portable",
    "Description": "Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network.",
    "winget": "none",
    "choco": "wnetwatcher.portable",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "WifiInfoView",
    "Description": "Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network.",
    "winget": "none",
    "choco": "wifiinfoview",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "qBittorrent",
    "Description": "A free and open-source BitTorrent client for downloading and uploading files via the BitTorrent protocol, providing users with a lightweight and feature-rich torrenting experience.",
    "winget": "none",
    "choco": "qbittorrent",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "File Sharing",
    "suggestion": "true",
    "check": "false"
  },
  {
    "Name": "Google Earth Pro",
    "Description": "Google Earth Pro on desktop is free for users with advanced feature needs. Import and export GIS data, and go back in time with historical imagery.",
    "winget": "none",
    "choco": "googleearthpro",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "Name": "XAMPP",
    "Description": "XAMPP is a free and open-source cross-platform web server solution stack package developed by Apache Friends, consisting mainly of the Apache HTTP Server, MariaDB database, and interpreters for scripts written in the PHP and Perl programming languages.",
    "winget": "none",
    "choco": "xampp-81",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Visual Studio Professional 2022",
    "Description": "Visual Studio Professional 2022 is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs, websites, web apps, web services, and mobile apps.",
    "winget": "none",
    "choco": "visualstudio2022professional",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Visual Studio Community 2022",
    "Description": "Visual Studio Community 2022 is a free, fully-featured, and extensible IDE for individual developers, open source projects, academic research, education, and small professional teams.",
    "winget": "none",
    "choco": "visualstudio2022community",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Unity Hub",
    "Description": "Unity is a cross-platform game creation system developed by Unity Technologies and used to develop video games for PC, consoles, mobile",
    "winget": "none",
    "choco": "unity-hub",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Godot Engine",
    "Description": "Godot is a feature-packed, cross-platform game engine for creating 2D and 3D games. It provides a comprehensive set of tools and features to develop games efficiently and quickly.",
    "winget": "none",
    "choco": "godot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Unity3D Engine",
    "Description": "Unity is a cross-platform game creation system developed by Unity Technologies and used to develop video games for PC, consoles, mobile",
    "winget": "none",
    "choco": "unity",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Blender",
    "Description": "Blender is a free and open-source professional-grade 3D computer graphics and video compositing program.",
    "winget": "none",
    "choco": "blender",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Visual Studio Code",
    "Description": "Visual Studio Code is a free source-code editor developed by Microsoft for Windows, Linux, and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.",
    "winget": "none",
    "choco": "vscode",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Vim",
    "Description": "Vim is an advanced text editor that seeks to provide the power of the de-facto Unix editor ''Vi'', with a more complete feature set. It''s us... Keep Reading ",
    "winget": "none",
    "choco": "vim",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Sublime Text 4",
    "Description": "Sublime Text 4 - The sophisticated text editor for code, markup and prose. ",
    "winget": "none",
    "choco": "sublimetext4",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Atom",
    "Description": "Atom is a text editor that''s modern, approachable, yet hackable to the core—a tool you can customize to do anything but also use productively without ever touching a config file.",
    "winget": "none",
    "choco": "atom",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "InnoSetup",
    "Description": "Inno Setup is a free installer for Windows programs. First introduced in 1997, Inno Setup today rivals and even surpasses many commercial installers in feature set and stability.",
    "winget": "none",
    "choco": "innosetup",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "PyCharm Community Edition",
    "Description": "PyCharm Community Edition is a free and open-source IDE for Python development. It provides smart code completion, code inspections, on-the-fly error highlighting, and quick-fixes.",
    "winget": "none",
    "choco": "pycharm-community",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "PyCharm Professional Edition",
    "Description": "PyCharm Professional Edition is a powerful IDE for professional Python development. It includes advanced features such as database tools, web development support, and scientific tools integration.",
    "winget": "none",
    "choco": "pycharm",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Jetbrains Rider",
    "Description": "Rider is a cross-platform .NET IDE developed by JetBrains. It supports C#, VB.NET, F#, ASP.NET, JavaScript, TypeScript, HTML, CSS, and SQL languages and frameworks.",
    "winget": "none",
    "choco": "jetbrains-rider",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Node.js LTS",
    "Description": "Node.js is a JavaScript runtime built on Chrome''s V8 JavaScript engine. LTS (Long Term Support) releases are supported for an extended period and provide stability for production environments.",
    "winget": "none",
    "choco": "nodejs-lts",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Electrum-LTS",
    "Description": "Electrum is a lightweight Bitcoin wallet focused on speed and simplicity, with support for hardware wallets and multisig functionality. LTS (Long Term Support) releases provide stability and security updates for an extended period.",
    "winget": "none",
    "choco": "electronim",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Hugo",
    "Description": "Hugo is one of the most popular open-source static site generators. With its amazing speed and flexibility, Hugo makes building websites f... Keep Reading ",
    "winget": "none",
    "choco": "hugo",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Notepad++",
    "Description": "Notepad++ is a free source code editor and Notepad replacement that supports several languages. It offers syntax highlighting, code folding, auto-completion, and other features for efficient code editing.",
    "winget": "none",
    "choco": "notepadplusplus",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Windows Terminal",
    "Description": "Windows Terminal is a modern terminal application for users of command-line tools and shells like Command Prompt, PowerShell, and Windows Subsystem for Linux (WSL). It provides multiple tabs, custom themes, and GPU-accelerated text rendering.",
    "winget": "none",
    "choco": "microsoft-windows-terminal",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Powershell core",
    "Description": "PowerShell Core is a cross-platform (Windows, Linux, and macOS) automation and configuration tool/framework that works well with your existing tools and is optimized for dealing with structured data (e.g., JSON, CSV, XML, etc.), REST APIs, and object models.",
    "winget": "none",
    "choco": "powershell-core",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "x64dbg Portable",
    "Description": "An open-source x64/x32 debugger for windows.",
    "winget": "none",
    "choco": "x64dbg.portable",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "dnSpy",
    "Description": "dnSpy is a tool to reverse engineer .NET assemblies. It includes a decompiler, a debugger and an assembly editor (and more) and can be easily extended by writing your own extension. It uses dnlib to read and write assemblies so it can handle obfuscated assemblies (eg. malware) without crashing.",
    "winget": "none",
    "choco": "dnspy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Cheat Engine",
    "Description": "Cheat Engine is an open source tool designed to help you modify single player games.",
    "winget": "none",
    "choco": "cheatengine",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Python",
    "Description": "Python is a popular high-level programming language known for its simplicity and versatility. It is used in various fields such as web development, data science, machine learning, and automation.",
    "winget": "none",
    "choco": "python",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Git",
    "Description": "Git is a free and open-source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.",
    "winget": "none",
    "choco": "git",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "GitHub Desktop",
    "Description": "GitHub Desktop is a seamless way to contribute to projects on GitHub and GitHub Enterprise. It provides an intuitive interface for managing repositories, branching, committing, and merging code changes.",
    "winget": "none",
    "choco": "github-desktop",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Docker Desktop",
    "Description": "Docker Desktop is an easy-to-install application for Windows and macOS that enables developers to build, share, and run containerized applications and microservices locally.",
    "winget": "none",
    "choco": "docker-desktop",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Docker Compose",
    "Description": "Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to use a YAML file to configure your application''s services, networks, and volumes.",
    "winget": "none",
    "choco": "docker-compose",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "PowerToys",
    "Description": "PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. It includes tools like FancyZones for window management, PowerRename for batch renaming files, and more.",
    "winget": "none",
    "choco": "powertoys",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Notion",
    "Description": "The all-in-one workspace for your notes, tasks, wikis, and databases.",
    "winget": "none",
    "choco": "notion",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "FL Studio",
    "Description": "FL Studio is a digital audio workstation (DAW) developed by Image-Line. It allows you to compose, arrange, record, edit, mix, and master professional-quality music.",
    "winget": "none",
    "choco": "ImageLine.FLStudio",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Android Debug Bridge",
    "Description": "Android Debug Bridge (ADB) is a command-line tool that allows you to communicate with an Android device. It is used for various debugging tasks such as installing and debugging apps.",
    "winget": "none",
    "choco": "adb",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Universal ADB Drivers",
    "Description": "Universal ADB Drivers are drivers that provide compatibility with a wide range of Android devices for debugging purposes. They allow you to connect your Android device to a computer and use ADB commands.",
    "winget": "none",
    "choco": "universal-adb-drivers",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Scrcpy",
    "Description": "Scrcpy is a free and open-source tool that allows you to display and control your Android device from a computer. It provides high-performance screen mirroring and supports various input methods.",
    "winget": "none",
    "choco": "scrcpy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "VirtualBox",
    "Description": "VirtualBox is a cross-platform virtualization application. It installs on existing Intel or AMD-based computers, whether they are running Windows, Mac, Linux or Solaris operating systems. It extends the capabilities of your existing computer so that it can run multiple operating systems (inside multiple virtual machines) at the same time.",
    "winget": "none",
    "choco": "virtualbox",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Oh My Posh",
    "Description": " Oh my Posh is a custom prompt engine for any shell that has the ability to adjust the prompt string with a function or variable.",
    "winget": "none",
    "choco": "oh-my-posh",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Malwarebytes",
    "Description": "Multiple layers of malware-crushing tech, including virus protection. Thorough malware and spyware removal. Specialized ransomware protection.",
    "winget": "none",
    "choco": "malwarebytes",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "Name": "Kaspersky Virus Removal Tool",
    "Description": "Designed to remove different types of infections from an infected PC.",
    "winget": "none",
    "choco": "kvrt",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "Name": "Kaspersky Anti-Virus",
    "Description": "Antivirus protection from a range of IT threats and provides the basic tools needed to keep your PC secure.",
    "winget": "none",
    "choco": "kav",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "Name": "Avast Free Antivirus",
    "Description": "Avast Free Antivirus.",
    "winget": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "choco": "avastfreeantivirus",
    "category": "Security",
    "check": "false"
  },
  {
    "Name": "Nerd Fonts - CascadiaCode",
    "Description": "Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs (icons).",
    "winget": "none",
    "choco": "nerd-fonts-cascadiacode",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Java SE Runtime Environment 8.0.411",
    "Description": "Java allows you to play online games, chat with people around the world, calculate your mortgage interest, and view images in 3D, just to name a few. It''s also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing. Please note you now need a Java License from Oracle to use unless installed for Personal Use and Development Use.",
    "winget": "none",
    "choco": "jre8",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Audacity",
    "Description": "Audacity is free, open source, cross-platform software for recording and editing sounds.",
    "winget": "none",
    "choco": "audacity",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "MusicBee",
    "Description": "MusicBee makes it easy to organize, find and play music files on your computer, on portable devices and on the web.",
    "winget": "none",
    "choco": "musicbee",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "FormatFactory",
    "Description": "multifunctional media processing tools",
    "winget": "none",
    "choco": "formatfactory",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "Winaero Tweaker",
    "Description": "Customize the appearance and behavior of the Windows operating system",
    "winget": "none",
    "choco": "winaero-tweaker",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Windows Subsystem for Linux WSL2",
    "Description": "To install Windows Subsystem for Linux 2, run the following command from the command line or from PowerShell:",
    "winget": "none",
    "choco": "wsl2",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Wamp Server 3.3.5",
    "Description": "WampServer is a Windows web development environment. It allows you to create web applications.",
    "winget": "none",
    "choco": "wamp-server",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "MongoDB 7.3.2",
    "Description": "MongoDB stores data using a flexible document data model that is similar to JSON. Documents contain one or more fields, including arrays, binary data and sub-documents. Fields can vary from document to document. This flexibility allows development teams to evolve the data model rapidly as their application requirements change.",
    "winget": "none",
    "choco": "mongodb",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "MPC-BE",
    "Description": "Media Player Classic - BE is a free and open source audio and video player for Windows.",
    "winget": "none",
    "choco": "mpc-be",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "Kdenlive",
    "Description": "A powerful non-linear video editor",
    "winget": "none",
    "choco": "kdenlive",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "TablePlus",
    "Description": "Modern, native, and friendly GUI tool for relational databases: MySQL, PostgreSQL, SQLite, MongoDB, Redis, and more.",
    "winget": "none",
    "choco": "tableplus",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Hosts File Editor",
    "Description": "Hosts File Editor makes it easy to change your hosts file as well as archive multiple versions for easy retrieval.",
    "winget": "none",
    "choco": "hosts.editor",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Subtitle Edit",
    "Description": "With SE you can easily adjust a subtitle if it is out of sync with the video in several different ways. You can also use SE for making new subtitles from scratch (do use the time-line/waveform/spectrogram) or translating subtitles.",
    "winget": "none",
    "choco": "subtitleedit",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Skype",
    "Description": "Skype - Install Skype, add your friends as contacts, then call, video call and instant message with them for free. Call people who aren''t on Skype too, at really low rates.",
    "winget": "none",
    "choco": "skype",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "FileZilla",
    "Description": "FileZilla Client is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface.",
    "winget": "none",
    "choco": "filezilla",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "Everything",
    "Description": "Everything Search Engine - locate files and folders by name instantly",
    "winget": "none",
    "choco": "everything",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Yarn",
    "Description": "Yarn is a package manager for the npm and bower registries with a few specific focuses.",
    "winget": "none",
    "choco": "yarn",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "VMware Workstation Player",
    "Description": "VMware Workstation Player™ is a streamlined desktop virtualization application that runs another operating system on the same computer without rebooting. VMware Workstation Player provides a simple user interface, unmatched operating system support, and portability across the VMware ecosystem.",
    "winget": "none",
    "choco": "vmware-workstation-player",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "HDD Low Level Format Tool",
    "Description": "Will erase, Low-Level Format and re-certify a SATA, IDE or SCSI hard disk drive with any size of up to 281 474 976 710 655 bytes.",
    "winget": "none",
    "choco": "llftool",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "BlueStacks",
    "Description": "Play Android Games on PC.",
    "winget": "none",
    "choco": "bluestacks",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Launchers",
    "check": "false"
  },
  {
    "Name": "Intel Wireless Bluetooth for Windows 10 and Windows 11",
    "Description": "Bluetooth for Windows 10 and Windows",
    "winget": "none",
    "choco": "intel-bluetooth-drivers",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "Office 365 Business",
    "Description": "Microsoft 365 (formerly Office 365) is a line of subscription services offered by Microsoft as part of the Microsoft Office product line. The brand encompasses plans that allow use of the Microsoft Office software suite over the life of the subscription, as well as cloud-based software as a service products for business environments, such as hosted Exchange Server, Skype for Business Server, and SharePoint, among others. All Microsoft 365 plans include automatic updates to their respective software at no additional charge, as opposed to conventional licenses for these programs—where new versions require purchase of a new license.",
    "winget": "none",
    "choco": "office365business",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Microsoft",
    "check": "false"
  },
  {
    "Name": "Bandicam",
    "Description": "Bandicam is a closed-source screen capture and screen recording software originally developed by Bandisoft and later by Bandicam Company that can take screenshots or record screen changes. Bandicam consists of three main modes. One is the Screen Recording mode, which can be used for recording a certain area on the PC screen",
    "winget": "BandicamCompany.Bandicam",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "Name": "QQPlayer",
    "Description": "QQPlayer media player",
    "winget": "Tencent.QQPlayer",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "Name": "4K Video Downloader",
    "Description": "4K Video Downloader allows downloading videos, playlists, channels and subtitles from YouTube, Facebook, Vimeo and other video sites in high quality.",
    "winget": "none",
    "choco": "4k-video-downloader",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Active@ Partition Recovery",
    "Description": "Active@ Partition Recovery is a freeware toolkit that helps to recover deleted and damaged logical drives and partitions within Windows, WinPE (recovery boot disk) and Linux (recovery LiveCD) environments.",
    "winget": "LSoftTechnologies.ActivePartitionRecovery",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "HiSuite",
    "Description": "HUAWEI HiSuite is the official Android Smart Device Manager tool,HiSuite helps users to connect their HUAWEI smartphones and tablets to PC",
    "winget": "Huawei.HiSuite",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "Android Studio",
    "Description": "Android Studio is the official integrated development environment for Google''s Android operating system, built on JetBrains IntelliJ IDEA software and designed specifically for Android development",
    "winget": "none",
    "choco": "androidstudio",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "Name": "WhatsApp",
    "Description": "WhatsApp is an instant messaging and voice-over-IP service owned by technology conglomerate Meta. It allows users to send text, voice messages and video messages, make voice and video calls, and share images, documents, user",
    "winget": "WhatsApp.WhatsApp",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "Name": "LibreWolf",
    "Description": "LibreWolf is designed to increase protection against tracking and fingerprinting techniques, while also including a few security improvements. This is achieved through our privacy and security oriented settings and patches. LibreWolf also aims to remove all the telemetry, data collection and annoyances, as well as disabling anti-freedom features like DRM.",
    "winget": "none",
    "choco": "librewolf",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Browsers",
    "check": "false"
  },
  {
    "Name": "Flow Launcher",
    "Description": "Dedicated to making your workflow flow more seamless. Search everything from applications, files, bookmarks, YouTube, Twitter and more. Flow will continue to evolve, designed to be open and built with the community at heart.",
    "winget": "none",
    "choco": "flow-launcher",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "Name": "IconsExtract",
    "Description": "The IconsExtract utility scans the files and folders on your computer, and extract the icons and cursors stored in EXE, DLL, OCX, CPL, and in other file types.",
    "winget": "none",
    "choco": "iconsext",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "Name": "AdGuard Home",
    "Description": "AdGuard Home is a network-wide software for blocking ads and tracking. After you set it up, it''ll cover ALL your home devices, and you don''t need any client-side software for that.",
    "winget": "choco install adguardhome",
    "choco": "It operates as a DNS server that re-routes tracking domains to a \"black hole\", thus preventing your devices from connecting to those servers. It''s based on software we use for our public AdGuard DNS servers - both share a lot of common code.",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Burp Suite Community Edition",
    "description": "Burp Suite is an integrated platform for performing security testing of web applications. Its various tools work seamlessly together to support the entire testing process, from initial mapping and analysis of an application''s attack surface, through to finding and exploiting security vulnerabilities.",
    "winget": "none",
    "choco": "burp-suite-free-edition",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "CoreTemp",
    "description": "Core Temp is a compact, no fuss, small footprint, yet powerful program to monitor processor temperature and other vital information.",
    "winget": "none",
    "choco": "coretemp",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "ShareX",
    "description": "Screen capture, file sharing and productivity tool.",
    "winget": "none",
    "choco": "sharex",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "ONLYOFFICE",
    "description": "ONLYOFFICE is a project developed by experienced IT experts from Ascensio System SIA, leading IT company with headquarters in Riga, Latvia. Originally ONLYOFFICE was designed for internal team collaboration. An attempt to introduce it to a wider audience proved to be successful: ONLYOFFICE received very positive feedback from the Internet community. As a result, its functionality was considerably revised and expanded that brought about a high and stable growth of users from different countries.",
    "winget": "none",
    "choco": "onlyoffice",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "ESET Internet Security",
    "description": "Ideal for modern users concerned about their privacy, who actively use internet for shopping, banking, work and communication.",
    "winget": "none",
    "choco": "eset-internet-security",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "WinDirStat",
    "description": "WinDirStat is a disk usage statistics viewer and cleanup tool for Microsoft Windows.",
    "winget": "none",
    "choco": "windirstat",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Winmerge",
    "description": "WinMerge is an Open Source differencing and merging tool for Windows. WinMerge can compare both  folders and files, presenting differences in a visual text format that is easy to understand and handle.",
    "winget": "none",
    "choco": "winmerge",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Wireshark",
    "description": "Wireshark is the worlds foremost and widely-used network protocol analyzer. It lets you see whats happening on your network at a microscopic level and is the de facto (and often de jure) standard across many commercial and non-profit enterprises, government agencies, and educational institutions. Wireshark development thrives thanks to the volunteer contributions of networking experts around the globe and is the continuation of a project started by Gerald Combs in 1998.",
    "winget": "none",
    "choco": "wireshark",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "TeraCopy",
    "description": "TeraCopy is designed to copy and move files at the maximum possible speed. It skips bad files during the copying process, and then displays them at the end of the transfer so that you can see which ones need attention. TeraCopy can automatically check the copied files for errors by calculating their CRC checksum values. It also provides a lot more information about the files being copied than its Windows counterpart. TeraCopy integrates with Windows Explorer''s right-click menu and can be set as the default copy handler.",
    "winget": "none",
    "choco": "teracopy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "QuickLook",
    "description": "Quick Look is among the few features I missed from Mac OS X It enables very quick preview of file by pressing Space key while highlighting it without opening its associated application Then I decide to add this feature to Windows by myself which results this QuickLook project",
    "winget": "none",
    "choco": "quicklook",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "RepoZ",
    "description": "RepoZ provides a quick overview of the git repositories on your development machine including their current branch and a short status information It uses the repositories on your machine to create an efficient navigation widget and makes sure youll never loose track of your work along the way",
    "winget": "none",
    "choco": "repoz",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Intel Graphics Command Center",
    "description": "Dont have time to mess around with settings The Intel Graphics Command Center easily finds and tunes your games complete with recommended settings for your computer Use oneclick optimization for many popular titles and instantly get the most out of your system. (Windows 10 version 1709 or higher,6th Gen Intel Core Platforms or newer).",
    "winget": "9PLFNLNT3G5G",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Go Programming Language",
    "description": "Go is expressive concise clean and efficient Its concurrency mechanisms make it easy to write programs that get the most out of multicore and networked machines while its novel type system enables flexible and modular program construction Go compiles quickly to machine code yet has the convenience of garbage collection and the power of runtime reflection Its a fast statically typed compiled language that feels like a dynamically typed interpreted language",
    "winget": "none",
    "choco": "golang",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Rust",
    "description": "Rust is a curlybrace blockstructured expression language It visually resembles the C language family but differs significantly in syntactic and semantic details Its design is oriented toward concerns of programming in the large that is of creating and maintaining boundaries  both abstract and operational  that preserve largesystem integrity availability and concurrency",
    "winget": "none",
    "choco": "rust",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Inkscape",
    "description": "Inkscape is an opensource vector graphics editor similar to Adobe Illustrator Corel Draw Freehand or Xara X What sets Inkscape apart is its use of Scalable Vector Graphics SVG an open XMLbased W3C standard as the native format",
    "winget": "none",
    "choco": "inkscape",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Youtube dl",
    "description": "outubedl is a small commandline program to download videos from YouTubecom and a few more sites It is written in Python and its not platform specific It should work in your Unix box in Windows or in Mac OS X It is released to the public domain which means you can modify it redistribute it or use it however you like",
    "winget": "none",
    "choco": "youtube-dl",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Postman",
    "description": "Postman helps you be more efficient while working with APIs Using Postman you can construct complex HTTP requests quickly organize them in collections and share them with your coworkers",
    "winget": "none",
    "choco": "postman",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Azure CLI",
    "description": "The Azure CLI is available across Azure services and is designed to get you working quickly with Azure with an emphasis on automation",
    "winget": "none",
    "choco": "azure-cli",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "GameMaker-Studio",
    "description": "GameMaker Studio has everything you need for games development no matter what your level or expertise",
    "winget": "YoYoGames.GameMaker.Studio.1",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Charles",
    "description": "Charles is an HTTP proxy  HTTP monitor  Reverse Proxy that enables a developer to view all of the HTTP and SSL  HTTPS traffic between their machine and the Internet This includes requests responses and the HTTP headers which contain the cookies and caching information",
    "winget": "none",
    "choco": "charles",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Windows Media Player",
    "description": "Media Player is designed to make listening to and watching your multimedia content more enjoyable At the heart of Media Player is a fullfeatured music library that allows you to quickly browse and play music as well as create and manage playlists All your content in the music and video folders on your PC will appear automatically in your library",
    "winget": "9WZDNCRFJ3PT",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "x360ce",
    "description": "Xbox 360 Controller Emulator allows your controller (gamepad joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "rar",
        "url": "https://www.x360ce.com/files/x360ce.zip",
        "exeArgs": "none",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "SelfishNetV3",
    "description": "Control your internet bandwidth with SelfishNet v3.",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "rar",
        "url": "https://github.com/nov0caina/SelfishNetV3/releases/download/SelfishNetV3.0.0/SelfishNetV3.0.0_Installer.zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "ITT/Downloads"
      }
    ],
    "category": "Utilities",
    "check": "false"
  }
]
' | ConvertFrom-Json
$sync.database.locales = '{
  "en": {
    "installBtn": "Install",
    "applyBtn": "Apply",
    "about":"About",
    "mirrorLinks":"Mirror Links",
    "pref":"Preferences",
    "device":"Device Managment",
    "apps":"Apps",
    "tweaks":"Tweaks",
    "saveapps":"Save selected Apps",
    "loadapps":"Load Apps",
    "music":"Music",
    "on":"ON ",
    "off":"OFF",
    "ittlink":"Create ITT Link",
    "darkmode":"Dark Mode",
    "en":"English",
    "ar":"عربي",
    "lang":"Langusege",
    "installmsg":"Do you want install selected apps",
    "choseapp":"Select at lest app to install",
    "lastupdate":"Last update",
    "sourcecode":"Source Code",
    "devby":"Development by Emad Adel"
  },
  "ar": {
    "InstallBtn": "تثبيت",
    "applyBtn": "تطبيق",
    "about":"عن المطور",
    "mirrorLinks":"روابط خارجية",
    "pref":"التفضيلات",
    "device":"ادارة الجهاز",
    "apps":"تطبيقات",
    "tweaks":"تحسينات",
    "saveapps":"حفظ البرامج المختارة",
    "loadapps":"تحميل البرامح ",
    "music":"الصوت ",
    "on":"تشغيل ",
    "off":"إيقاف",
    "ittlink":"إنشاء اختصار",
    "darkmode":"الوضع الليلي",
    "en":"English",
    "ar":"عربي",
    "lang":"اللغة",
    "installmsg":"هل تريد تثبيت البرامج المختارة؟",
    "choseapp":"أختار على الاقل تطبيق لتثبيته",
    "lastupdate":"اخر تحديث",
    "sourcecode":"اكواد الاداة",
    "devby":"تطوير بواسطة عماد عادل"
  }
}
' | ConvertFrom-Json
$sync.database.OST = '{
    "Tracks":  [
                   "https://epsilon.vgmsite.com/soundtracks/far-cry-3/iqgdbfrhtw/17.%20Further%20%28feat.%20Serena%20McKinney%29.mp3",
                   "https://dl.vgmdownloads.com/soundtracks/hollow-knight-original-soundtrack/qqrmmaqyqg/26.%20Hollow%20Knight.mp3",
                   "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/jgevpclfcr/01.%20Assassin%27s%20Creed%20III%20Main%20Theme.mp3",
                   "https://dl.vgmdownloads.com/soundtracks/assassins-creed-mirage-original-game-soundtrack-2023/axtwruyduh/01.%20Mirage%20Theme.mp3",
                   "https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3",
                   "https://archive.org/download/GrandTheftAuto4ThemeSong_201904/Grand%20Theft%20Auto%204%20Theme%20Song.mp3",
                   "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/jlrprchapt/1-03%20Ezio%27s%20Family.mp3",
                   "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/nkantwuktr/1-01%20Earth.mp3",
                   "https://epsilon.vgmsite.com/soundtracks/mass-effect-3-gamerip-2012/nchtmgcz/304.%20End%20of%20Cycle.mp3",
                   "https://dl.vgmdownloads.com/soundtracks/somerville-2022/naszqoqnhr/01.%20Intro%20%28Somerville%20Original%20Soundtrack%29%20%28feat.%20Dominique%20Charpentier%29.mp3",
                   "https://archive.org/download/kate-chruscicka-requiem-for-a-dream-electric-violin/Kate%20Chruscicka-Requiem%20For%20A%20Dream%20%28Electric%20Violin%29.mp3",
                   "https://archive.org/download/InceptionSoundtrackHD12TimeHansZimmer/Inception%20Soundtrack%20HD%20-%20%2312%20Time%20%28Hans%20Zimmer%29.mp3",
                   "https://epsilon.vgmsite.com/soundtracks/little-nightmares-ii-original-soundtrack/bplsnxvnzm/01.%20Main%20Theme.mp3",
                   "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/qhigmkctpn/09.%20Trouble%20in%20Town.mp3",
                   "https://vgmsite.com/soundtracks/assassin-s-creed-odyssey-original-game-soundtrack/kbtrtqrtyf/01.%20Legend%20of%20the%20Eagle%20Bearer%20%28Main%20Theme%29.mp3",
                   "https://vgmsite.com/soundtracks/assassin-s-creed-odyssey-original-game-soundtrack/kcjbuaurdi/11.%20Assassin%27s%20Creed.mp3",
                   "https://archive.org/download/exit-music-for-a-film-westworld-soundtrack/exit-music-for-a-film-westworld-soundtrack.mp3",
                   "https://dl.vgmdownloads.com/soundtracks/max-payne-3/xhaxngwzys/1.%20MAX%20THEME.mp3",
                   "https://vgmsite.com/soundtracks/max-payne-3-macos-ps3-windows-xbox-360-gamerip-2012/hcwizawdyl/112.%20Theme%20Variation%2003.mp3",
                   "https://archive.org/download/ludovico-einaudi-experience-mp-3-70-k/Ludovico%20Einaudi%20-%20Experience%28MP3_70K%29.mp3",
                   "https://archive.org/download/GTASanAndreasThemeSongFull_201904/GTA%20San%20Andreas%20Theme%20Song%20Full%20%21%20%21.mp3",
                   "https://archive.org/download/interstellar-soundtrack/22%20No%20Time%20for%20Caution%20%28Docking%20scene%29%201.mp3",
                   "https://archive.org/download/interstellar-soundtrack/26%20Organ%20Variation.mp3",
                   "https://archive.org/download/max-richter-memoryhouse/09%20November.mp3",
                   "https://archive.org/download/ZackHemseyTheWay_201704/Zack%20Hemsey%20-%20The%20Way.mp3"
               ]
}
' | ConvertFrom-Json
$sync.database.Quotes = '{
  "Q": [
    "توفر هذه الأداة تسهيلات كبيرة في عملية تثبيت البرامج وتحسين أداء نظام التشغيل. انضم إلينا لتساهم في تطويرها وجعلها أكثر اكتمالًا",
    "إما تموت بطلا، أو تعيش طويلاً حتى ترى نفسك اصبحت الشرير",
    "بعض الرجال يريدون فقط مشاهدة العالم يحترق",
    "إنهم يكرهون النور، لأنهم يخشون الحقيقة",
    "أنت دائما تخشى ما لا تفهمه",
    "التعاون مع الشر لا يجعلك تفوز. إنه يجعلك مثله",
    "القتال الحقيقي هو دائمًا ضد الذات",
    "الوحدة هي أسوأ أشكال العقوبة",
    "الجمال الحقيقي لا يكمن في المظهر الخارجي، بل في النية والروح",
    "ليس كل ما نخاف منه سيئًا، وليس كل ما نحبه جيدًا",
    "ظننت أنه يمكننا أن نكون رجالاً شرفاء في زمن غير شريف",
    "أعطي الرجل سلاحا يمكنه أن يسرق بنك لكن اعطيه بنك يمكنه سرقة العالم",
    "أنت تعتقد أن الظلام هو حليفك لكنك تبنيت الظلام , انا لقد ولدت فيه",
    "لا يغرنك من تكلم حسناً عنك ولا يؤذيك من تكلم سيئاً عليك",
    "اختر أن تكون شمعة تضيء دروب الآخرين، ولا تكن ظلامًا يعكر جوهر الحياة",
    "النية خير معيار للأفعال",
    "الإيمان هو أن ترى الشيء الذي لا يمكن رؤيته بالعين",
    "الحقيقة تجعلك حرًا",
    "العدالة شيئ و القانون شيئ",
    "الحرية لا تُعطى بل تأخذ",
    "ما أخذ بالقوة لا يٌسترد إلا بالقوة",
    "الجهل سيئ و من صناعة الانظمة",
    "كل ما احلم به جرفته الامواج بعيدا",
    "من جاءني رحيما بادلته احتراما",
    "ولدت من جديد حينما رأيت ذلك",
    "الوطنية للفقراء و الوطن للاغنياء",
    "حين انتهيت من بناء قاربي جف البحر",
    "المشاكل لن تنتهي هكذا الدنيا",
    "البطولة لا تأتي من القوة البدنية، بل من الإرادة والعزم",
    "القوة ليست في القدرة على تحمل الصعاب، بل في القدرة على التغلب عليها",
    "عليك أن تتحطم قبل أن تتعلم كيف تقوم مرة أخرى",
    "الإيمان بالمستحيل هو البداية لتحقيق المعجزات",
    "الكون يحتفظ بأسرار لا يمكن للعقل البشري فهمها بأكملها",
    "البقاء لا يعني شيئًا إذا كانت الحياة بلا معنى",
    "عندما ننظر إلى السماء، نرى ليس فقط النجوم بل أيضًا أحلامنا وآمالنا",
    "العالم ينقسم إلى طرفين: أولئك الذين لديهم القوة، وأولئك الذين يسعون للقوة",
    "لقد قالوا إن الحقيقة تضر، ولكنهم لم يذكروا أن الكذب يؤلم أكثر",
    "الموت ليس الأسوأ في الحياة. الأسوأ هو ما يموت به الإنسان دون أن يعيش",
    "عندما نقف معًا، نحن قوة لا يمكن أن تُقهر",
    "كل شيء في الحياة يتم الدفع ثمنه، لكن بعض الأشياء لا يمكن شراؤها بالمال",
    "الحقيقة ليست دائماً واضحة، لكنها دائماً هناك",
    "الجشع هو موتك السريع، والغباء هو رصاصتك الخاصة",
    "الحياة ليست سهلة، ولكن الصعوبات تجعلنا أقوى",
    "تموت البراءة وتحيا الكلاب",
    "وقد سألت الدنيا لما لم تسعفيني لم تسمعي كلامي حين قلت رفقا بي, ابيت ان تضمدي جروحكي في قلبي"
  ]
}
' | ConvertFrom-Json
$sync.database.Tweaks = '[
  {
    "name": "System File Checker",
    "description": "sfc /scannow Use the System File Checker tool to repair missing or corrupted system files",
    "command": "sfc /scannow;",
    "check": "false",
    "type": "script",
    "Commands": [
      {
        "run": "sfc /scannow;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Run Disk cleanup",
    "description": "Clean temporary files that are not necessary",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "cleanmgr.exe /d C: /VERYLOWDISK /sagerun:1 Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Restore All Windows Services to Default",
    "description": "If you face a problem with some system services, you can restore all services to Default.",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/WindowsTweaks/main/restore.bat | Invoke-Expression;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Fix Stutter/Lag in Games",
    "description": "Fix Stutter in Games (Disable GameBarPresenceWriter). Windows 10/11",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/Fix-Stutter-in-Games/main/fix.ps1 | Invoke-Expression;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Enable the Ultimate Performance Power Plan",
    "description": "Enable the Ultimate Performance Power Plan",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61; Start-Process powercfg.cpl;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Reset the TCP/IP Stack",
    "description": "If you have an internet problem, Reset network configuration",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "netsh int ip reset;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Setup Auto login",
    "description": "Setup auto login Windows username",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "curl.exe -ss \"https://live.sysinternals.com/Autologon.exe\" -o $env:temp\\autologin.exe ; cmd /c $env:temp\\autologin.exe /accepteula;",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Disable Game Mode",
    "description": "This tweak disables Game Mode",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar\\",
        "Name": "AutoGameModeEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": ""
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar\\",
        "Name": "AllowAutoGameMode",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": ""
      }
    ]
  },
  {
    "name": "Disable Data Collection",
    "description": "Disable Data Collection",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\DataCollection",
        "Name": "AllowTelemetry",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": ""
      }
    ]
  },
  {
    "name": "Disable Start menu ads",
    "description": "Disable Start menu Ads and Settings",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\AdvertisingInfo",
        "Name": "Enabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SystemPaneSuggestionsEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SoftLandingEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced",
        "Name": "ShowSyncProviderNotifications",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      }
    ]
  },
  {
    "name": "Disable Windows Web Search",
    "description": "Disable web search in Windows by modifying the registry settings related to Windows Search. It sets the BingSearchEnabled value to 0, effectively turning off web search results",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "BingSearchEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": ""
      }
    ]
  },
  {
    "name": "Turn off background apps",
    "description": "Turn off background apps",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\BackgroundAccessApplications",
        "Name": "GlobalUserDisabled",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0",
        "refresh": ""
      }
    ]
  },
  {
    "name": "Disable suggestions on start menu",
    "description": "Disables suggestions on start menu",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent",
        "Name": "DisableWindowsConsumerFeatures",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      }
    ]
  },
  {
    "name": "Disable the News and interests on taskbar",
    "description": "Disables the News and interests",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Feeds",
        "Name": "ShellFeedsTaskbarViewMode",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      }
    ]
  },
  {
    "name": "Show Search icon Only on taskbar",
    "description": "Show Search Icon Only",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "SearchboxTaskbarMode",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "2",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      }
    ]
  },
  {
    "name": "Disable People icon on taskbar",
    "description": "Disables People on taskbar",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\\People",
        "Name": "PeopleBand",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer"
      }
    ]
  },
  {
    "name": "Remove Folder Shortcuts From Windows'' File Explorer",
    "description": "Remove Documents, Videos, Pictures, Desktop. Shortcuts from File Explorer",
    "check": "false",
    "type": "delete",
    "Registry": [
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{088e3905-0323-4b02-9826-5d99428e115f}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{088e3905-0323-4b02-9826-5d99428e115f}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{d3162b92-9365-467a-956b-92703aca08af}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{d3162b92-9365-467a-956b-92703aca08af}"
      }
    ]
  },
  {
    "name": "Optimize Services",
    "description": "Disable (Print Spooler), (Fax), (Diagnostic Policy), (Downloaded Maps Manager), (Windows Error Reporting Service), (Remote Registry) , (Internet Connection Sharing), (Disables Telemetry and Data) ",
    "check": "false",
    "type": "service",
    "Service": [
      {
        "Name": "Spooler",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "Fax",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "DPS",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "MapsBroker",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "WerSvc",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      },
      {
        "Name": "RemoteRegistry",
        "StartupType": "Disabled",
        "DefaultType": "Disabled"
      },
      {
        "Name": "lmhosts",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      },
      {
        "Name": "SharedAccess",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      },
      {
        "Name": "DiagTrack",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      }
    ]
  },
  {
    "name": "Remove Unnecessary Windows 10/11 Apps",
    "description": "BingNews, GetHelp, Getstarted, Messaging, Microsoft3DViewer, MicrosoftOfficeHub, MicrosoftSolitaireCollection, News, Office.Lens, Office.OneNote, Office.Sway, OneConnect, People, Print3D, RemoteDesktop, SkypeApp, StorePurchaseApp, Office.Todo.List, Whiteboard, WindowsAlarms, WindowsCamera, windowscommunicationsapps, WindowsFeedbackHub, WindowsMaps, WindowsSoundRecorder, Xbox.TCUI, XboxApp, XboxGameOverlay, XboxIdentityProvider, XboxSpeechToTextOverlay, ZuneMusic, ZuneVideo, Windows.Cortana, MSPaint",
    "check": "false",
    "type": "AppxPackage",
    "RemoveAppxPackage": [
      {
        "Name": "Microsoft.BingNews"
      },
      {
        "Name": "Microsoft.GetHelp"
      },
      {
        "Name": "Microsoft.Getstarted"
      },
      {
        "Name": "Microsoft.BingWeather"
      },
      {
        "Name": "Microsoft.Messaging"
      },
      {
        "Name": "Microsoft.Microsoft3DViewer"
      },
      {
        "Name": "Microsoft.MicrosoftOfficeHub"
      },
      {
        "Name": "Microsoft.MicrosoftSolitaireCollection"
      },
      {
        "Name": "Microsoft.NetworkSpeedTest"
      },
      {
        "Name": "Microsoft.News"
      },
      {
        "Name": "Microsoft.Office.Lens"
      },
      {
        "Name": "Microsoft.Office.OneNote"
      },
      {
        "Name": "Microsoft.Office.Sway"
      },
      {
        "Name": "Microsoft.OneConnect"
      },
      {
        "Name": "Microsoft.People"
      },
      {
        "Name": "Microsoft.Print3D"
      },
      {
        "Name": "Microsoft.RemoteDesktop"
      },
      {
        "Name": "Microsoft.SkypeApp"
      },
      {
        "Name": "Microsoft.StorePurchaseApp"
      },
      {
        "Name": "Microsoft.Office.Todo.List"
      },
      {
        "Name": "Microsoft.Whiteboard"
      },
      {
        "Name": "Microsoft.WindowsAlarms"
      },
      {
        "Name": "Microsoft.WindowsCamera"
      },
      {
        "Name": "microsoft.windowscommunicationsapps"
      },
      {
        "Name": "Microsoft.WindowsFeedbackHub"
      },
      {
        "Name": "Microsoft.WindowsMaps"
      },
      {
        "Name": "Microsoft.YourPhone"
      },
      {
        "Name": "Microsoft.WindowsSoundRecorder"
      },
      {
        "Name": "Microsoft.Xbox.TCUI"
      },
      {
        "Name": "Microsoft.XboxApp"
      },
      {
        "Name": "Microsoft.XboxGameOverlay"
      },
      {
        "Name": "Microsoft.XboxIdentityProvider"
      },
      {
        "Name": "Microsoft.XboxSpeechToTextOverlay"
      },
      {
        "Name": "Microsoft.Windows.Cortana"
      },
      {
        "Name": "Microsoft.Windows.DevHome"
      },
      {
        "Name": "Microsoft.MixedReality.Portal"
      },
      {
        "Name": "Microsoft.MSPaint"
      },
      {
        "Name": "EclipseManager"
      },
      {
        "Name": "ActiproSoftwareLLC"
      },
      {
        "Name": "AdobeSystemsIncorporated.AdobePhotoshopExpress"
      },
      {
        "Name": "Duolingo-LearnLanguagesforFree"
      },
      {
        "Name": "PandoraMediaInc"
      },
      {
        "Name": "CandyCrush"
      },
      {
        "Name": "BubbleWitch3Saga"
      },
      {
        "Name": "Wunderlist"
      },
      {
        "Name": "Flipboard"
      },
      {
        "Name": "Twitter"
      },
      {
        "Name": "Facebook"
      },
      {
        "Name": "Minecraft"
      },
      {
        "Name": "Royal Revolt"
      },
      {
        "Name": "Sway"
      },
      {
        "Name": "Microsoft.549981"
      },
      {
        "Name": "Microsoft.MicrosoftStickyNotes"
      }
    ]
  },
  {
    "name": "Disable Hibernate",
    "description": "Hibernate is a power-saving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely.",
    "check": "false",
    "type": "command",
    "Commands": [
      {
        "run": "powercfg.exe /hibernate off",
        "delay": "1"
      }
    ]
  },
  {
    "name": "Disable OneDrive",
    "description": "Disabling OneDrive",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\OneDrive",
        "Name": "DisableFileSyncNGSC",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0",
        "refresh": ""
      }
    ]
  },
  {
    "name": "Remove Meet Now icon on Taskbar Windows 10",
    "description": "Earlier this year Microsoft introduced Meet Now in Skype. Meet Now makes it easy to connect with anyone in as little as two clicks for free and each call can last up to 24 hours.",
    "check": "false",
    "type": "modifying",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0",
        "refresh": "Stop-Process -Name explorer -Force; Start-Process explorer; -NoNewWindow"
      },
      {
        "Path": "HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0",
        "refresh": ""
      }
    ]
  }
]
' | ConvertFrom-Json
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST
#===========================================================================

#===========================================================================
#region Begin WPF Window
#===========================================================================

$inputXML = '
<!--Window-->
<Window
xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
x:Name="Window" Title="Install and Tweak Tool @emadadel4" WindowStartupLocation = "CenterScreen" 
Background="{DynamicResource BGColor}"
Height="600"  MinHeight="600"  Topmost="False" Width="799" MinWidth="799" ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Icons/icon.ico">

<Window.Resources>

    <!--Button Style-->
      <Style TargetType="Button">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
        <Setter Property="BorderBrush" Value="red"/>
        <Setter Property="BorderThickness" Value="11"/>
        
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="Button">
                    <Border CornerRadius="20" BorderBrush="{DynamicResource BorderBrush}" BorderThickness="2" Background="{TemplateBinding Background}">
                        <ContentPresenter HorizontalAlignment="Center"
                                            VerticalAlignment="Center"/>
                        
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
        <Style.Triggers>
            <Trigger Property="IsMouseOver" Value="True">
                <Setter Property="Background" Value="{DynamicResource BGButtonColor}"/>
                <Setter Property="Foreground" Value="{DynamicResource FGButtonColor}"/>
            </Trigger>
        </Style.Triggers>
    </Style>
<!--End Button Style-->

<!--Textbox Style-->
  <Style TargetType="TextBox">
    <Setter Property="Background" Value="{DynamicResource BGColor}"/>
      <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
      <Setter Property="BorderThickness" Value="1"/>
      <Setter Property="Template">
          <Setter.Value>
              <ControlTemplate TargetType="TextBox">
                  <Border Margin="8" Background="{TemplateBinding Background}"
                          BorderBrush="{TemplateBinding BorderBrush}"
                          BorderThickness="{TemplateBinding BorderThickness}"
                          CornerRadius="15"> <!-- Set CornerRadius here -->
                      <ScrollViewer x:Name="PART_ContentHost" />
                  </Border>
              </ControlTemplate>
          </Setter.Value>
      </Setter>
      <Style.Triggers>
              <Trigger Property="IsFocused" Value="True">
                  <Setter Property="BorderThickness" Value="1"/>
                  <Setter Property="BorderBrush" Value="{DynamicResource BGButtonColor}"/>
                  <Setter Property="Background" Value="{DynamicResource FGColor}"/>
              </Trigger>
          </Style.Triggers>
  </Style>
<!--End Textbox Style-->

<!--Label Style-->
  <Style TargetType="Label">
    <Setter Property="Background" Value="{DynamicResource Label}"/>
    <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
    <Setter Property="FontSize" Value="20"/>
    <Setter Property="Template">
        <Setter.Value>
            <ControlTemplate TargetType="Label">
                <Border Padding="4" Background="{TemplateBinding Background}"
                        BorderBrush="{TemplateBinding BorderBrush}"
                        BorderThickness="{TemplateBinding BorderThickness}"
                        CornerRadius="5"> <!-- Set the corner radius here -->
                    <ContentPresenter HorizontalAlignment="{TemplateBinding HorizontalContentAlignment}"
                                      VerticalAlignment="{TemplateBinding VerticalContentAlignment}"/>
                </Border>
            </ControlTemplate>
        </Setter.Value>
    </Setter>
  </Style>
  
<!--End Label Style-->

<!--TextBlock Style-->
  <Style TargetType="TextBlock">
      <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
  </Style>
<!--End TextBlock Style-->

<!--CheckBox Style-->
  <Style TargetType="CheckBox">
      <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
      <Setter Property="Margin" Value="0"/>


        <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="CheckBox">
                        <StackPanel Orientation="Horizontal">
                            <!-- Default checkbox icon -->
                            <Grid Width="18" Height="18" Margin="0,0,5,0">
                                <Ellipse Width="18" Height="18" Fill="{TemplateBinding Background}" Stroke="{TemplateBinding BorderBrush}" StrokeThickness="1"/>
                                <Path x:Name="CheckMark" Width="7" Height="7" SnapsToDevicePixels="False" Stroke="blue" StrokeThickness="2" Data="M 0 3.5 L 7 3.5 M 3.5 0 L 3.5 7" Visibility="Collapsed"/>
                            </Grid>
                            <!-- Content with background -->
                            <Border CornerRadius="8" Background="{DynamicResource checkboxBG}"
                                    BorderBrush="{TemplateBinding BorderBrush}"
                                    BorderThickness="{TemplateBinding BorderThickness}"
                                    Padding="5">
                                <ContentPresenter/>
                            </Border>
                        </StackPanel>
                        <ControlTemplate.Triggers>
                            <Trigger Property="IsChecked" Value="True">
                                <Setter TargetName="CheckMark" Property="Visibility" Value="Visible"/>
                                <Setter Property="Background" Value="{DynamicResource BGButtonColor}"/>
                                <Setter TargetName="CheckMark" Property="Stroke" Value="white"/>
                                <Setter Property="BorderBrush" Value="{DynamicResource highlight}"/>
                            </Trigger>
                              <Trigger Property="IsChecked" Value="False">
                                <Setter Property="Background" Value="white"/>
                            </Trigger>
                         <Trigger Property="IsMouseOver" Value="True">
                            <Setter Property="Background" Value="{DynamicResource highlight}"/>
                            <Setter  Property="BorderBrush" Value="{DynamicResource highlight}"/>
                            <Setter  Property="BorderThickness" Value="1.5"/>
                        </Trigger>
                        </ControlTemplate.Triggers>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
  </Style>
<!--End CheckBox Style-->

<!--Menu Style-->
  <Style TargetType="Menu">
      <Setter Property="Background" Value="{DynamicResource BGColor}"/>
      <Setter Property="Margin" Value="15"/>
  </Style>
<!--End Menu Style-->

<!--MenuItem Style-->
    <Style TargetType="MenuItem">
        <Setter Property="Background" Value="{DynamicResource BGColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
        <Setter Property="OverridesDefaultStyle" Value="True"/>

        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="MenuItem">
                    <Border Background="{DynamicResource BGColor}"
                            BorderBrush="Transparent"
                            BorderThickness="0">
                        <Grid>
                            <!-- Icon -->
                            <ContentPresenter Content="{TemplateBinding Icon}"
                                            VerticalAlignment="Center"
                                            Margin="5"/>
                            <!-- Header -->
                            <ContentPresenter Content="{TemplateBinding Header}"
                                            Margin="30,5,5,5"/>
                            <Popup IsOpen="{Binding IsSubmenuOpen, RelativeSource={RelativeSource TemplatedParent}}"
                                AllowsTransparency="True"
                                Focusable="True"
                                PopupAnimation="Fade">
                                <Border Background="{DynamicResource {x:Static SystemColors.ControlBrushKey}}"
                                        BorderThickness="0">
                                    <ScrollViewer CanContentScroll="True"
                                                Style="{DynamicResource {ComponentResourceKey ResourceId=MenuScrollViewer, TypeInTargetAssembly={x:Type FrameworkElement}}}">
                                        <ItemsPresenter Margin="0"/>
                                    </ScrollViewer>
                                </Border>
                            </Popup>
                        </Grid>
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End MenuItem Style-->

<!--ListViewItem Style-->
    <Style TargetType="ListViewItem">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="Margin" Value="3"/>
        <Setter Property="BorderThickness" Value="2"/>
    </Style>
<!--End ListViewItem Style-->

<!--Scrollbar Thumbs-->
    <Style x:Key="ScrollThumbs" TargetType="{x:Type Thumb}">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Thumb}">
                    <Grid x:Name="Grid">
                        <Rectangle HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Width="Auto" Height="Auto" Fill="Transparent" />
                        <Border x:Name="Rectangle1" CornerRadius="5" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Width="Auto" Height="Auto" Background="{TemplateBinding Background}" />
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger Property="Tag" Value="Horizontal">
                            <Setter TargetName="Rectangle1" Property="Width" Value="Auto" />
                            <Setter TargetName="Rectangle1" Property="Height" Value="7" />
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
    <Style x:Key="{x:Type ScrollBar}" TargetType="{x:Type ScrollBar}">
        <Setter Property="Stylus.IsFlicksEnabled" Value="false" />
        <Setter Property="Foreground" Value="{DynamicResource BGButtonColor}" />
        <Setter Property="Background" Value="{DynamicResource FGColor}" />
        <Setter Property="Width" Value="8" />
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type ScrollBar}">
                    <Grid x:Name="GridRoot" Width="8" Background="{TemplateBinding Background}">
                        <Grid.RowDefinitions>
                            <RowDefinition Height="0.00001*" />
                        </Grid.RowDefinitions>
                        <Track x:Name="PART_Track" Grid.Row="0" IsDirectionReversed="true" Focusable="false">
                            <Track.Thumb>
                                <Thumb x:Name="Thumb" Background="{TemplateBinding Foreground}" Style="{DynamicResource ScrollThumbs}" />
                            </Track.Thumb>
                            <Track.IncreaseRepeatButton>
                                <RepeatButton x:Name="PageUp" Command="ScrollBar.PageDownCommand" Opacity="0" Focusable="false" />
                            </Track.IncreaseRepeatButton>
                            <Track.DecreaseRepeatButton>
                                <RepeatButton x:Name="PageDown" Command="ScrollBar.PageUpCommand" Opacity="0" Focusable="false" />
                            </Track.DecreaseRepeatButton>
                        </Track>
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger SourceName="Thumb" Property="IsMouseOver" Value="true">
                            <Setter Value="{DynamicResource ButtonSelectBrush}" TargetName="Thumb" Property="Background" />
                        </Trigger>
                        <Trigger SourceName="Thumb" Property="IsDragging" Value="true">
                            <Setter Value="{DynamicResource DarkBrush}" TargetName="Thumb" Property="Background" />
                        </Trigger>
                        <Trigger Property="IsEnabled" Value="false">
                            <Setter TargetName="Thumb" Property="Visibility" Value="Collapsed" />
                        </Trigger>
                        <Trigger Property="Orientation" Value="Horizontal">
                            <Setter TargetName="GridRoot" Property="LayoutTransform">
                                <Setter.Value>
                                    <RotateTransform Angle="-90" />
                                </Setter.Value>
                            </Setter>
                            <Setter TargetName="PART_Track" Property="LayoutTransform">
                                <Setter.Value>
                                    <RotateTransform Angle="-90" />
                                </Setter.Value>
                            </Setter>
                            <Setter Property="Width" Value="Auto" />
                            <Setter Property="Height" Value="8" />
                            <Setter TargetName="Thumb" Property="Tag" Value="Horizontal" />
                            <Setter TargetName="PageDown" Property="Command" Value="ScrollBar.PageLeftCommand" />
                            <Setter TargetName="PageUp" Property="Command" Value="ScrollBar.PageRightCommand" />
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End Scrollbar Thumbs-->

<!--TabControl Style-->
    <Style TargetType="TabItem">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="TabItem">
                    <Border Name="Border" CornerRadius="15" BorderThickness="0,0,0,0" Padding="5" BorderBrush="Gainsboro"  Margin="10,5">
                        <ContentPresenter x:Name="ContentSite"
                        VerticalAlignment="Center"
                        HorizontalAlignment="Center"
                        ContentSource="Header"
                        Margin="10,2"/>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsSelected" Value="True">
                            <Setter TargetName="Border" Property="Background" Value="{DynamicResource BGButtonColor}" />
                            <Setter Property="Foreground" Value="white" />
                        </Trigger>
                        <Trigger Property="IsSelected" Value="False">
                            <Setter TargetName="Border" Property="Background" Value="{DynamicResource FGColor}" />
                            <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}" />
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End TabControl Style-->

<!--ComboBox Style-->
    <Style  TargetType="{x:Type ComboBox}">
        <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
        <Setter Property="Height" Value="28"/>
        <Setter Property="Width" Value="2"/>
        <Setter Property="HorizontalAlignment" Value="Center"/>
            <Setter Property="Template">
                <Setter.Value>
                <ControlTemplate TargetType="ComboBox">
                    <Grid>
                        <ToggleButton Grid.Column="2" Focusable="false" IsChecked="{Binding Path=IsDropDownOpen,Mode=TwoWay,RelativeSource={RelativeSource TemplatedParent}}" >
                            <ToggleButton.Template>
                                <ControlTemplate>
                                        <Grid>
                                            <Grid.ColumnDefinitions>
                                                <ColumnDefinition Width="2*" />
                                                <ColumnDefinition Width="*" />
                                            </Grid.ColumnDefinitions>
                                            <Border x:Name="Border"  Grid.ColumnSpan="2" CornerRadius="10" Background="{DynamicResource FGColor}" BorderBrush="Transparent" BorderThickness="0" />
                                            <Border Grid.Column="0" CornerRadius="10"  Margin="1" VerticalAlignment="Center" HorizontalAlignment="Center"  Background="{DynamicResource FGColor}"  BorderBrush="Transparent" BorderThickness="0" />
                                            <Path x:Name="Arrow" Grid.Column="1"  Fill="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center" Data="M 0 0 L 4 4 L 8 0 Z"/>
                                        </Grid>
                                    <ControlTemplate.Triggers>
                                        <Trigger Property="ToggleButton.IsMouseOver" Value="true">
                                        <Setter TargetName="Border" Property="Background" Value="Transparent" />
                                        </Trigger>
                                        <Trigger Property="ToggleButton.IsChecked" Value="true">
                                        <Setter TargetName="Border" Property="Background" Value="Transparent" />
                                        </Trigger>
                                    </ControlTemplate.Triggers>
                                </ControlTemplate>
                            </ToggleButton.Template>
                        </ToggleButton>
                        <ContentPresenter Name="ContentSite" IsHitTestVisible="False"  Content="{TemplateBinding SelectionBoxItem}" ContentTemplate="{TemplateBinding SelectionBoxItemTemplate}" ContentTemplateSelector="{TemplateBinding ItemTemplateSelector}" Margin="6"  />
                        <TextBox x:Name="PART_EditableTextBox" Visibility="Hidden" IsReadOnly="{TemplateBinding IsReadOnly}"/>
                        <Popup Name="Popup" Placement="Bottom" IsOpen="{TemplateBinding IsDropDownOpen}" AllowsTransparency="True"  Focusable="true" PopupAnimation="Slide">
                            <Grid  Name="DropDown" SnapsToDevicePixels="True" MinWidth="{TemplateBinding ActualWidth}" MaxHeight="{TemplateBinding MaxDropDownHeight}">
                                <Border x:Name="DropDownBorder" Background="{DynamicResource FGColor}" />
                                <ScrollViewer SnapsToDevicePixels="True">
                                <StackPanel IsItemsHost="True" />
                                </ScrollViewer>
                            </Grid>
                        </Popup>
                    </Grid>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
            <Style.Triggers>
            </Style.Triggers>
    </Style>

    <Style  TargetType="{x:Type ComboBoxItem}">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
    </Style>

    <Style x:Key="CustomSeparatorStyle" TargetType="{x:Type Separator}">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Separator}">
                    <Border Background="Black" Height="1" Margin="5"/>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End ComboBox Style-->


    
    <!--Light Theme styles-->

        <!--Light mode -->
                <ResourceDictionary x:Key="Light">
                        <SolidColorBrush x:Key="BGColor" Color="White"/>
                        <SolidColorBrush x:Key="FGColor" Color="WhiteSmoke"/>
                        <SolidColorBrush x:Key="BGButtonColor" Color="#382bf0" />
                        <SolidColorBrush x:Key="FGButtonColor" Color="White" />
                        <SolidColorBrush x:Key="FGTextColor" Color="Black" />
                        <SolidColorBrush x:Key="DefaultTextColor" Color="Black"/>
                        <SolidColorBrush x:Key="BorderBrush" Color="LightBlue"/>
                        <SolidColorBrush x:Key="Label" Color="LightBlue"/>
                        <SolidColorBrush x:Key="checkboxBG" Color="White"/>
                        <SolidColorBrush x:Key="highlight" Color="blue"/>

                </ResourceDictionary>
        <!--Light mode -->

        <!--Dark mode-->
                <ResourceDictionary x:Key="Dark">
                        <SolidColorBrush x:Key="BGColor" Color="#121212 "/>
                        <SolidColorBrush x:Key="FGColor" Color="#282828"/>
                        <SolidColorBrush x:Key="BGButtonColor" Color="#1DB954" />
                        <SolidColorBrush x:Key="FGButtonColor" Color="White" />
                        <SolidColorBrush x:Key="FGTextColor" Color="WhiteSmoke" />
                        <SolidColorBrush x:Key="DefaultTextColor" Color="White"/>
                        <SolidColorBrush x:Key="BorderBrush" Color="#1DB954" />
                        <SolidColorBrush x:Key="Label" Color="#3f3f3f"/>
                        <SolidColorBrush x:Key="checkboxBG" Color="#1DB954"/>
                        <SolidColorBrush x:Key="highlight" Color="#3cb043"/>
                </ResourceDictionary>
        <!--Dark mode -->

<!--Light Theme-->


</Window.Resources>

<Grid>

    <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="Auto"/>
    </Grid.RowDefinitions>

    <!--Header Section-->


        <!--Menu Section-->
            <Menu Grid.Row="0"  Background="Transparent" BorderBrush="Transparent" BorderThickness="0">
                
                <MenuItem IsEnabled="False">
                    <MenuItem.Icon>
                        <!--Logo-->
                        <Ellipse Name="logo" Width="60" Height="60" Cursor="Hand" ToolTip="Enad Adel">
                            <Ellipse.Fill>
                                <ImageBrush ImageSource="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/logo.png" />
                            </Ellipse.Fill>
                        </Ellipse>
                        <!--End Logo-->
                    </MenuItem.Icon>
            
                </MenuItem>

                <MenuItem Header="{Binding device}" BorderBrush="Transparent" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Center">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                    <MenuItem Name="sysinfo" Header="System Info"/>
                    <MenuItem Name="poweroption" Header="Power Options"/>
                    <MenuItem Name="deviceManager" Header="Device Manager"/>
                    <MenuItem Name="services" Header="Services"/>
                    <MenuItem Name="network" Header="Network"/>
                    <MenuItem Name="appsfeatures" Header="Apps-Features"/>
                    <MenuItem Name="taskmgr" Header="Task Manager"/>
                    <MenuItem Name="diskmgmt" Header="Disk Managment"/>
                </MenuItem>

                <MenuItem Header="{Binding pref}" BorderBrush="Transparent" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Center">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>

                    <MenuItem Name="save" Header="{Binding saveapps}">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                        </MenuItem.Icon>
                    </MenuItem>
                    <MenuItem Name="load" Header="{Binding loadapps}">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                        </MenuItem.Icon>
                    </MenuItem>

                    <MenuItem Header="{Binding darkmode}">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                        </MenuItem.Icon>
                        <MenuItem Name="darkOn" Header="{Binding on}"/>
                        <MenuItem Name="darkOff" Header="{Binding off}"/>
                    </MenuItem>

                    <MenuItem Header="{Binding music}">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                        </MenuItem.Icon>
                        <MenuItem Name="moff" Header="{Binding off}"/>
                        <MenuItem Name="mon" Header="{Binding on}"/>
                    </MenuItem>

                    <MenuItem Header="{Binding lang}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        <MenuItem Name="en" Header="{Binding en}"/>
                        <MenuItem Name="ar" Header="{Binding ar}"/>
                    </MenuItem>

                  
                    <MenuItem Name="ittshortcut" Header="{Binding ittlink}">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                        </MenuItem.Icon>
                    </MenuItem>
                </MenuItem>
                

                <MenuItem Header="{Binding mirrorlinks}" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Center">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                    <MenuItem Name="mas" Header="Microsoft Activation Scripts (MAS)"/>
                    <MenuItem Name="idm" Header="IDM Activation"/>

                    <MenuItem Header="Browsers Extensions">
                        <MenuItem Name="uBlock" Header="uBlock Origin"/>
                        <MenuItem Name="unhook" Header="Unhook: Customize youtube"/>
                        <MenuItem Name="neat" Header="Neat Download Manager"/>
                    </MenuItem>
                </MenuItem>

                
                <MenuItem Name="dev" Header="{Binding about}" BorderBrush="Transparent" BorderThickness="1" VerticalAlignment="Center" HorizontalAlignment="Center">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                </MenuItem>

            <!--Catagory Section-->
                <ComboBox SelectedIndex="0" Margin="0" VerticalAlignment="Center" HorizontalAlignment="Center" Name="category" Width="100">
                    <ComboBoxItem Content="All"></ComboBoxItem>
                    <ComboBoxItem Content="Drivers"></ComboBoxItem>
                    <ComboBoxItem Content="Media"></ComboBoxItem> 
                    <ComboBoxItem Content="Browsers"></ComboBoxItem>
                    <ComboBoxItem Content="Documents"></ComboBoxItem>
                    <ComboBoxItem Content="Compression"></ComboBoxItem>
                    <ComboBoxItem Content="Communication"></ComboBoxItem>
                    <ComboBoxItem Content="File Sharing"></ComboBoxItem>
                    <ComboBoxItem Content="Imaging"></ComboBoxItem>
                    <ComboBoxItem Content="Launchers"></ComboBoxItem>
                    <ComboBoxItem Content="Utilities"></ComboBoxItem>
                    <ComboBoxItem Content="Development"></ComboBoxItem>
                    <ComboBoxItem Content="Microsoft"></ComboBoxItem>
                    <ComboBoxItem Content="Security"></ComboBoxItem>
                </ComboBox>
            <!--End Catagory Section-->

            


            </Menu>
        <!--End Menu Section-->

        <!--Search Section-->
            <Grid HorizontalAlignment="Right" Margin="0,0,15,0" Grid.Row="0"  VerticalAlignment="Center" >
                <TextBox Padding="6"
                                    Width="110"
                                    VerticalAlignment="Center"
                                    HorizontalAlignment="Left" 
                                    Text="{Binding Text_searchInput}"
                                    Name="searchInput" 
                                    />

                <TextBlock IsHitTestVisible="False" 
                                    Text=""
                                    FontFamily="Segoe MDL2 Assets" 
                                    VerticalAlignment="Center" 
                                    HorizontalAlignment="Left"
                                    Margin="16,0,0,0"
                                    Foreground="{DynamicResource FGTextColor}">

                    <TextBlock.Style>
                        <Style TargetType="{x:Type TextBlock}">
                            <Setter Property="Visibility" Value="Collapsed"/>
                            <Style.Triggers>
                                <DataTrigger Binding="{Binding Text, ElementName=searchInput}" Value="">
                                    <Setter Property="Visibility" Value="Visible"/>
                                </DataTrigger>
                            </Style.Triggers>
                        </Style>
                    </TextBlock.Style>
                </TextBlock>
            </Grid>        
        <!--End Search Section-->

    <!--End Header Section-->

        <!--TabControl-->
                <TabControl Name="taps" TabStripPlacement="Left" Grid.Row="1"  BorderBrush="{DynamicResource FGColor}" Foreground="White" Background="Transparent">
                        <TabItem Name="apps" Header="{Binding apps}" BorderBrush="{x:Null}">
                            <TabItem.HeaderTemplate>
                                <DataTemplate>
                                    <StackPanel Orientation="Horizontal">
                                        <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                        <TextBlock Text="{Binding}" Margin="0,0,5,0"/>
                                    </StackPanel>
                                </DataTemplate>
                        </TabItem.HeaderTemplate>
                            <TabItem.Content>
                                <ListView Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" Name="list" BorderBrush="{x:Null}" Background="{x:Null}">
                                    
        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SelfishNetV3" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Control your internet bandwidth with SelfishNet v3"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x360ce" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator allows your controller gamepad joystick steering wheel pedals etc to function on your PC as an Xbox 360 controller It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Media Player" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Media Player is designed to make listening to and watching your multimedia content more enjoyable At the heart of Media Player is a fullfeatured music library that allows you to quickly browse and play music as well as create and manage playlists All your content in the music and video folders on your PC will appear automatically in your library"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Charles" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Charles is an HTTP proxy  HTTP monitor  Reverse Proxy that enables a developer to view all of the HTTP and SSL  HTTPS traffic between their machine and the Internet This includes requests responses and the HTTP headers which contain the cookies and caching information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GameMaker-Studio" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="GameMaker Studio has everything you need for games development no matter what your level or expertise"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Azure CLI" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Azure CLI is available across Azure services and is designed to get you working quickly with Azure with an emphasis on automation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Postman" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Postman helps you be more efficient while working with APIs Using Postman you can construct complex HTTP requests quickly organize them in collections and share them with your coworkers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Youtube dl" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="outubedl is a small commandline program to download videos from YouTubecom and a few more sites It is written in Python and its not platform specific It should work in your Unix box in Windows or in Mac OS X It is released to the public domain which means you can modify it redistribute it or use it however you like"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Inkscape" Tag="Imaging" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Inkscape is an opensource vector graphics editor similar to Adobe Illustrator Corel Draw Freehand or Xara X What sets Inkscape apart is its use of Scalable Vector Graphics SVG an open XMLbased W3C standard as the native format"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rust" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Rust is a curlybrace blockstructured expression language It visually resembles the C language family but differs significantly in syntactic and semantic details Its design is oriented toward concerns of programming in the large that is of creating and maintaining boundaries  both abstract and operational  that preserve largesystem integrity availability and concurrency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Go Programming Language" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Go is expressive concise clean and efficient Its concurrency mechanisms make it easy to write programs that get the most out of multicore and networked machines while its novel type system enables flexible and modular program construction Go compiles quickly to machine code yet has the convenience of garbage collection and the power of runtime reflection Its a fast statically typed compiled language that feels like a dynamically typed interpreted language"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Graphics Command Center" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dont have time to mess around with settings The Intel Graphics Command Center easily finds and tunes your games complete with recommended settings for your computer Use oneclick optimization for many popular titles and instantly get the most out of your system Windows 10 version 1709 or higher6th Gen Intel Core Platforms or newer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="RepoZ" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="RepoZ provides a quick overview of the git repositories on your development machine including their current branch and a short status information It uses the repositories on your machine to create an efficient navigation widget and makes sure youll never loose track of your work along the way"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="QuickLook" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Quick Look is among the few features I missed from Mac OS X It enables very quick preview of file by pressing Space key while highlighting it without opening its associated application Then I decide to add this feature to Windows by myself which results this QuickLook project"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TeraCopy" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="TeraCopy is designed to copy and move files at the maximum possible speed It skips bad files during the copying process and then displays them at the end of the transfer so that you can see which ones need attention TeraCopy can automatically check the copied files for errors by calculating their CRC checksum values It also provides a lot more information about the files being copied than its Windows counterpart TeraCopy integrates with Windows Explorers rightclick menu and can be set as the default copy handler"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wireshark" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireshark is the worlds foremost and widelyused network protocol analyzer It lets you see whats happening on your network at a microscopic level and is the de facto and often de jure standard across many commercial and nonprofit enterprises government agencies and educational institutions Wireshark development thrives thanks to the volunteer contributions of networking experts around the globe and is the continuation of a project started by Gerald Combs in 1998"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winmerge" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="WinMerge is an Open Source differencing and merging tool for Windows WinMerge can compare both  folders and files presenting differences in a visual text format that is easy to understand and handle"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WinDirStat" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="WinDirStat is a disk usage statistics viewer and cleanup tool for Microsoft Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ESET Internet Security" Tag="Security" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ideal for modern users concerned about their privacy who actively use internet for shopping banking work and communication"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ONLYOFFICE" Tag="Documents" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="ONLYOFFICE is a project developed by experienced IT experts from Ascensio System SIA leading IT company with headquarters in Riga Latvia Originally ONLYOFFICE was designed for internal team collaboration An attempt to introduce it to a wider audience proved to be successful ONLYOFFICE received very positive feedback from the Internet community As a result its functionality was considerably revised and expanded that brought about a high and stable growth of users from different countries"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ShareX" Tag="File Sharing" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Screen capture file sharing and productivity tool"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CoreTemp" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Core Temp is a compact no fuss small footprint yet powerful program to monitor processor temperature and other vital information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Burp Suite Community Edition" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Burp Suite is an integrated platform for performing security testing of web applications Its various tools work seamlessly together to support the entire testing process from initial mapping and analysis of an applications attack surface through to finding and exploiting security vulnerabilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AdGuard Home" Tag="Security" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="AdGuard Home is a networkwide software for blocking ads and tracking After you set it up itll cover ALL your home devices and you dont need any clientside software for that"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="IconsExtract" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="The IconsExtract utility scans the files and folders on your computer and extract the icons and cursors stored in EXE DLL OCX CPL and in other file types"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flow Launcher" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dedicated to making your workflow flow more seamless Search everything from applications files bookmarks YouTube Twitter and more Flow will continue to evolve designed to be open and built with the community at heart"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LibreWolf" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="LibreWolf is designed to increase protection against tracking and fingerprinting techniques while also including a few security improvements This is achieved through our privacy and security oriented settings and patches LibreWolf also aims to remove all the telemetry data collection and annoyances as well as disabling antifreedom features like DRM"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WhatsApp" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="WhatsApp is an instant messaging and voiceoverIP service owned by technology conglomerate Meta It allows users to send text voice messages and video messages make voice and video calls and share images documents user"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Android Studio" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Android Studio is the official integrated development environment for Googles Android operating system built on JetBrains IntelliJ IDEA software and designed specifically for Android development"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HiSuite" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="HUAWEI HiSuite is the official Android Smart Device Manager toolHiSuite helps users to connect their HUAWEI smartphones and tablets to PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Active@ Partition Recovery" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Active Partition Recovery is a freeware toolkit that helps to recover deleted and damaged logical drives and partitions within Windows WinPE recovery boot disk and Linux recovery LiveCD environments"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="4K Video Downloader" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="4K Video Downloader allows downloading videos playlists channels and subtitles from YouTube Facebook Vimeo and other video sites in high quality"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="QQPlayer" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="QQPlayer media player"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Bandicam" Tag="Imaging" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Bandicam is a closedsource screen capture and screen recording software originally developed by Bandisoft and later by Bandicam Company that can take screenshots or record screen changes Bandicam consists of three main modes One is the Screen Recording mode which can be used for recording a certain area on the PC screen"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Office 365 Business" Tag="Microsoft" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Microsoft"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft 365 formerly Office 365 is a line of subscription services offered by Microsoft as part of the Microsoft Office product line The brand encompasses plans that allow use of the Microsoft Office software suite over the life of the subscription as well as cloudbased software as a service products for business environments such as hosted Exchange Server Skype for Business Server and SharePoint among others All Microsoft 365 plans include automatic updates to their respective software at no additional charge as opposed to conventional licenses for these programswhere new versions require purchase of a new license"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Wireless Bluetooth for Windows 10 and Windows 11" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Bluetooth for Windows 10 and Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="BlueStacks" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Play Android Games on PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HDD Low Level Format Tool" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Will erase LowLevel Format and recertify a SATA IDE or SCSI hard disk drive with any size of up to 281 474 976 710 655 bytes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VMware Workstation Player" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="VMware Workstation Player is a streamlined desktop virtualization application that runs another operating system on the same computer without rebooting VMware Workstation Player provides a simple user interface unmatched operating system support and portability across the VMware ecosystem"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Yarn" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Yarn is a package manager for the npm and bower registries with a few specific focuses"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Everything" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Everything Search Engine  locate files and folders by name instantly"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FileZilla" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="FileZilla Client is a fast and reliable crossplatform FTP FTPS and SFTP client with lots of useful features and an intuitive graphical user interface"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Skype" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Skype  Install Skype add your friends as contacts then call video call and instant message with them for free Call people who arent on Skype too at really low rates"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Subtitle Edit" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="With SE you can easily adjust a subtitle if it is out of sync with the video in several different ways You can also use SE for making new subtitles from scratch do use the timelinewaveformspectrogram or translating subtitles"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hosts File Editor" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hosts File Editor makes it easy to change your hosts file as well as archive multiple versions for easy retrieval"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TablePlus" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Modern native and friendly GUI tool for relational databases MySQL PostgreSQL SQLite MongoDB Redis and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kdenlive" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful nonlinear video editor"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MPC-BE" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Media Player Classic  BE is a free and open source audio and video player for Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MongoDB 7.3.2" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="MongoDB stores data using a flexible document data model that is similar to JSON Documents contain one or more fields including arrays binary data and subdocuments Fields can vary from document to document This flexibility allows development teams to evolve the data model rapidly as their application requirements change"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wamp Server 3.3.5" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="WampServer is a Windows web development environment It allows you to create web applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Subsystem for Linux WSL2" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="To install Windows Subsystem for Linux 2 run the following command from the command line or from PowerShell"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winaero Tweaker" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Customize the appearance and behavior of the Windows operating system"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FormatFactory" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="multifunctional media processing tools"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MusicBee" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="MusicBee makes it easy to organize find and play music files on your computer on portable devices and on the web"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Audacity" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Audacity is free open source crossplatform software for recording and editing sounds"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Java SE Runtime Environment 8.0.411" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Java allows you to play online games chat with people around the world calculate your mortgage interest and view images in 3D just to name a few Its also integral to the intranet applications and other ebusiness solutions that are the foundation of corporate computing Please note you now need a Java License from Oracle to use unless installed for Personal Use and Development Use"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Nerd Fonts - CascadiaCode" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs icons"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Avast Free Antivirus" Tag="Security" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Avast Free Antivirus"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kaspersky Anti-Virus" Tag="Security" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Antivirus protection from a range of IT threats and provides the basic tools needed to keep your PC secure"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kaspersky Virus Removal Tool" Tag="Security" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Designed to remove different types of infections from an infected PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Malwarebytes" Tag="Security" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Multiple layers of malwarecrushing tech including virus protection Thorough malware and spyware removal Specialized ransomware protection"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Oh My Posh" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Oh my Posh is a custom prompt engine for any shell that has the ability to adjust the prompt string with a function or variable"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VirtualBox" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="VirtualBox is a crossplatform virtualization application It installs on existing Intel or AMDbased computers whether they are running Windows Mac Linux or Solaris operating systems It extends the capabilities of your existing computer so that it can run multiple operating systems inside multiple virtual machines at the same time"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Scrcpy" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Scrcpy is a free and opensource tool that allows you to display and control your Android device from a computer It provides highperformance screen mirroring and supports various input methods"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Universal ADB Drivers" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Universal ADB Drivers are drivers that provide compatibility with a wide range of Android devices for debugging purposes They allow you to connect your Android device to a computer and use ADB commands"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Android Debug Bridge" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Android Debug Bridge ADB is a commandline tool that allows you to communicate with an Android device It is used for various debugging tasks such as installing and debugging apps"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FL Studio" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="FL Studio is a digital audio workstation DAW developed by ImageLine It allows you to compose arrange record edit mix and master professionalquality music"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Notion" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="The allinone workspace for your notes tasks wikis and databases"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PowerToys" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity It includes tools like FancyZones for window management PowerRename for batch renaming files and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Docker Compose" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Docker Compose is a tool for defining and running multicontainer Docker applications It allows you to use a YAML file to configure your applications services networks and volumes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Docker Desktop" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Docker Desktop is an easytoinstall application for Windows and macOS that enables developers to build share and run containerized applications and microservices locally"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GitHub Desktop" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="GitHub Desktop is a seamless way to contribute to projects on GitHub and GitHub Enterprise It provides an intuitive interface for managing repositories branching committing and merging code changes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Git" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Git is a free and opensource distributed version control system designed to handle everything from small to very large projects with speed and efficiency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Python" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Python is a popular highlevel programming language known for its simplicity and versatility It is used in various fields such as web development data science machine learning and automation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Cheat Engine" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Cheat Engine is an open source tool designed to help you modify single player games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="dnSpy" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="dnSpy is a tool to reverse engineer NET assemblies It includes a decompiler a debugger and an assembly editor and more and can be easily extended by writing your own extension It uses dnlib to read and write assemblies so it can handle obfuscated assemblies eg malware without crashing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x64dbg Portable" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource x64x32 debugger for windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Powershell core" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="PowerShell Core is a crossplatform Windows Linux and macOS automation and configuration toolframework that works well with your existing tools and is optimized for dealing with structured data eg JSON CSV XML etc REST APIs and object models"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Terminal" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Windows Terminal is a modern terminal application for users of commandline tools and shells like Command Prompt PowerShell and Windows Subsystem for Linux WSL It provides multiple tabs custom themes and GPUaccelerated text rendering"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Notepad++" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Notepad is a free source code editor and Notepad replacement that supports several languages It offers syntax highlighting code folding autocompletion and other features for efficient code editing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hugo" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hugo is one of the most popular opensource static site generators With its amazing speed and flexibility Hugo makes building websites f Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Electrum-LTS" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Electrum is a lightweight Bitcoin wallet focused on speed and simplicity with support for hardware wallets and multisig functionality LTS Long Term Support releases provide stability and security updates for an extended period"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Node.js LTS" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nodejs is a JavaScript runtime built on Chromes V8 JavaScript engine LTS Long Term Support releases are supported for an extended period and provide stability for production environments"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Jetbrains Rider" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Rider is a crossplatform NET IDE developed by JetBrains It supports C VBNET F ASPNET JavaScript TypeScript HTML CSS and SQL languages and frameworks"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PyCharm Professional Edition" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="PyCharm Professional Edition is a powerful IDE for professional Python development It includes advanced features such as database tools web development support and scientific tools integration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PyCharm Community Edition" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="PyCharm Community Edition is a free and opensource IDE for Python development It provides smart code completion code inspections onthefly error highlighting and quickfixes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="InnoSetup" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Inno Setup is a free installer for Windows programs First introduced in 1997 Inno Setup today rivals and even surpasses many commercial installers in feature set and stability"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Atom" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Atom is a text editor thats modern approachable yet hackable to the corea tool you can customize to do anything but also use productively without ever touching a config file"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Sublime Text 4" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Sublime Text 4  The sophisticated text editor for code markup and prose "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vim" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Vim is an advanced text editor that seeks to provide the power of the defacto Unix editor Vi with a more complete feature set Its us Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Code" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Code is a free sourcecode editor developed by Microsoft for Windows Linux and macOS It includes support for debugging embedded Git control syntax highlighting intelligent code completion snippets and code refactoring"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Blender" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Blender is a free and opensource professionalgrade 3D computer graphics and video compositing program"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unity3D Engine" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Unity is a crossplatform game creation system developed by Unity Technologies and used to develop video games for PC consoles mobile"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Godot Engine" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Godot is a featurepacked crossplatform game engine for creating 2D and 3D games It provides a comprehensive set of tools and features to develop games efficiently and quickly"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unity Hub" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Unity is a crossplatform game creation system developed by Unity Technologies and used to develop video games for PC consoles mobile"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Community 2022" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Community 2022 is a free fullyfeatured and extensible IDE for individual developers open source projects academic research education and small professional teams"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Professional 2022" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Professional 2022 is an integrated development environment IDE from Microsoft It is used to develop computer programs websites web apps web services and mobile apps"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="XAMPP" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="XAMPP is a free and opensource crossplatform web server solution stack package developed by Apache Friends consisting mainly of the Apache HTTP Server MariaDB database and interpreters for scripts written in the PHP and Perl programming languages"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Earth Pro" Tag="Imaging" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Google Earth Pro on desktop is free for users with advanced feature needs Import and export GIS data and go back in time with historical imagery"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="qBittorrent" Tag="File Sharing" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource BitTorrent client for downloading and uploading files via the BitTorrent protocol providing users with a lightweight and featurerich torrenting experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WifiInfoView" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wireless Network Watcher Portable" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UltraViewer" Tag="File Sharing" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remote control to support your clients  partners from everywhere"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Airdroid" Tag="File Sharing" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="AirDroid is a free and fast Android device manager app that allows you to access Android phonetablet from computer remotely and securely Manage SMS files photos and videos WhatsApp Line WeChat and more on computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AnyDesk" Tag="File Sharing" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote desktop software that allows users to access and control Windows macOS Linux Android and iOS devices from anywhere providing secure and reliable remote access"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unified Remote" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote control app that turns smartphones into universal remote controls for Windows macOS and Linux computers allowing users to control media playback presentations and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vysor" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A screen mirroring and remote control software that enables users to view and control Android devices from Windows PCs allowing for easy screen sharing app testing and troubleshooting"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FxSound" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An audio enhancer software that improves the sound quality of music videos and games on Windows PCs by providing advanced audio processing and customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rainmeter" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A customizable desktop customization tool that displays customizable skins widgets and applets on the Windows desktop providing users with realtime system monitoring and information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AutoHotkey" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A scripting language for automating repetitive tasks and creating macros on Windows allowing users to customize keyboard shortcuts remap keys and automate mouse actions"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="iVentoy" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="With iVentoy you can boot and install OS on multiple machines at the same time through the network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ventoy" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource tool for creating bootable USB drives with multiple ISO files allowing users to boot various operating systems or utilities directly from a single USB drive"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ultra ISO" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful ISO image management tool that enables users to create edit extract and burn ISO files providing a comprehensive solution for managing disk image files"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Virtual CloneDrive" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free software that allows users to mount disc images as virtual drives enabling them to access the content of ISO BIN and CCD files without the need for physical discs"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ImgBurn" Tag="Development" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Lightweight CD  DVD burning application "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rufus" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A utility tool for creating bootable USB drives from ISO images helping users to install or run operating systems such as Windows Linux or other utilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HandBrake" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource video transcoder tool that converts video files from one format to another supporting a wide range of input and output formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mem Reduct" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Lightweight realtime memory management application to monitor and clean system memory on your computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CPUID CPU-Z" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system monitoring utility that provides detailed information about the CPU motherboard memory and other hardware components of a computer system"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hard Disk Sentinel" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A hard disk monitoring and analysis software that helps users monitor the health performance and temperature of their hard drives SSDs and other storage devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FurMark" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A graphics card stress testing and benchmarking utility that helps users test the stability cooling and performance of their GPU by rendering a highly intensive 3D graphics scene"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Speccy" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system information tool that provides detailed information about the hardware and operating system of a computer including CPU RAM motherboard graphics card and storage devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HWiNFO" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A hardware information and diagnostic tool that provides detailed information about the hardware components of a computer system including sensors temperature voltage and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Easy Context Menu" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="To install Easy Context Menu run the following command from the command line or from PowerShell"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="BCUninstaller" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful uninstaller tool for Windows that allows users to remove unwanted programs plugins and Windows Store apps along with leftover files and registry entries"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CCleaner" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system optimization privacy and cleaning tool that helps users remove unused files clean up temporary files and optimize their Windows PCs for better performance"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Recuva recover" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A data recovery software that helps users retrieve accidentally deleted files including photos documents videos and more from various storage devices such as hard drives USB drives and memory cards"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AOMEI Backupper" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A backup and recovery software that enables users to create system backups disk backups partition backups and file backups to protect data against system failures and data loss"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AOMEI Partition Assistant Standard" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="AOMEI Partition Assistant Standard allows you to realize disk upgradereplacement partition style conversion OS migration and other disk managements without any difficulties"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MiniTool Partition Wizard" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A disk partition management tool that allows users to create resize move merge split copy and convert partitions on their hard drives or storage devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="1Password" Tag="Utilities" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A password manager that securely stores login credentials credit card information and other sensitive data in an encrypted vault accessible with a single master password"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Store Explorer" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Windows driver store utility"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Display Driver Uninstaller" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Utility to completely remove system drivers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Genius" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Professional driver management tool and hardware diagnostics"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver booster" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Scans and identifies outdated drivers automatically and downloads and installs the right update for you with just ONE click"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Snappy Driver Installer" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource tool for updating and installing device drivers on Windows offering offline driver updates and wide hardware support"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Network Adapter" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Network Adapter Drivers for Windows 10"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Driver Support Assistant" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Driver  Support Assistant enables you to scan computing devices for the latest drivers available from Intel"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Graphics Windows DCH" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Graphics Driver for Windows 10"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Easy" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A driver update tool that automatically detects downloads and installs device drivers for the users computer hardware"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Playnite" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Open source video game library manager and launcher with support for 3rd party libraries like Steam GOG Origin Battlenet and Uplay"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Lively Wallpaper" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A software that allows users to set animated and interactive wallpapers on their Windows desktop providing various customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Logitech Gaming Software" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Logitech Gaming Software lets you customize Logitech G gaming mice keyboards headsets and select wheels"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OBS Studio" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource software for video recording and live streaming It offers high performance realtime videoaudio capturing and mixing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StreamlabsOBS" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource streaming software built on top of OBS Studio with additional features tailored for streamers such as builtin alerts overlays and chat integration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GameSave Manager" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A utility tool that allows users to backup restore and transfer their game saves between different gaming platforms and directories"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rockstar Games Launcher" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Download and play the latest Rockstar Games PC titles"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Origin" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Game store launcher"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ubisoft Connect" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A digital distribution digital rights management multiplayer and communications service developed by Ubisoft providing access to Ubisofts games rewards and social features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Steam" Tag="Launchers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Launchers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A digital distribution platform developed by Valve Corporation for purchasing and playing video games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVIDIA PhysX" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A physics processing unit PPU software development kit SDK offered by NVIDIA for realtime physics simulations in video games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Msi Afterburner" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="MSI Afterburner is the ultimate graphics card utility codeveloped by MSI and RivaTuner teams"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVIDIA GeForce Experience" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A cloudbased gaming service provided by NVIDIA that allows users to play video games on supported devices via a remote gaming PC hosted on NVIDIAs servers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVidia Display Driver" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="The software component that allows the operating system and installed software to communicate with and control the NVIDIA graphics processing unit GPU"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AMD Ryzen Chipset Drivers" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Supports AMD Ryzen Threadripper PRO Processor AMD Ryzen 800070407000 Series Desktop  Mobile Processors AMD Ryzen 50003rd Gen2nd Gen Desktop  Threadripper Processors AMD Ryzen Desktop Processor with Radeon Graphics  Mobile Processor with Radeon Graphics 7thGen AMD ASeries Processors AMD X670EX670B650EB650B350A320X370X399B450X470X570B550A520A620TRX40TRX50WRX80WRX90 Chipsets"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Framework All Versions" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A comprehensive and consistent programming model for building applications that have visually stunning user experiences seamless and secure communication and the ability to model a range of business processes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2015-2022  (x86) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 20152022 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2015-2022 (x64) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 20152022 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2013 (x64) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2013 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2013 (x86) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2013 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2012 (x64) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2012 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2012 (x86) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2012 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2010 (x64) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2010 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2010 (x86) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2010 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2008 (x64) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2008 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2008 (x86) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2008 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2005 (x64) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2005 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2005 (x86) Redistributable" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2005 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ Runtime - all versions" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft Visual C Redistributable installs runtime components of Visual C libraries These components are required to run C applications that are developed using Visual Studio and link dynamically to Visual C libraries"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="DirectX" Tag="Drivers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="DirectX is a collection of APIs for handling tasks related to games and videos"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GIMP" Tag="Imaging" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource raster graphics editor used for image retouching and editing drawing and painting and converting between different image formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TeamViewer" Tag="File Sharing" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote access and support software that enables users to remotely control computers transfer files and collaborate online facilitating remote work and IT support"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Discord" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A VoIP application and digital distribution platform designed for creating communities and connecting gamers providing text voice and video communication features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Teams" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A collaboration platform that combines workplace chat video meetings file storage and application integration enhancing teamwork and productivity within organizations"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Zoom" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A video conferencing app that facilitates online meetings webinars and virtual events allowing participants to interact through video audio and chat"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Meta Messenger" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A messaging app that allows users to connect with friends and family through text messages voice calls and video calls offering various multimedia sharing features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Signal" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fast simple secure Privacy that fits in your pocket"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Telegram Desktop" Tag="Communication" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A crossplatform messaging app with a focus on speed and security offering endtoend encryption and a wide range of features such as group chats file sharing and stickers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PeaZip" Tag="Compression" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text=" PeaZip is a free crossplatform file archiver"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="7-Zip" Tag="Compression" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource file archiver with a high compression ratio supporting various archive formats and providing a powerful commandline interface"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WinRAR" Tag="Compression" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular file compression and archiving utility that supports various archive formats and offers advanced features such as encryption and selfextracting archives"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SumatraPDF" Tag="Documents" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and fast PDF reader with minimalistic design and focus on simplicity and speed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LibreOffice" Tag="Documents" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful opensource office suite providing word processing spreadsheet presentation and other office tools compatible with Microsoft Office formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FoxitReader" Tag="Documents" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and featurerich PDF reader with annotation form filling and document signing capabilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OpenOffice" Tag="Documents" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource office productivity suite offering word processing spreadsheet presentation and other office tools compatible with Microsoft Office formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FastStone Image Viewer" Tag="Imaging" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="FastStone Image Viewer is a fast stable userfriendly image browser converter and editor "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Spotify" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Spotify is a new way to listen to music"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Aimp" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and featurerich audio player with support for various audio formats and customizable interface themes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winamp" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A classic media player known for its customizable interface and extensive plugin support providing a nostalgic music playback experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Jellyfin" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource media server software that enables users to stream their media libraries across devices providing a selfhosted alternative to commercial services"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kodi" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful opensource media center software that allows users to organize and stream their media collections"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VLC" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A versatile media player capable of playing almost any multimedia file format with support for various streaming protocols"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PotPlayer" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A multimedia player with a sleek interface and advanced features supporting a wide range of audio and video formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="K-Lite Mega Codec Full Pack" Tag="Media" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Comprehensive collection of audio and video codecs filters and tools enabling playback of various media formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="JDownloader" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="JDownloader is an internet download manager"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Neat Download Manager" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Introducing Neat Download Manager the powerful neatdownload manager that supports macOS Windows 7 or later and Windows 11 With lightningfast downloads smart file filter management and the best features start downloading today and see why Neat Download Manager is the perfect tool for your"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Internet Download Manager" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular download manager tool that accelerates downloads and allows users to organize and schedule downloads efficiently"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Opera" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Opera web browser makes the Web fast and fun giving you a better web browser experience on any computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Tor Browser" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser that prioritizes user privacy by routing internet traffic through a global network of servers enabling anonymous browsing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Brave" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A privacyfocused web browser that blocks ads and trackers offering faster and safer browsing experiences"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Chromium" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource web browser project that serves as the foundation for many browsers including Google Chrome"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Chrome" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular web browser known for its speed simplicity and vast ecosystem of extensions"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Edge" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsofts web browser built for fast and secure internet surfing integrating seamlessly with Windows ecosystem"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Firefox" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A widelyused opensource web browser known for its speed privacy features and customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thorium AVX" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser designed for smooth and secure browsing experiences"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thorium SSE3" Tag="Browsers" IsChecked="false" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content="Browsers"/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser designed for smooth and secure browsing experiences"/>
        </StackPanel>

                                </ListView>
                            </TabItem.Content>
                        </TabItem>
                        <TabItem x:Name="tweeksTab" Header="{Binding tweaks}" BorderBrush="{x:Null}" Background="{x:Null}">
                            <TabItem.HeaderTemplate>
                                    <DataTemplate>
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                            <TextBlock Text="{Binding}" Margin="0,0,5,0"/>
                                        </StackPanel>
                                    </DataTemplate>
                            </TabItem.HeaderTemplate>
                                <ListView Name="tweaks"  Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" BorderBrush="{x:Null}" Background="{x:Null}">
                                    
        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Meet Now icon on Taskbar Windows 10"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Earlier this year Microsoft introduced Meet Now in Skype Meet Now makes it easy to connect with anyone in as little as two clicks for free and each call can last up to 24 hours"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable OneDrive"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disabling OneDrive"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Hibernate"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hibernate is a powersaving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Unnecessary Windows 10/11 Apps"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="BingNews GetHelp Getstarted Messaging Microsoft3DViewer MicrosoftOfficeHub MicrosoftSolitaireCollection News OfficeLens OfficeOneNote OfficeSway OneConnect People Print3D RemoteDesktop SkypeApp StorePurchaseApp OfficeTodoList Whiteboard WindowsAlarms WindowsCamera windowscommunicationsapps WindowsFeedbackHub WindowsMaps WindowsSoundRecorder XboxTCUI XboxApp XboxGameOverlay XboxIdentityProvider XboxSpeechToTextOverlay ZuneMusic ZuneVideo WindowsCortana MSPaint"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Optimize Services"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Print Spooler Fax Diagnostic Policy Downloaded Maps Manager Windows Error Reporting Service Remote Registry  Internet Connection Sharing Disables Telemetry and Data "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Folder Shortcuts From Windows'' File Explorer"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remove Documents Videos Pictures Desktop Shortcuts from File Explorer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable People icon on taskbar"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables People on taskbar"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Show Search icon Only on taskbar"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show Search Icon Only"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable the News and interests on taskbar"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables the News and interests"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable suggestions on start menu"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables suggestions on start menu"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Turn off background apps"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Turn off background apps"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Windows Web Search"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable web search in Windows by modifying the registry settings related to Windows Search It sets the BingSearchEnabled value to 0 effectively turning off web search results"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Start menu ads"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Start menu Ads and Settings"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Data Collection"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Data Collection"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Game Mode"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="This tweak disables Game Mode"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Setup Auto login"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Setup auto login Windows username"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Reset the TCP/IP Stack"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you have an internet problem Reset network configuration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable the Ultimate Performance Power Plan"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Enable the Ultimate Performance Power Plan"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fix Stutter/Lag in Games"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fix Stutter in Games Disable GameBarPresenceWriter Windows 1011"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore All Windows Services to Default"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you face a problem with some system services you can restore all services to Default"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Run Disk cleanup"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clean temporary files that are not necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="8">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="System File Checker"   FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontFamily="airal"  FontSize="12" Content=""/>
            </StackPanel>
                <TextBlock Width="500" Background="Transparent" Margin="15,5,0,10" VerticalAlignment="Center" TextWrapping="Wrap" Text="sfc scannow Use the System File Checker tool to repair missing or corrupted system files"/>
        </StackPanel>

                                </ListView>
                        </TabItem>
                </TabControl>
<!--End TabControl-->


    <!--Footer Section-->
            <Grid Grid.Row="2">
                    <!--applyBtn Button-->
                    <Button
                    Name="applyBtn"
                    Content="{Binding applyBtn}"
                    FontSize="15"
                    HorizontalAlignment="Right"
                    VerticalAlignment="Bottom"
                    Width="130" Height="40" Margin="15"/>
                <!--End applyBtn Button-->


                <!--Install Button-->
                    <Button
                        Name="installBtn"
                        Content="{Binding instalLBtn}"
                        FontSize="15"
                        HorizontalAlignment="Right"
                        VerticalAlignment="Bottom"
                        Width="130" Height="40" Margin="15"/>
                <!--End Install Button-->
            </Grid>

            <StackPanel Orientation="Horizontal" Grid.Row="3">


                        <TextBlock Name="quotes"
                            HorizontalAlignment="Left"
                            VerticalAlignment="Center" 
                            TextWrapping="Wrap"
                            Margin="15,0,0,0"
                            FlowDirection="LeftToRight"
                            Text="aaa"
                            Width="622"
                            />
            </StackPanel>
    <!--End Footer Section-->

</Grid>

</Window>
<!--End Window-->


'
#===========================================================================
#endregion End WPF Window
#===========================================================================

#===========================================================================
#region Begin WPF About
#===========================================================================

$childXaml = '<Window
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Name="Window" Title="About | ITT " WindowStartupLocation = "CenterScreen" 
  Background="White"
  WindowStyle="ToolWindow"
  Height="344" Width="444" FontFamily="Console" MinWidth="444" MinHeight="344" ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/icon.ico">
    <Grid>

      <Grid.RowDefinitions>
        <RowDefinition Height="*"/>
        <RowDefinition Height="auto"/>
      </Grid.RowDefinitions>

       <!--Logo-->
       <Ellipse Margin="25" VerticalAlignment="Top" HorizontalAlignment="Left" Name="about" Width="70" Height="70" ToolTip="Enad Adel">
        <Ellipse.Fill>
          <ImageBrush ImageSource="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/logo.png" />
        </Ellipse.Fill>
      </Ellipse>
      <!--End Logo-->

      <StackPanel Grid.Row="0" Orientation="Vertical" VerticalAlignment="Center" HorizontalAlignment="Center">
        <TextBlock Margin="5" TextWrapping="Wrap" FontWeight="Bold" FontSize="30" TextAlignment="Center" Text="ITT"/>
        <TextBlock Margin="5" TextWrapping="Wrap" FontWeight="Bold" FontSize="15" TextAlignment="Center" Text="Install and Tweak Tool"/>
        <TextBlock Margin="5" TextWrapping="Wrap" Text="Developer Emad Adel" TextAlignment="Center"/>
        <TextBlock Margin="5" Name="ver" TextWrapping="Wrap" TextAlignment="Center" Text="2024/4/21"/>
      </StackPanel>

      <StackPanel Margin="25" Grid.Row="1" Orientation="Vertical" VerticalAlignment="Center" HorizontalAlignment="Center">

        <TextBlock Margin="25" Name="sourcecode" Cursor="Hand" TextAlignment="Center" Text="{Binding sourcecode}"/>
        <StackPanel Orientation="Horizontal">
        <TextBlock Name="website" Margin="10" Cursor="Hand"  Text="EProjects"/>
        <TextBlock Name="telegram" Margin="10" Cursor="Hand"  Text="Telegram"/>
        <TextBlock Name="github" Margin="10" Cursor="Hand"  Text="Github"/>
        </StackPanel>
      </StackPanel>
    </Grid>
  </Window>
'
#===========================================================================
#endregion End WPF About
#===========================================================================

#===========================================================================
#region Begin loadXmal
#===========================================================================

# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'sync',$sync,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

# Create the runspace pool
$sync.runspace = [runspacefactory]::CreateRunspacePool(
    1,                      # Minimum thread count
    $maxthreads,            # Maximum thread count
    $InitialSessionState,   # Initial session state
    $Host                   # Machine to create runspaces on
)

# Open the RunspacePool instance
$sync.runspace.Open()

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML

# Read the XAML file
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
try { 
    
    $sync["window"] = [Windows.Markup.XamlReader]::Load( $reader )
    
    # Check if the registry key exists
    if (-not (Test-Path $sync.registryPath))
    {
        New-Item -Path "HKCU:\Software\ITTEmadadel" -Force *> $null
        Set-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "DarkMode" -Value "false" -Force 
    }

    $sync.isDarkMode = (Get-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "DarkMode").DarkMode
    #$sync.Langusege  = (Get-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "lang").lang

    $currentCulture = [System.Globalization.CultureInfo]::CurrentCulture
    $shortCulture = $currentCulture.Name.Substring(0,2)

    if($shortCulture -eq "en")
    {
        $sync["window"].DataContext = $sync.database.locales.en

    }
    elseif ($shortCulture -eq "ar") {
        $sync["window"].DataContext = $sync.database.locales.ar
    }
    else
    {
        # default lang
        $sync["window"].DataContext = $sync.database.locales.en
        #Write-Host "fallback to default lang"
    }

    # Check if $themeValue is equal to "true"
    if ($sync.isDarkMode -eq "true")
    {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))

    } else {
        $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
    }

 }
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    Write-Host $error[0].Exception.Message -ForegroundColor Red
    If ($error[0].Exception.Message -like "*button*") {
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
}

# Select all elements with a Name attribute using XPath and iterate over them
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {
    # Assign each element to a variable in $sync dictionary
    $sync[$($_.Name)] = $sync["window"].FindName($_.Name)
}

# Iterate over keys in $sync dictionary
$sync.Keys | ForEach-Object {
    $element = $sync[$_]

    # Check if the element exists
    if ($element) {

        # Check if the element is a Button
        if ($element.GetType().Name -eq "Button") {
            # Add a click event handler to the button

            $element.Add_Click({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a MenuItem
        if ($element.GetType().Name -eq "MenuItem") {
            # Add a click event handler to the MenuItem

            $element.Add_Click({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a TextBox
        if ($element.GetType().Name -eq "TextBox") {

            $element.Add_TextChanged({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })

            $element.Add_GotFocus({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a Ellipse
        if ($element.GetType().Name -eq "Ellipse") {
                # Add a click event handler to the Ellipse
    
                $element.add_MouseLeftButtonDown({
                    param([System.Object]$s)
                    Invoke-Button $s.Name
                })
        }

        # Check if the element is a ComboBox
        if ($element.GetType().Name -eq "ComboBox") {
            # Add a click event handler to the ComboBox

            $element.add_SelectionChanged({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }

        # Check if the element is a TabControl
        if ($element.GetType().Name -eq "TabControl") {
            # Add a click event handler to the TabControl

            $element.add_SelectionChanged({
                param([System.Object]$s)
                Invoke-Button $s.Name
            })
        }
    }
}

# Catch controls
$sync.AppsListView = $sync['window'].FindName("list")
$sync.Description = $sync['window'].FindName("description")
$sync.Quotes = $sync['window'].FindName("quotes")
$sync.TweaksListView = $sync['window'].FindName("tweaks")
$sync.itemLink = $sync['window'].FindName('itemLink')
$sync.installBtn = $sync['window'].FindName('installBtn') 
$sync.applyBtn = $sync['window'].FindName('applyBtn') 
$sync.category = $sync['window'].FindName('category')
$sync.searchInput = $sync['window'].FindName('searchInput')


# if($sync.Langusege -eq "en")
# {
#     $sync["window"].DataContext = $sync.database.locales.en

# }
# else
# {
#     $sync["window"].DataContext = $sync.database.locales.ar
# }
#===========================================================================
#endregion End loadXmal
#===========================================================================


#===========================================================================
#region Begin Functions
#===========================================================================


function Invoke-ScriptBlock {
    param(
        [scriptblock]$ScriptBlock,
        [array]$ArgumentList
    )

       
        $script:powershell = [powershell]::Create()

        # Add Scriptblock and Arguments to runspace
        $script:powershell.AddScript($ScriptBlock)
        $script:powershell.AddArgument($ArgumentList)
        $script:powershell.RunspacePool = $sync.runspace

        $script:handle = $script:powershell.BeginInvoke()

        if ($script:handle.IsCompleted)
        {
            $script:powershell.EndInvoke($script:handle)
            $script:powershell.Dispose()
            $sync.runspace.Dispose()
            $sync.runspace.Close()
            [System.GC]::Collect()
        }
}

function Send-SystemInfo {
    param (
        [string]$FirebaseUrl,
        [string]$Key
    )

    # Validate parameters
    if (-not $FirebaseUrl -or -not $Key) {
        throw "FirebaseUrl and Key are mandatory parameters."
    }

    # Reuse connection to Firebase URL
    $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
    $firebaseUrlRoot = "$FirebaseUrl.json"

    # Check if the key exists
    $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction SilentlyContinue

    if ($existingData) {
        # Increment runs if data exists
        $runs = $existingData.runs + 1

        # Update PC info with the existing data
        $pcInfo = @{
            "Domain" = $env:COMPUTERNAME
            "OS" = [Environment]::OSVersion.VersionString
            "Username" = $env:USERNAME
            "RAM" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
            "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
            "Runs" = $runs
            "AppsTweaks" = $existingData.AppsTweaks
        }
    }
    else {
        # Set runs to 1 if key doesn't exist
        $runs = 1

        # Get PC info for new entry
        $pcInfo = @{
            "Domain" = $env:COMPUTERNAME
            "OS" = [Environment]::OSVersion.VersionString
            "Username" = $env:USERNAME
            "RAM" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
            "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
            "runs" = $runs
            "AppsTweaks" = @{}
        }
    }

    # Convert to JSON
    $json = $pcInfo | ConvertTo-Json 

    # Set headers
    $headers = @{
        "Content-Type" = "application/json" 
    }

    # Update Firebase database with the new value
    Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers | Out-Null

    # Count the number of keys directly under the root
    $response = Invoke-RestMethod -Uri $firebaseUrlRoot -Method Get -ErrorAction SilentlyContinue
    $totalKeys = ($response | Get-Member -MemberType NoteProperty | Measure-Object).Count

    # Define the desired order of keys for display
    $displayOrder = @("Username", "Domain", "OS", "CPU", "GPU", "RAM", "Start At", "Runs")

    # Display PC info excluding "AppsTweaks" in the specified order
    foreach ($key in $displayOrder) {
        if ($pcInfo.ContainsKey($key)) {
            Write-Host "  $key : $($pcInfo[$key])" -ForegroundColor Yellow
        }
    }

    Write-Host ""
    Write-Host " ($totalKeys) Devices use this tool." -ForegroundColor Yellow
}

function WriteAText {
    param (
        $message,
        $color
    )
    
$output = Write-Host "
 ___ _____ _____   _____ __  __    _    ____    _    ____  _____ _     
 |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \  / \  |  _ \| ____| |    
  | |  | |   | |   |  _| | |\/| | / _ \ | | | |/ _ \ | | | |  _| | |    
  | |  | |   | |   | |___| |  | |/ ___ \| |_| / ___ \| |_| | |___| |___ 
  |_|  |_|   |_|   |_____|_|  |_/_/   \_\____/_/   \_\____/|_____|_____|

 $message
 (IT Tools) is open source, You can contribute to improving the tool.
 If you have trouble installing a program, report the problem on feedback links
 https://github.com/emadadel4/ITT/issues
 https://t.me/emadadel4
" -ForegroundColor "$color"
return $output


}

function Startup {

    param ([bool]$firstBoot)

    if($firstBoot -eq $true)
    {
        Write-Host (WriteAText -color White -message  "Starting up... it won't take longer.") 

    }
    else
    {
        Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    }

    Send-SystemInfo -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME


}

function CheckChoco 
{
    # Check if Chocolatey is installed
    if (-not (Get-Command choco -ErrorAction SilentlyContinue))
    {
        Startup -firstBoot $true
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
        Clear-Host
        Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    }
    else
    {
        Startup -firstBoot $false
    }
}

CheckChoco



function Get-SelectedTweaks
{

    $items = @()

    foreach ($item in $sync.TweaksListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Tweaks)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{
                                                Name = $program.Name
                                                Type = $program.type
                                                registry = $program.Registry
                                                service = $program.Service
                                                removeAppxPackage = $program.RemoveAppxPackage
                                                Commands = $program.Commands
                                                # if you want to implement a new thing from JSON applications do it here.
                                            }

                                        }
                                    }
                            }

                        }
                    }
                }
            }
        }
    }

    return $items 
}

function ShowSelectedTweaks {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)

    $filterPredicate = {
       param($item)

       if ($item -is [System.Windows.Controls.StackPanel]) {

        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
    
                        $tagToFilter =  $true
                        # Check if the item has the tag
                        $itemTag = $innerChild.IsChecked
                        return $itemTag -eq $tagToFilter
                    }
                }
            }
        }

        $collectionView.Filter = $filterPredicate
    }

       
   }

   $collectionView.Filter = $filterPredicate

}

function Invoke-ApplyTweaks
{

    if($sync.ProcessRunning)
    {
        $msg = "Please wait for the tweak to be applying...."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

        $tweaks  = Get-SelectedTweaks

        if($tweaks.Count -gt 0)
        {

            ShowSelectedTweaks

            Invoke-ScriptBlock -ArgumentList $tweaks -ScriptBlock{

                param($tweaks)
                
                function Set-Registry {
                    param (
                        $Name,
                        $Type,
                        $Path,
                        $Value
                    )
                    
                    try
                    {

                        # Check if the registry path exists
                        if (-not (Test-Path -Path $Path)) {
                            Write-Output "Registry path does not exist. Creating it..."
                            # Try to create the registry path
                            try {
                                New-Item -Path $Path -Force -ErrorAction Stop | Out-Null
                                Write-Output "Registry path created successfully."
                            } catch {
                                Write-Output "Failed to create registry path: $_"
                            }
                        } else {

                            Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
                            Write-Host "$($Path) disabled" -ForegroundColor Yellow
                            Write-Output "Registry path already exists."
                        }

                    }
                
                    catch {
                        Write-Error "An error occurred: $_"
                    }
                    
                }

                function Remove-Registry {
                    param (
                        [Parameter(Mandatory=$true)]
                        [string]$RegistryPath,
                        [Parameter(Mandatory=$true)]
                        [string]$Folder
                    )
                
                    try {
                        # Combine the registry path and folder to create the full registry key path
                        $KeyPath = "$RegistryPath\\$Folder"
                
                        # Check if the registry key exists
                        if (Test-Path "Registry::$KeyPath") {
                            # Delete the registry key and all subkeys recursively
                            Remove-Item -Path "Registry::$KeyPath" -Recurse -Force
                            Write-Output "Registry key '$KeyPath' and its subkeys have been deleted." -ForegroundColor Yellow
                        } else {
                            Write-Output "Registry key '$KeyPath' does not exist." -ForegroundColor Red
                        }
                    }
                    catch {
                        Write-Output "An error occurred: $_" -ForegroundColor red
                    }
                }

                function Disable-Service {
                    param(
                        $ServiceName,
                        $StartupType
                    )

                    try {


                         # Check if the service exists
                        if (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue) {

                            Set-Service -Name $ServiceName -StartupType $StartupType -ErrorAction Stop
                            Stop-Service -Name $ServiceName 
                            Write-Host "Service '$ServiceName' disabled." -ForegroundColor Yellow
                        }
                        else {
                            Write-Host "Service '$ServiceName' not found." -ForegroundColor Yellow
                        }
                    }
                    catch
                    {
                        Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
                    }
                }

                function UninstallAppxPackage  {

                    param (
                        $Name
                    )
                    
                    if (powershell.exe -Command "Import-Module Appx; if (Get-AppxPackage -Name '$Name' -ErrorAction SilentlyContinue) { exit 0 } else { exit 1 }")
                    {
                        try {

                            powershell.exe -Command "Import-Module Appx; Get-AppxPackage -AllUsers -Name $($Name) | Remove-AppxPackage -ErrorAction Stop"
                            Write-Host "Successfully removed $($Name)" -ForegroundColor Yellow
                        } 
                        catch {
                            #Write-Host "Failed to remove $($Name). $_" -ForegroundColor red
                        }
                    }
                    else {
                        Write-Host "$($Name) : Not found." -ForegroundColor Yellow
                    }
                }
                
                function UpdateUI {

                    param($InstallBtn,$Description)
                    
                    $sync['window'].Dispatcher.Invoke([Action]{
                        $sync.applyBtn.Content = "$InstallBtn"
                        #$sync.Description.Text = "$Description"
                    })
                }

                function Finish {

                    $sync.TweaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweaksListView.Items)
                        {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        
                                            $innerChild.IsChecked = $false
                                            $sync['window'].FindName('list').Clear()
                                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                                            $collectionView.Filter = $null
                                        }
                                    }
                                }
                            }
                        }
                    })

                    UpdateUI -InstallBtn "Apply" -Description "" 


                    Start-Sleep 5

                    Clear-Host

Write-Host "
 +----------------------------------------------------------------------------+
 |  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _      |
 | |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |     |
 |  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |     |
 |  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___  |
 | |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |
 |                                                                            |
 +----------------------------------------------------------------------------+
 You ready to Install anything.

 (IT Tools) is open source, You can contribute to improving the tool.
 If you have trouble installing a program, report the problem on feedback links
 https://github.com/emadadel4/ITT/issues
 https://t.me/emadadel4
                    " -ForegroundColor White
                }

                function CustomMsg 
                {
                    param (

                        $title,
                        $msg,
                        $MessageBoxButton,
                        $MessageBoxImage,
                        $answer

                    )

                    [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
                }

                try
                {
                    $msg = [System.Windows.MessageBox]::Show("Do you want to apply $($tweaks.Count) selected Tweaks", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                    if ($msg -eq "Yes")
                    {
                        UpdateUI -InstallBtn "Wait..." -Description "Applying..." 
                        $sync.ProcessRunning = $true

                        foreach ($app in $tweaks) 
                        {

                            if ($app.Type -eq "command")
                            {
                                foreach ($cmd in $app.Commands) 
                                {
                                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($cmd.run)`"" -NoNewWindow -Wait
                                    Write-Host $app.Name Done 

                                    # debug
                                    #Write-Host Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($cmd.run)`"" -NoNewWindow -Wait
                                }
                            }

                            if ($app.Type -eq "modifying")
                            {
                                foreach ($mod in $app.registry) 
                                {
                                    Set-Registry -Name $mod.Name -Type $mod.Type -Path $($mod.Path) -Value $mod.Value

                                    # debug
                                    Write-Host Set-Registry -Name $mod.Name -Type $mod.Type -Path "$($mod.Path)" -Value $mod.Value
                                    #Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `" $($mod.refresh) `"" -NoNewWindow -Wait
                                }
                            }

                            if ($app.Type -eq "delete")
                            {
                                foreach ($re in $app.registry) 
                                {
                                    #Remove-Registry -RegistryPath $re.Path -Folder $re.Name

                                    # debug
                                    #Write-Host Remove-Registry -RegistryPath $re.Path -Folder $re.Name
                                    #Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `" $($re.refresh) `"" -NoNewWindow -Wait
                                }
                            }
            
                            if ($app.Type -eq "service")
                            {
                                foreach ($se in $app.service) 
                                {
                                    Disable-Service -ServiceName $($se.Name) -StartupType $($se.StartupType)
                                }
                            }

                            if ($app.Type -eq "AppxPackage")
                            {
                                foreach ($appx in $app.removeAppxPackage) 
                                {
                                   UninstallAppxPackage -Name "$($appx.Name)"

                                   # debug
                                   # Write-Host UninstallAppxPackage -Name "$($appx.Name)"
                                }
                            }
                        }

                        $sync.ProcessRunning = $False
                        CustomMsg -title "ITT | Emad Adel" -msg "Done" -MessageBoxImage "Information" -MessageBoxButton "OK"

                        Start-Sleep -Seconds 1
                        Finish

                    }
                    else
                    {
                        # Uncheck all checkboxes in $list
                        $sync.TweaksListView.Dispatcher.Invoke([Action]{
                            foreach ($item in $sync.TweaksListView.Items)
                            {
                                foreach ($child in $item.Children) {
                                    if ($child -is [System.Windows.Controls.StackPanel]) {
                                        foreach ($innerChild in $child.Children) {
                                            if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            
                                                $innerChild.IsChecked = $false
                                                $sync['window'].FindName('list').Clear()
                                                $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                                                $collectionView.Filter = $null
                                            }
                                        }
                                    }
                                }
                            }
                        })
                    }
                }
                catch {
                    Write-Host "Error: $_"
                }
            }
        }
        else
        {
            [System.Windows.MessageBox]::Show("Choose at least one tweak", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
        }
}


function Invoke-Button {

    Param ([string]$debug)

    # debug
    #Write-Host $debug

    Switch -Wildcard ($debug){

        "installBtn" {Invoke-Install $debug}
        "applyBtn" {Invoke-ApplyTweaks $debug}
        "taps" {ChangeTap $debug}
        "category" {FilterByCat($sync.category.SelectedItem.Content) $debug}
        "searchInput" {Search; $sync['window'].FindName('category').SelectedIndex = 0; $sync['window'].FindName('apps').IsSelected = $true; $debug }

        #===========================================================================
        #region Menu items
        #===========================================================================
        "load" {LoadJson $Button}

        "ar" {
            $sync["window"].DataContext = $sync.database.locales.ar
            $Button
        }

        "en" {
            $sync["window"].DataContext = $sync.database.locales.en
            $Button
        }


        "save" {SaveItemsToJson $debug}
        "logo" {About $debug}
        "mas" {Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts") $debug}
        "idm" { Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script") $debug}
        "unhook" { Start-Process ("https://unhook.app/") $debug}
        "uBlock" { Start-Process ("https://ublockorigin.com/") $debug}
        "dev" { About $Button}
        "deviceManager" {Start-Process devmgmt.msc $debug}
        "appsfeatures" {Start-Process ms-settings:appsfeatures $debug}
        "sysinfo" {Start-Process msinfo32.exe; dxdiag.exe; $debug}
        "poweroption" {Start-Process powercfg.cpl $debug}
        "services" {Start-Process services.msc $debug}
        "network" {Start-Process ncpa.cpl $debug}
        "taskmgr" {Start-Process taskmgr.exe $debug}
        "diskmgmt" {Start-Process diskmgmt.msc $debug}
        "darkOn" { Switch-ToDarkMode $debug }
        "darkOff" { Switch-ToLightMode $debug }
        "ittshortcut" { ITTShortcut $debug }
        "moff" { MuteMusic $debug }
        "mon" { Unmute $debug }
        "neat" { Start-Process ("https://addons.mozilla.org/en-US/firefox/addon/neatdownloadmanager-extension/")  $debug }
        #===========================================================================
        #endregion Menu items
        #===========================================================================

    }
}
function Get-SelectedApps
{

    $items = @()

    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Applications)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{

                                                Name = $program.Name
                                                Choco = $program.Choco
                                                Scoop = $program.Scoop
                                                Winget = $program.winget
                                                Default = $program.default
                                            }

                                        }
                                    }
                            }

                        }
                    }
                }
            }
        }
    }

    return $items 
}


function ShowSelectedItems {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

    $filterPredicate = {
       param($item)

       if ($item -is [System.Windows.Controls.StackPanel]) {

        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
    
                        $tagToFilter =  $true
                        # Check if the item has the tag
                        $itemTag = $innerChild.IsChecked
                        return $itemTag -eq $tagToFilter
                    }
                }
            }
        }

        $collectionView.Filter = $filterPredicate

    }
     
}


   $collectionView.Filter = $filterPredicate

}

function Invoke-Install
{
    
    if($sync.ProcessRunning)
    {
        $msg = "Please wait for the software to be installed."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $selectedApps = Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        $sync['window'].FindName('category').SelectedIndex = 0
        ShowSelectedItems

        Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

            param($selectedApps)

            function UpdateUI {

                param($InstallBtn,$Description)
               
                $sync['window'].Dispatcher.Invoke([Action]{
                    $sync.installBtn.Content = "$InstallBtn"
                    #$sync.Description.Text = "$Description"
                })
            }

            function ClearTemp {

                $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                if (Test-Path $chocoTempPath) {
                    Remove-Item -Path $chocoTempPath -Force -Recurse
                    Write-Output "Clear Chocolatey temp folder"
                }
            }
            
            function CustomMsg 
            {
                param (

                    $title,
                    $msg,
                    $MessageBoxButton,
                    $MessageBoxImage,
                    $answer

                )

                [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
            }

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
            

            function Finish {

                $sync.AppsListView.Dispatcher.Invoke([Action]{
                    foreach ($item in $sync.AppsListView.Items)
                    {
                        foreach ($child in $item.Children) {
                            if ($child -is [System.Windows.Controls.StackPanel]) {
                                foreach ($innerChild in $child.Children) {
                                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                    
                                        $innerChild.IsChecked = $false
                                        $sync['window'].FindName('list').Clear()
                                        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
                                        $collectionView.Filter = $null
                                    }
                                }
                            }
                        }
                    }
                })

                UpdateUI -InstallBtn "Install" -Description "Installed successfully."


                Start-Sleep 3

                Clear-Host

Write-Host "
+----------------------------------------------------------------------------+
|  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _      |
| |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |     |
|  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |     |
|  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___  |
| |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |
|                                                                            |
+----------------------------------------------------------------------------+
You ready to Install anything.

(IT Tools) is open source, You can contribute to improving the tool.
If you have trouble installing a program, report the problem on feedback links
https://github.com/emadadel4/ITT/issues
https://t.me/emadadel4
" -ForegroundColor White
            }

            function InstallWinget {
               
                # Check if winget is installed
                if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
                    Write-Output "winget is not installed. Installing winget..."

                    # Define the URL for the latest App Installer package
                    $url = "https://aka.ms/getwinget"

                    # Define the path to download the installer
                    $installerPath = "$env:TEMP\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"

                    # Download the installer
                    Invoke-WebRequest -Uri $url -OutFile $installerPath

                    # Add-AppxPackage requires running with administrative privileges
                    Start-Process powershell -ArgumentList "Add-AppxPackage -Path $installerPath" -Verb RunAs -Wait

                    # Check if winget is installed successfully
                    if (Get-Command winget -ErrorAction SilentlyContinue) {
                        Write-Output "winget has been successfully installed."
                    } else {
                        Write-Output "winget installation failed. Please check the log for details."
                    }

                    # Clean up the installer file
                    Remove-Item $installerPath -Force
                } else {
                    Write-Output "winget is already installed."
                }
            }

            function SendApps {
                param (
                    [string]$FirebaseUrl,
                    [string]$Key,
                    $list
                )
            
                # Validate parameters
                if (-not $FirebaseUrl -or -not $Key) {
                    throw "FirebaseUrl and Key are mandatory parameters."
                }
            
                # Reuse connection to Firebase URL
                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
            
                # Check if the key exists
                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction SilentlyContinue
            
            
                # Function to get content from ListView
                function GetListViewContent {
                    # Create an array to store selected item content
                    $selectedItemContent = @()
            
                    # Iterate through each selected item in the ListView
                    foreach ($item in $list) {

                        $appName = $item.Name
            
                        # Add the app name to the array
                        $selectedItemContent += @{
                            "Apps" = $appName
                        }
                    }
            
                    # Return the selected item content
                    return $selectedItemContent
                }
            
                # Get content from ListView
                $selectedItemContent += GetListViewContent
            
            
                if ($existingData) {
            
                    # Update PC info with the existing data
                    $pcInfo = @{
                        "Domain" = $env:COMPUTERNAME
                        "OS" = $existingData.OS
                        "Username" = $existingData.Username
                        "RAM" = $existingData.Ram
                        "GPU" = $existingData.GPU
                        "CPU" = $existingData.CPU
                        "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
                        "Runs" = $existingData.runs
                        "AppsTweaks" = $selectedItemContent
                    }
                }
              
                # Convert to JSON
                $json = $pcInfo | ConvertTo-Json
            
                # Set headers
                $headers = @{
                    "Content-Type" = "application/json"
                }
            
                # Update Firebase database with the new value
                Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers
            }

            try 
            {


                $result = [System.Windows.MessageBox]::Show("Do you want to install $($selectedApps.Count) selected apps", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                
                if($result -eq "Yes")
                {



                    $sync.ProcessRunning = $true
                    foreach ($app in $selectedApps) 
                    {

                        ClearTemp
                        SendApps -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME -list $app
                        
                        if ($app.Winget -ne "none")
                        {
                            InstallWinget
                            UpdateUI -InstallBtn "Installing..." -Description "Downloading and Installing..." 
                            Start-Process -FilePath "winget" -ArgumentList "install -e -h --accept-source-agreements --ignore-security-hash --accept-package-agreements --id $($app.Winget)" -NoNewWindow -Wait
                        }


                        if ($app.Choco -ne "none")
                        {
                            UpdateUI -InstallBtn "Installing..." -Description "Downloading and Installing..." 
                            Start-Process -FilePath "choco" -ArgumentList "install $($app.Choco) --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum  --usepackagecodes --ignoredetectedreboot --ignore-checksums" -NoNewWindow -Wait 
                        }

                        if ($app.Default.url -ne "none")
                        {
                            UpdateUI -InstallBtn "Downloading..." -Description "Downloading..." 

                            foreach ($app in $app.default) 
                            {
                                if($app.IsExcute -eq "rar")
                                {
                                    
                                    $url = "$($app.url)"

                                    # Directory where WinRAR file will be downloaded and extracted
                                    $downloadDir = "$env:ProgramData\$($app.output)"

                                    # Create the directories if they don't exist
                                    if (-not (Test-Path -Path $downloadDir)) {
                                        New-Item -ItemType Directory -Path $downloadDir | Out-Null
                                    }

                                    # File paths
                                    $downloadPath = Join-Path -Path $downloadDir -ChildPath (Split-Path $url -Leaf)

                                    # Download
                                    Write-Host "Downloading..."
                                    Invoke-WebRequest -Uri $url -OutFile $downloadPath

                                    # Extract the WinRAR file
                                    Write-Host "Extracting WinRAR..."
                                    Expand-Archive -Path $downloadPath -DestinationPath $downloadDir -Force

                                    Write-Host "Extracted successfully to $downloadDir"
                                    Invoke-Item $downloadDir

                                }

                                if($app.IsExcute -eq "exe")
                                {
                                    $FileUri = "$($app.url)"

                                    $Destination = "$env:temp/setup.exe"
                                        
                                        $bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination
                                        
                                        switch ($bitsJobObj.JobState) {
                                        
                                            'Transferred' {
                                                Complete-BitsTransfer -BitsJob $bitsJobObj
                                                break
                                            }
                                        
                                            'Error' {
                                                throw 'Error downloading'
                                            }
                                        }
                                        
                                        #$exeArgs = '/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
                                            
                                    Start-Process -Wait $Destination -ArgumentList $app.exeArgs
                                }
                            }
                        }
                    }
                    
                    Start-Sleep -Seconds 1
                    $sync.ProcessRunning = $False

                    #CustomMsg -title "ITT | Emad Adel" -msg "Installed successfully" -MessageBoxImage "Information" -MessageBoxButton "OK"

                    # Uncheck all checkboxes in $list
                    Start-Sleep -Seconds 1
                    Notify -title "ITT Emad Adel" -msg "Installed successfully" -icon "Info" -time 5666
                    Finish

                }
                else
                {
                    # Uncheck all checkboxes in $list
                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        
                                            $innerChild.IsChecked = $false
                                            $sync['window'].FindName('list').Clear()
                                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
                                            $collectionView.Filter = $null
                                        }
                                    }
                                }
                            }
                        }
                    })
                }
            }
            catch {

                Write-Host "Error: $_"
            }
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}

function GetCheckBoxesFromStackPanel {
    param (
        [System.Windows.Controls.StackPanel]$item
    )

    $checkBoxes = @()  # Initialize an empty array to store CheckBoxes
    
    if ($item -is [System.Windows.Controls.StackPanel]) {
        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        # Add CheckBox to the array
                        $checkBoxes += $innerChild
                    }
                }
            }
        }
    }

    return $checkBoxes
}

function LoadJson {

    # Open file dialog to select JSON file
    $openFileDialog = New-Object -TypeName "Microsoft.Win32.OpenFileDialog"
    $openFileDialog.Filter = "JSON files (*.ea4)|*.ea4"
    $openFileDialog.Title = "Open JSON File"
    $dialogResult = $openFileDialog.ShowDialog()

    if ($dialogResult -eq "OK") {

        $jsonData = Get-Content -Path $openFileDialog.FileName -Raw | ConvertFrom-Json
        $filteredNames = $jsonData

        $filterPredicate = {

            param($item)

            $item =  GetCheckBoxesFromStackPanel -item $item

            foreach ($currentItemName in $filteredNames.Name) {

                if($currentItemName -eq $item.Content)
                {
                    $item.IsChecked = $true
                    break
                }

            }
            
            return $filteredNames.name -contains $item.Content
                          
        }

        $sync['window'].FindName('apps').IsSelected = $true
        $sync['window'].FindName('list').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
        $collectionView.Filter = $filterPredicate
        [System.Windows.MessageBox]::Show("Restored successfully", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)

    }
}


function SaveItemsToJson
{
  
    $items = @()

    ClearFilter

    foreach ($item in $sync['window'].FindName('list').Items)
    {

        $item =  GetCheckBoxesFromStackPanel -item $item

        if ($item.IsChecked)
        {
                $itemObject = [PSCustomObject]@{
                Name = $item.Content
                check = "true"
    
            }
                $items += $itemObject
        }
     
    }

    if ($null -ne $items -and $items.Count -gt 0) 
    {
        # Open save file dialog
        $saveFileDialog = New-Object -TypeName "Microsoft.Win32.SaveFileDialog"
        $saveFileDialog.Filter = "JSON files (*.ea4)|*.ea4"
        $saveFileDialog.Title = "Save JSON File"
        $dialogResult = $saveFileDialog.ShowDialog()

        if ($dialogResult -eq "OK")
        {
            $items | ConvertTo-Json | Out-File -FilePath $saveFileDialog.FileName -Force
            Write-Host "Saved: $($saveFileDialog.FileName)"

            [System.Windows.MessageBox]::Show("Saved", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)

        }
        
            foreach ($item in $sync.AppsListView.Items)
            {
                $item =  GetCheckBoxesFromStackPanel -item $item

                if ($item.IsChecked)
                {
                    $item.IsChecked = $false
                }
            }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}

function ChangeTap() {
    

    if($sync['window'].FindName('apps').IsSelected)
    {
        $sync['window'].FindName('installBtn').Visibility = "Visible"
        $sync['window'].FindName('applyBtn').Visibility = "Hidden"
    }

    if($sync['window'].FindName('tweeksTab').IsSelected)
    {
        $sync['window'].FindName('applyBtn').Visibility = "Visible"
        $sync['window'].FindName('installBtn').Visibility = "Hidden"
    }
}
# # Define a function to update the description and link when an item is selected

# function GetCheckBoxesFromStackPanel {
#     param (
#         [System.Windows.Controls.StackPanel]$item
#     )

#     $checkBoxes = @()  # Initialize an empty array to store CheckBoxes
    
#     if ($item -is [System.Windows.Controls.StackPanel]) {
#         foreach ($child in $item.Children) {
#             if ($child -is [System.Windows.Controls.StackPanel]) {
#                 foreach ($innerChild in $child.Children) {
#                     if ($innerChild -is [System.Windows.Controls.CheckBox]) {
#                         # Add CheckBox to the array
#                         $checkBoxes += $innerChild
#                     }
#                 }
#             }
#         }
#     }

#     return $checkBoxes
# }


# # Define a function to open the official website of the selected application
# function OpenOfficialWebsite {
#     # Get the name of the selected application from the list
#     $selectedAppName =  $sync.AppsListView.SelectedItem.Content

#     # Loop through the list of applications in the database and find the matching one
#     foreach ($app in $sync.database.Applications) {
#         if ($selectedAppName -eq $app.name) {
#             # Open the official website of the selected application in the default web browser
#             Start-Process ("https://duckduckgo.com/?hps=1&q=%5C" + $app.name)
#             break
#         }
#     }
# }

# # Add event handlers
# $sync.AppsListView.add_Loaded({
    
#     # Add a selection changed event handler to the list control
#     $sync.AppsListView.Add_SelectionChanged({
#         UpdateDescriptionAndLink
#     })

# })

# # Add a mouse left button down event handler to the itemLink control
# $sync.itemLink.add_MouseLeftButtonDown({
#     OpenOfficialWebsite
# })


# # Add loaded event handler
# $sync.TweaksListView.add_Loaded({
   
#     # Add selection changed event handler
#     $sync.TweaksListView.Add_SelectionChanged({

#         $selectedItem = $sync.TweaksListView.SelectedItem.Content
#         foreach ($data in $sync.database.Tweaks) {

#             if ($data.name -eq $selectedItem) {

#                 $sync.Description.Text = $data.description
#                 $sync.itemLink.Visibility = if ($data.repo -ne "null") { "Hidden" } else { "Hidden" }
#                 break
#             }
#         }
#     })

# })

# # Add mouse left button down event handler for item link
# $sync.itemLink.add_MouseLeftButtonDown({

#     $selectedItem = $sync.TweaksListView.SelectedItem.Content

#     foreach ($data in $sync.database.Tweaks) {
#         if ($selectedItem -eq $data.name -and $data.repo -ne "null") {
#             Start-Process $data.repo
#             break
#         }
#     }
# })

#region PlayMusic Functions
function PlayMusic {

    Function PlayAudio($url)
    {
        $mediaItem =  $sync.mediaPlayer.newMedia($url)
        $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
        $sync.mediaPlayer.controls.play()
        
    }

    # Function to shuffle the playlist
    Function ShuffleArray
    {
        param([array]$array)

        $count = $array.Length

        for ($i = 0; $i -lt $count; $i++)
        {
            $randomIndex = Get-Random -Minimum $i -Maximum $count
            $temp = $array[$i]
            $array[$i] = $array[$randomIndex]
            $array[$randomIndex] = $temp
        }
    }

    # Shuffle the playlist
    ShuffleArray -array $sync.database.OST.Tracks

    # Function to play the entire shuffled playlist
    Function PlayShuffledPlaylist
    {
        foreach ($url in $sync.database.OST.Tracks)
        {
            PlayAudio $url
            # Wait for the track to finish playing
            while ( $sync.mediaPlayer.playState -eq 3 -or  $sync.mediaPlayer.playState -eq 6)
            {
                Start-Sleep -Milliseconds 100
            }
        }
    }

    PlayShuffledPlaylist
}

function MuteMusic {

    $sync.mediaPlayer.settings.volume = 0
}

function Unmute {
   
    $sync.mediaPlayer.settings.volume = 100
}

function StopMusic {

    $sync.mediaPlayer.controls.stop()
    $sync.mediaPlayer = $null
    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
}

function StopAllRunspace {
    
    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
    $script:powershell.Stop()
    StopMusic
    $newProcess.exit
    Write-Host "Bye see you soon. :)" 
}

PlayMusic | Out-Null
#endregion

function About{

    # Load child window
    [xml]$about = $childXaml

    $sync.about = $childWindow


    $childWindowReader = (New-Object System.Xml.XmlNodeReader $about)

    $sync.about = [Windows.Markup.XamlReader]::Load( $childWindowReader )

    $sync.about.FindName('ver').Text = "Last update " + $sync.version

    $sync.about.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})

    $sync.about.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4")})

    $sync.about.FindName("website").add_MouseLeftButtonDown({Start-Process("https://eprojects.orgfree.com/")})

    $sync.about.FindName("sourcecode").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/ITT")})


    if($sync.Langusege -eq "en")
    {
        #$childWindow["window"].DataContext = $sync.database.locales.en
        $sync.about.DataContext = $sync.database.locales.en
    }
    else
    {
        #$childWindow["window"].DataContext = $sync.database.locales.ar
        $sync.about.DataContext = $sync.database.locales.ar
    }

    
    $sync.about.ShowDialog() | Out-Null

}

function ITTShortcut {
  
    # Create a shortcut object
    $Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$([Environment]::GetFolderPath('Desktop'))\ITT Emad Adel.lnk")

    # Set the target path to PowerShell with your command
    $Shortcut.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
    $Shortcut.Arguments = "-ExecutionPolicy Bypass -Command ""irm bit.ly/emadadel | iex"""

    # Save the shortcut
    $Shortcut.Save()

}
function Search {

    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $sync.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
    
    $collectionView.Filter = {
        param($item)
        if ($item -is [System.Windows.Controls.StackPanel]) {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            if ($innerChild.Content -match $filter) {
                                return $true
                            }
                        }
                    }
                }
            }
            return $false
        }
        return $true  # Non-StackPanel items are always included
    }
}


function FilterByCat {

    param ($Cat)

    # if user on Other tab return to apps list
    $sync['window'].FindName('apps').IsSelected = $true
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)

    # Define the filter predicate
    $filterPredicate = {
        param($item)
        
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            # Define the tag you want to filter by
                            $tagToFilter =  $Cat
                            # Check if the item has the tag
                            $itemTag = $innerChild.Tag
                            return $itemTag -eq $tagToFilter

                        }
                    }
                }
            }
        }

   
    }

    if($Cat -eq "All")
    {
        $sync['window'].FindName('list').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
        $collectionView.Filter = $null
    }
    else
    {
        $sync['window'].FindName('list').Clear()
        # Apply the filter to the collection view
        $collectionView.Filter = $filterPredicate
    }
}

function ClearFilter {
    $sync['window'].FindName('list').Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
    $collectionView.Filter = $null
}

#region Theme Functions
function ToggleTheme {
    
    try {

        if ($sync.searchInput = $sync['window'].FindName('themeText').IsChecked -eq $true)
        {
            Switch-ToDarkMode
        } 
        else
        {
            Switch-ToLightMode
        }
        
    }
    catch {
        Write-Host "Error toggling theme: $_"
    }

    $sync['window'].FindName('themeText').IsChecked = -not $sync['window'].FindName('themeText').IsChecked

}

function Switch-ToDarkMode {
    try {

        $theme = $sync['window'].FindResource("Dark")
        Update-Theme $theme "true"
    } catch {
        Write-Host "Error switching to dark mode: $_"
    }
}

function Switch-ToLightMode {
    try {
        $theme = $sync['window'].FindResource("Light")
        Update-Theme $theme "false"
    } catch {
        Write-Host "Error switching to light mode: $_"
    }
}

function Update-Theme ($theme, $mode) {
    $sync['window'].Resources.MergedDictionaries.Clear()
    $sync['window'].Resources.MergedDictionaries.Add($theme)
    Set-ItemProperty -Path "HKCU:\Software\ITTEmadadel" -Name "DarkMode" -Value $mode -Force

}
#endregion


function GetQuotes {

    Invoke-ScriptBlock -ScriptBlock {


        # Define the path to your JSON file
        $jsonFilePath = $sync.database.Quotes

        # Function to shuffle an array
        function ShuffleArray {
            param (
                [array]$Array
            )
            $count = $Array.Count
            for ($i = $count - 1; $i -ge 0; $i--) {
                $randomIndex = Get-Random -Minimum 0 -Maximum $count
                $temp = $Array[$i]
                $Array[$i] = $Array[$randomIndex]
                $Array[$randomIndex] = $temp
            }
            return $Array
        }

        # Function to get names from the JSON file
        function Get-NamesFromJson {
            $jsonContent =  $jsonFilePath 
            return $jsonContent.Q
        }

        # Get shuffled names
        $shuffledNames = ShuffleArray -Array (Get-NamesFromJson)

        # Function to display welcome text
        function Display-WelcomeText {
            $sync.Quotes.Dispatcher.Invoke([Action]{
                $sync.Quotes.Text = $sync.database.Quotes.Q[0]
            })
        }

        # Display welcome text
        Display-WelcomeText

        Start-Sleep -Seconds 15

        # Loop forever and print shuffled names
        foreach ($name in $shuffledNames) {

            $sync.Quotes.Dispatcher.Invoke([Action]{
                $sync.Quotes.Text = "`"$name.`""
            })

            # Adjust the sleep time as needed
            Start-Sleep -Seconds 15  
        }
    }
}

#===========================================================================
#endregion End Functions
#===========================================================================

#===========================================================================
#region Begin Main
#===========================================================================

GetQuotes | Out-Null

# Define OnClosing event handler
$onClosingEvent = {
    
    param($s, $c)
    
    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show("Are you sure you want to close the program, If there are any installing, this will end it", "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

    # Check user's choice
    if ($result -eq "Yes")
    {
        # Close the window
        StopAllRunspace
   
    }else{
        # Cancel closing the window
        $c.Cancel = $true
    }
}


# Add OnClosing event handler to the window
$sync["window"].add_Closing($onClosingEvent)

# Show the window
$sync["window"].ShowDialog() | Out-Null
#===========================================================================
#endregion End Main
#===========================================================================

