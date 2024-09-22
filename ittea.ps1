######################################################################################
#      ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _          #
#     |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |         #
#      | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |         #
#      | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___      #
#     |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|     #
#                Automatically generated from build don't play here :)               # 
#                              #StandWithPalestine                                   #
# https://github.com/emadadel4                                                       #
# https://t.me/emadadel4                                                             #
# https://emadadel4.github.io/itt                                                    #
######################################################################################
#===========================================================================
#region Begin Start
#===========================================================================
# Load DLLs
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

# Synchronized Hashtable for shared variables
$itt = [Hashtable]::Synchronized(@{
    database       = @{}
    ProcessRunning = $false
    lastupdate     = "09/22/2024"
    github         = "https://github.com/emadadel4"
    telegram       = "https://t.me/emadadel4"
    website        = "https://emadadel4.github.io"
    developer      = "Emad Adel"
    registryPath   = "HKCU:\Software\ITT@emadadel"
    firebaseUrl    = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
    icon           = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico"
    isDarkMode     = $null
    CurretTheme    = $null
    Date           = (Get-Date)
    Music          = "100"
    PopupWindow    = "On"
    Language       = "en"
})

$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = [System.Security.Principal.WindowsPrincipal]$currentPid
$administrator = [System.Security.Principal.WindowsBuiltInRole]::Administrator

if (-not $principal.IsInRole($administrator))
{
    Start-Process -FilePath "PowerShell" -ArgumentList $myInvocation.MyCommand.Definition -Verb "runas"
    exit
}

try {
    $itt.mediaPlayer = New-Object -ComObject WMPlayer.OCX
    $Host.UI.RawUI.WindowTitle = "ITT (Install and Tweaks Tool) - Admin"
}
catch {
    Write-Warning "Media player not loaded because your using Windows Lite or you just disable it"
}
#===========================================================================
#endregion End Start
#===========================================================================
#===========================================================================
#region Begin Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
$itt.database.Applications = '[
  {
    "name": "Mozilla Firefox",
    "description": "A widely-used open-source web browser known for its speed, privacy features, and customization options.",
    "winget": "Mozilla.Firefox",
    "choco": "firefox",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Mozilla Firefox ESR",
    "description": "A widely-used open-source web browser known for its speed, privacy features, and customization options.",
    "winget": "Mozilla.Firefox.ESR",
    "choco": "firefoxesr",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Thorium SSE3",
    "description": "A web browser designed for smooth and secure browsing experiences.",
    "winget": "Alex313031.Thorium",
    "choco": "thorium --params /SSE3",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Thorium AVX",
    "description": "A web browser designed for smooth and secure browsing experiences.",
    "winget": "Alex313031.Thorium.AVX2",
    "choco": "thorium --params /AVX",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Microsoft Edge",
    "description": "Microsoft''s web browser built for fast and secure internet surfing, integrating seamlessly with Windows ecosystem.",
    "winget": "Microsoft.Edge",
    "choco": "microsoft-edge",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Google Chrome",
    "description": "A popular web browser known for its speed, simplicity, and vast ecosystem of extensions.",
    "winget": "Google.Chrome",
    "choco": "googlechrome",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Chromium",
    "description": "An open-source web browser project that serves as the foundation for many browsers, including Google Chrome.",
    "winget": "eloston.ungoogled-chromium",
    "choco": "chromium",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Brave",
    "description": "A privacy-focused web browser that blocks ads and trackers, offering faster and safer browsing experiences.",
    "winget": "Brave.Brave",
    "choco": "brave",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Tor Browser",
    "description": "A web browser that prioritizes user privacy by routing internet traffic through a global network of servers, enabling anonymous browsing.",
    "winget": "TorProject.TorBrowser",
    "choco": "tor-browser",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Opera",
    "description": "The Opera web browser makes the Web fast and fun, giving you a better web browser experience on any computer.",
    "winget": "Opera.Opera",
    "choco": "opera",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Internet Download Manager",
    "description": "A popular download manager tool that accelerates downloads and allows users to organize and schedule downloads efficiently.",
    "winget": "Tonec.InternetDownloadManager",
    "choco": "internet-download-manager",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "JDownloader",
    "description": "JDownloader is an internet download manager.",
    "winget": "AppWork.JDownloader",
    "choco": "jdownloader",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "KLite Mega Codec Full Pack",
    "description": "Comprehensive collection of audio and video codecs, filters, and tools, enabling playback of various media formats.",
    "winget": "none",
    "choco": "k-litecodecpackfull",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "PotPlayer",
    "description": "A multimedia player with a sleek interface and advanced features, supporting a wide range of audio and video formats.",
    "winget": "Daum.PotPlayer",
    "choco": "potplayer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "VLC",
    "description": "A versatile media player capable of playing almost any multimedia file format, with support for various streaming protocols.",
    "winget": "VideoLAN.VLC",
    "choco": "vlc.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Kodi",
    "description": "A powerful open-source media center software that allows users to organize and stream their media collections.",
    "winget": "9NBLGGH4T892",
    "choco": "kodi",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Jellyfin Server",
    "description": "An open-source media server software that enables users to stream their media libraries across devices, providing a self-hosted alternative to commercial services.",
    "winget": "Jellyfin.Server",
    "choco": "jellyfin",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Winamp",
    "description": "A classic media player known for its customizable interface and extensive plugin support, providing a nostalgic music playback experience.",
    "winget": "Winamp.Winamp",
    "choco": "winamp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Aimp",
    "description": "A lightweight and feature-rich audio player with support for various audio formats and customizable interface themes.",
    "winget": "AIMP.AIMP",
    "choco": "aimp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Spotify",
    "description": "Spotify is a new way to listen to music.",
    "winget": "Spotify.Spotify",
    "choco": "spotify",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "FastStone Image Viewer",
    "description": "FastStone Image Viewer is a fast, stable, user-friendly image browser, converter and editor ",
    "winget": "FastStone.Viewer",
    "choco": "fsviewer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "OpenOffice",
    "description": "An open-source office productivity suite offering word processing, spreadsheet, presentation, and other office tools, compatible with Microsoft Office formats.",
    "winget": "Apache.OpenOffice",
    "choco": "openoffice",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "FoxitReader",
    "description": "A lightweight and feature-rich PDF reader with annotation, form filling, and document signing capabilities.",
    "winget": "Foxit.FoxitReader",
    "choco": "foxitreader",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "LibreOffice",
    "description": "A powerful open-source office suite providing word processing, spreadsheet, presentation, and other office tools, compatible with Microsoft Office formats.",
    "winget": "Foxit.FoxitReader",
    "choco": "libreoffice-fresh",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "SumatraPDF",
    "description": "A lightweight and fast PDF reader with minimalistic design and focus on simplicity and speed.",
    "winget": "SumatraPDF.SumatraPDF",
    "choco": "sumatrapdf.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "WinRAR",
    "description": "A popular file compression and archiving utility that supports various archive formats and offers advanced features such as encryption and self-extracting archives.",
    "winget": "RARLab.WinRAR",
    "choco": "winrar",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Compression",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "7Zip",
    "description": "An open-source file archiver with a high compression ratio, supporting various archive formats and providing a powerful command-line interface.",
    "winget": "7zip.7zip",
    "choco": "7zip",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Compression",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "PeaZip",
    "description": " PeaZip is a free cross-platform file archiver.",
    "winget": "Giorgiotani.Peazip",
    "choco": "peazip",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Compression",
    "check": "false"
  },
  {
    "name": "Telegram Desktop",
    "description": "A cross-platform messaging app with a focus on speed and security, offering end-to-end encryption and a wide range of features such as group chats, file sharing, and stickers.",
    "winget": "Telegram.TelegramDesktop",
    "choco": "telegram",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Signal",
    "description": "Fast, simple, secure. Privacy that fits in your pocket.",
    "winget": "OpenWhisperSystems.Signal",
    "choco": "signal",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Meta Messenger",
    "description": "A messaging app that allows users to connect with friends and family through text messages, voice calls, and video calls, offering various multimedia sharing features.",
    "winget": "9WZDNCRF0083",
    "choco": "messenger",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Zoom",
    "description": "A video conferencing app that facilitates online meetings, webinars, and virtual events, allowing participants to interact through video, audio, and chat.",
    "winget": "Zoom.ZoomRooms",
    "choco": "zoom",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Microsoft Teams",
    "description": "A collaboration platform that combines workplace chat, video meetings, file storage, and application integration, enhancing teamwork and productivity within organizations.",
    "winget": "Microsoft.Teams",
    "choco": "microsoft-teams.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Discord",
    "description": "A VoIP application and digital distribution platform designed for creating communities and connecting gamers, providing text, voice, and video communication features.",
    "winget": "Discord.Discord",
    "choco": "discord",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "TeamViewer",
    "description": "A remote access and support software that enables users to remotely control computers, transfer files, and collaborate online, facilitating remote work and IT support.",
    "winget": "TeamViewer.TeamViewer",
    "choco": "teamviewer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "GIMP",
    "description": "A free and open-source raster graphics editor used for image retouching and editing, drawing and painting, and converting between different image formats.",
    "winget": "GIMP.GIMP",
    "choco": "gimp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ Runtime - all versions",
    "description": "Microsoft Visual C++ Redistributable installs run-time components of Visual C++ libraries. These components are required to run C++ applications that are developed using Visual Studio and link dynamically to Visual C++ libraries.",
    "winget": "none",
    "choco": "vcredist-all",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "DirectX",
    "description": "DirectX is a collection of APIs for handling tasks related to games and videos.",
    "winget": "Microsoft.DirectX",
    "choco": "directx",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2005 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2005, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2005",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2005 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2005, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2005",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2008 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2008, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2008",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2008 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2008, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2008",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2010 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2010, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2010",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2010 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2010, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2010",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2012 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2012, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2012",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2012 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2012, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2012",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2013 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2013, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2013",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2013 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2013, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2013",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2015-2022 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2015-2022, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2015",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2015-2022  (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2015-2022, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2015",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Framework All Versions",
    "description": "A comprehensive and consistent programming model for building applications that have visually stunning user experiences, seamless and secure communication, and the ability to model a range of business processes.",
    "winget": "none",
    "choco": "dotnet-all",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "AMD Ryzen Chipset Drivers",
    "description": "Supports: AMD Ryzen Threadripper PRO Processor, AMD Ryzen 8000/7040/7000 Series Desktop & Mobile Processors, AMD Ryzen 5000/3rd Gen/2nd Gen Desktop & Threadripper Processors, AMD Ryzen Desktop Processor with Radeon Graphics & Mobile Processor with Radeon Graphics, 7th-Gen AMD A-Series Processors, AMD X670E/X670/B650E/B650/B350/A320/X370/X399/B450/X470/X570/B550/A520/A620/TRX40/TRX50/WRX80/WRX90 Chipsets",
    "winget": "none",
    "choco": "amd-ryzen-chipset",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "NVidia Display Driver",
    "description": "The software component that allows the operating system and installed software to communicate with and control the NVIDIA graphics processing unit (GPU).",
    "winget": "none",
    "choco": "nvidia-display-driver",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "NVIDIA GeForce Experience",
    "description": "A cloud-based gaming service provided by NVIDIA that allows users to play video games on supported devices via a remote gaming PC hosted on NVIDIA''s servers.",
    "winget": "Nvidia.GeForceExperience",
    "choco": "geforce-experience",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Msi Afterburner",
    "description": "MSI Afterburner is the ultimate graphics card utility, co-developed by MSI and RivaTuner teams.",
    "winget": "Guru3D.Afterburner",
    "choco": "msiafterburner",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "NVIDIA PhysX",
    "description": "A physics processing unit (PPU) software development kit (SDK) offered by NVIDIA for real-time physics simulations in video games.",
    "winget": "Nvidia.PhysXLegacy",
    "choco": "physx.legacy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Steam",
    "description": "A digital distribution platform developed by Valve Corporation for purchasing and playing video games.",
    "winget": "Valve.Steam",
    "choco": "steam",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Ubisoft Connect",
    "description": "A digital distribution, digital rights management, multiplayer, and communications service developed by Ubisoft, providing access to Ubisoft''s games, rewards, and social features.",
    "winget": "Ubisoft.Connect",
    "choco": "ubisoft-connect",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Origin",
    "description": " Game store launcher",
    "winget": "ElectronicArts.Origin",
    "choco": "origin",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Rockstar Games Launcher",
    "description": "Download and play the latest Rockstar Games PC titles",
    "winget": "none",
    "choco": "rockstar-launcher",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "GameSave Manager",
    "description": "A utility tool that allows users to backup, restore, and transfer their game saves between different gaming platforms and directories.",
    "winget": "InsaneMatt.GameSaveManager",
    "choco": "gamesavemanager",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "StreamlabsOBS",
    "description": "A free and open-source streaming software built on top of OBS Studio with additional features tailored for streamers, such as built-in alerts, overlays, and chat integration.",
    "winget": "Streamlabs.StreamlabsOBS",
    "choco": "streamlabs-obs",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "OBS Studio",
    "description": "A free and open-source software for video recording and live streaming. It offers high performance real-time video/audio capturing and mixing.",
    "winget": "OBSProject.OBSStudio",
    "choco": "obs-studio.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Logitech Gaming Software",
    "description": "Logitech Gaming Software lets you customize Logitech G gaming mice, keyboards, headsets and select wheels.",
    "winget": "Logitech.LGS",
    "choco": "logitechgaming",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Lively Wallpaper",
    "description": "A software that allows users to set animated and interactive wallpapers on their Windows desktop, providing various customization options.",
    "winget": "rocksdanister.LivelyWallpaper",
    "choco": "lively",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Playnite",
    "description": "Open source video game library manager and launcher with support for 3rd party libraries like Steam, GOG, Origin, Battle.net and Uplay.",
    "winget": "Playnite.Playnite",
    "choco": "playnite",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Driver Easy",
    "description": "A driver update tool that automatically detects, downloads, and installs device drivers for the user''s computer hardware.",
    "winget": "Easeware.DriverEasy",
    "choco": "drivereasyfree",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Intel Graphics Windows DCH",
    "description": "Intel Graphics Driver for Windows 10.",
    "winget": "none",
    "choco": "intel-graphics-driver",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Intel Driver Support Assistant",
    "description": "Intel Driver & Support Assistant enables you to scan computing devices for the latest drivers available from Intel.",
    "winget": "Intel.IntelDriverAndSupportAssistant",
    "choco": "intel-dsa",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Intel Network Adapter",
    "description": "Intel Network Adapter Drivers for Windows 10.",
    "winget": "Intel.WiFiDrivers",
    "choco": "intel-network-drivers-win10",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Snappy Driver Installer",
    "description": "A free and open-source tool for updating and installing device drivers on Windows, offering offline driver updates and wide hardware support.",
    "winget": "samlab-ws.SnappyDriverInstaller",
    "choco": "sdio",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Driver booster",
    "description": "Scans and identifies outdated drivers automatically, and downloads and installs the right update for you with just ONE click.",
    "winget": "IObit.DriverBooster",
    "choco": "driverbooster",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Driver Genius",
    "description": "Professional driver management tool and hardware diagnostics.",
    "winget": "none",
    "choco": "drivergenius",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Display Driver Uninstaller",
    "description": "Utility to completely remove system drivers",
    "winget": "Wagnardsoft.DisplayDriverUninstaller",
    "choco": "ddu",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Driver Store Explorer",
    "description": " Windows driver store utility.",
    "winget": "none",
    "choco": "rapr",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "1Password",
    "description": "A password manager that securely stores login credentials, credit card information, and other sensitive data in an encrypted vault, accessible with a single master password.",
    "winget": "AgileBits.1Password",
    "choco": "1password",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AOMEI Partition Assistant Standard",
    "description": "AOMEI Partition Assistant Standard allows you to realize disk upgrade/replacement, partition style conversion, OS migration and other disk managements without any difficulties.",
    "winget": "AOMEI.PartitionAssistant",
    "choco": "partition-assistant-standard",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "AOMEI Backupper Standard",
    "description": "A backup and recovery software that enables users to create system backups, disk backups, partition backups, and file backups to protect data against system failures and data loss.",
    "winget": "AOMEI.Backupper.Standard",
    "choco": "backupper-standard",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Recuva recover",
    "description": "A data recovery software that helps users retrieve accidentally deleted files, including photos, documents, videos, and more, from various storage devices such as hard drives, USB drives, and memory cards.",
    "winget": "Piriform.Recuva",
    "choco": "recuva",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "CCleaner",
    "description": "A system optimization, privacy, and cleaning tool that helps users remove unused files, clean up temporary files, and optimize their Windows PCs for better performance.",
    "winget": "SingularLabs.CCEnhancer",
    "choco": "ccleaner",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "BCUninstaller",
    "description": "A powerful uninstaller tool for Windows that allows users to remove unwanted programs, plugins, and Windows Store apps, along with leftover files and registry entries.",
    "winget": "Klocman.BulkCrapUninstaller",
    "choco": "bulk-crap-uninstaller",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Easy Context Menu",
    "description": "To install Easy Context Menu, run the following command from the command line or from PowerShell:",
    "winget": "none",
    "choco": "ecm",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "HWiNFO",
    "description": "A hardware information and diagnostic tool that provides detailed information about the hardware components of a computer system, including sensors, temperature, voltage, and more.",
    "winget": "REALiX.HWiNFO",
    "choco": "hwinfo.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Speccy",
    "description": "A system information tool that provides detailed information about the hardware and operating system of a computer, including CPU, RAM, motherboard, graphics card, and storage devices.",
    "winget": "Piriform.Speccy",
    "choco": "speccy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "FurMark",
    "description": "A graphics card stress testing and benchmarking utility that helps users test the stability, cooling, and performance of their GPU by rendering a highly intensive 3D graphics scene.",
    "winget": "Geeks3D.FurMark",
    "choco": "furmark",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Hard Disk Sentinel",
    "description": "A hard disk monitoring and analysis software that helps users monitor the health, performance, and temperature of their hard drives, SSDs, and other storage devices.",
    "winget": "JanosMathe.HardDiskSentinelPro",
    "choco": "hdsentinel",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "CPU-Z",
    "description": "A system monitoring utility that provides detailed information about the CPU, motherboard, memory, and other hardware components of a computer system.",
    "winget": "CPUID.CPU-Z",
    "choco": "cpu-z",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Mem Reduct",
    "description": "Lightweight real-time memory management application to monitor and clean system memory on your computer.",
    "winget": "Henry++.MemReduct",
    "choco": "memreduct",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "HandBrake",
    "description": "A free and open-source video transcoder tool that converts video files from one format to another, supporting a wide range of input and output formats.",
    "winget": "HandBrake.HandBrake",
    "choco": "handbrake.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Rufus Portable",
    "description": "A utility tool for creating bootable USB drives from ISO images, helping users to install or run operating systems, such as Windows, Linux, or other utilities.",
    "winget": "Rufus.Rufus",
    "choco": "rufus",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Portable",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "ImgBurn",
    "description": "Lightweight CD / DVD burning application ",
    "winget": "LIGHTNINGUK.ImgBurn",
    "choco": "imgburn",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Virtual CloneDrive",
    "description": "A free software that allows users to mount disc images as virtual drives, enabling them to access the content of ISO, BIN, and CCD files without the need for physical discs.",
    "winget": "none",
    "choco": "virtualclonedrive",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ultra ISO",
    "description": "A powerful ISO image management tool that enables users to create, edit, extract, and burn ISO files, providing a comprehensive solution for managing disk image files.",
    "winget": "EZBSystems.UltraISO",
    "choco": "ultraiso",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ventoy",
    "description": "An open-source tool for creating bootable USB drives with multiple ISO files, allowing users to boot various operating systems or utilities directly from a single USB drive.",
    "winget": "Ventoy.Ventoy",
    "choco": "ventoy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "iVentoy",
    "description": "With iVentoy you can boot and install OS on multiple machines at the same time through the network.",
    "winget": "none",
    "choco": "iventoy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AutoHotkey",
    "description": "A scripting language for automating repetitive tasks and creating macros on Windows, allowing users to customize keyboard shortcuts, remap keys, and automate mouse actions.",
    "winget": "AutoHotkey.AutoHotkey",
    "choco": "autohotkey",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Rainmeter",
    "description": "A customizable desktop customization tool that displays customizable skins, widgets, and applets on the Windows desktop, providing users with real-time system monitoring and information.",
    "winget": "Rainmeter.Rainmeter",
    "choco": "rainmeter",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "FxSound",
    "description": "An audio enhancer software that improves the sound quality of music, videos, and games on Windows PCs by providing advanced audio processing and customization options.",
    "winget": "FxSoundLLC.FxSound",
    "choco": "fxsound",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Vysor",
    "description": "A screen mirroring and remote control software that enables users to view and control Android devices from Windows PCs, allowing for easy screen sharing, app testing, and troubleshooting.",
    "winget": "Vysor.Vysor",
    "choco": "vysor",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Unified Remote",
    "description": "A remote control app that turns smartphones into universal remote controls for Windows, macOS, and Linux computers, allowing users to control media playback, presentations, and more.",
    "winget": "UnifiedIntents.UnifiedRemote",
    "choco": "unifiedremote",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AnyDesk",
    "description": "A remote desktop software that allows users to access and control Windows, macOS, Linux, Android, and iOS devices from anywhere, providing secure and reliable remote access.",
    "winget": "AnyDeskSoftwareGmbH.AnyDesk",
    "choco": "anydesk",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Airdroid",
    "description": "AirDroid is a free and fast Android device manager app that allows you to access Android phone/tablet from computer remotely and securely. Manage SMS, files, photos and videos, WhatsApp, Line, WeChat and more on computer.",
    "winget": "AirDroid.AirDroid",
    "choco": "airdroid",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "UltraViewer",
    "description": "Remote control to support your clients / partners from everywhere.",
    "winget": "DucFabulous.UltraViewer",
    "choco": "ultraviewer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Wireless Network Watcher Portable",
    "description": "Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network.",
    "winget": "NirSoft.WirelessNetworkWatcher",
    "choco": "wnetwatcher.portable",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Portable",
    "check": "false"
  },
  {
    "name": "WifiInfoView",
    "description": "Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network.",
    "winget": "NirSoft.WifiInfoView",
    "choco": "wifiinfoview",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "qBittorrent",
    "description": "A free and open-source BitTorrent client for downloading and uploading files via the BitTorrent protocol, providing users with a lightweight and feature-rich torrenting experience.",
    "winget": "qBittorrent.qBittorrent",
    "choco": "qbittorrent",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Google Earth Pro",
    "description": "Google Earth Pro on desktop is free for users with advanced feature needs. Import and export GIS data, and go back in time with historical imagery.",
    "winget": "Google.EarthPro",
    "choco": "googleearthpro",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "XAMPP",
    "description": "XAMPP is a free and open-source cross-platform web server solution stack package developed by Apache Friends, consisting mainly of the Apache HTTP Server, MariaDB database, and interpreters for scripts written in the PHP and Perl programming languages.",
    "winget": "ApacheFriends.Xampp.8.2",
    "choco": "xampp-81",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Visual Studio Professional 2022",
    "description": "Visual Studio Professional 2022 is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs, websites, web apps, web services, and mobile apps.",
    "winget": "Microsoft.VisualStudio.2022.Professional",
    "choco": "visualstudio2022professional",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Visual Studio Community 2022",
    "description": "Visual Studio Community 2022 is a free, fully-featured, and extensible IDE for individual developers, open source projects, academic research, education, and small professional teams.",
    "winget": "Microsoft.VisualStudio.2022.Community",
    "choco": "visualstudio2022community",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Unity Hub",
    "description": "Unity is a cross-platform game creation system developed by Unity Technologies and used to develop video games for PC, consoles, mobile",
    "winget": "Unity.UnityHub",
    "choco": "unity-hub",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Godot Engine",
    "description": "Godot is a feature-packed, cross-platform game engine for creating 2D and 3D games. It provides a comprehensive set of tools and features to develop games efficiently and quickly.",
    "winget": "GodotEngine.GodotEngine",
    "choco": "godot",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Unity3D Engine",
    "description": "Unity is a cross-platform game creation system developed by Unity Technologies and used to develop video games for PC, consoles, mobile",
    "winget": "Unity.Unity.2020",
    "choco": "unity",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Blender",
    "description": "Blender is a free and open-source professional-grade 3D computer graphics and video compositing program.",
    "winget": "BlenderFoundation.Blender",
    "choco": "blender",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "VSCode",
    "description": "Visual Studio Code is a free source-code editor developed by Microsoft for Windows, Linux, and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.",
    "winget": "Microsoft.VisualStudioCode",
    "choco": "vscode",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Vim",
    "description": "Vim is an advanced text editor that seeks to provide the power of the de-facto Unix editor ''Vi'', with a more complete feature set. It''s us... Keep Reading ",
    "winget": "vim.vim",
    "choco": "vim",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Sublime Text 4",
    "description": "Sublime Text 4 - The sophisticated text editor for code, markup and prose. ",
    "winget": "SublimeHQ.SublimeText.4",
    "choco": "sublimetext4",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Atom",
    "description": "Atom is a text editor that''s modern, approachable, yet hackable to the core—a tool you can customize to do anything but also use productively without ever touching a config file.",
    "winget": "GitHub.Atom",
    "choco": "atom",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "InnoSetup",
    "description": "Inno Setup is a free installer for Windows programs. First introduced in 1997, Inno Setup today rivals and even surpasses many commercial installers in feature set and stability.",
    "winget": "JRSoftware.InnoSetup",
    "choco": "innosetup",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PyCharm Community Edition",
    "description": "PyCharm Community Edition is a free and open-source IDE for Python development. It provides smart code completion, code inspections, on-the-fly error highlighting, and quick-fixes.",
    "winget": "JetBrains.PyCharm.Community",
    "choco": "pycharm-community",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PyCharm Professional Edition",
    "description": "PyCharm Professional Edition is a powerful IDE for professional Python development. It includes advanced features such as database tools, web development support, and scientific tools integration.",
    "winget": "JetBrains.PyCharm.Professional",
    "choco": "pycharm",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Jetbrains Rider",
    "description": "Rider is a cross-platform .NET IDE developed by JetBrains. It supports C#, VB.NET, F#, ASP.NET, JavaScript, TypeScript, HTML, CSS, and SQL languages and frameworks.",
    "winget": "JetBrains.Rider",
    "choco": "jetbrains-rider",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Node.js LTS",
    "description": "Node.js is a JavaScript runtime built on Chrome''s V8 JavaScript engine. LTS (Long Term Support) releases are supported for an extended period and provide stability for production environments.",
    "winget": "OpenJS.NodeJS.LTS",
    "choco": "nodejs-lts",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Electrum-LTS",
    "description": "Electrum is a lightweight Bitcoin wallet focused on speed and simplicity, with support for hardware wallets and multisig functionality. LTS (Long Term Support) releases provide stability and security updates for an extended period.",
    "winget": "Electrum.Electrum",
    "choco": "electronim",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Hugo",
    "description": "Hugo is one of the most popular open-source static site generators. With its amazing speed and flexibility, Hugo makes building websites f... Keep Reading ",
    "winget": "Hugo.Hugo",
    "choco": "hugo",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Hugo Extended",
    "description": "Hugo is one of the most popular open-source static site generators. With its amazing speed and flexibility, Hugo makes building websites f... Keep Reading ",
    "winget": "Hugo.Hugo.Extended",
    "choco": "hugo-extended",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Notepad++",
    "description": "Notepad++ is a free source code editor and Notepad replacement that supports several languages. It offers syntax highlighting, code folding, auto-completion, and other features for efficient code editing.",
    "winget": "Notepad++.Notepad++",
    "choco": "notepadplusplus",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Windows Terminal",
    "description": "Windows Terminal is a modern terminal application for users of command-line tools and shells like Command Prompt, PowerShell, and Windows Subsystem for Linux (WSL). It provides multiple tabs, custom themes, and GPU-accelerated text rendering.",
    "winget": "Microsoft.WindowsTerminal",
    "choco": "microsoft-windows-terminal",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Powershell 7",
    "description": "PowerShell Core is a cross-platform (Windows, Linux, and macOS) automation and configuration tool/framework that works well with your existing tools and is optimized for dealing with structured data (e.g., JSON, CSV, XML, etc.), REST APIs, and object models.",
    "winget": "Microsoft.PowerShell",
    "choco": "powershell-core",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "x64dbg Portable",
    "description": "An open-source x64/x32 debugger for windows.",
    "winget": "none",
    "choco": "x64dbg.portable",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Portable",
    "check": "false"
  },
  {
    "name": "dnSpy",
    "description": "dnSpy is a tool to reverse engineer .NET assemblies. It includes a decompiler, a debugger and an assembly editor (and more) and can be easily extended by writing your own extension. It uses dnlib to read and write assemblies so it can handle obfuscated assemblies (eg. malware) without crashing.",
    "winget": "dnSpyEx.dnSpy",
    "choco": "dnspy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Cheat Engine",
    "description": "Cheat Engine is an open source tool designed to help you modify single player games.",
    "winget": "none",
    "choco": "cheatengine",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Python 3.12.6",
    "description": "Python is a popular high-level programming language known for its simplicity and versatility. It is used in various fields such as web development, data science, machine learning, and automation.",
    "winget": "Python.Python.3.9",
    "choco": "python",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Git",
    "description": "Git is a free and open-source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.",
    "winget": "Git.Git",
    "choco": "git",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "GitHub Desktop",
    "description": "GitHub Desktop is a seamless way to contribute to projects on GitHub and GitHub Enterprise. It provides an intuitive interface for managing repositories, branching, committing, and merging code changes.",
    "winget": "GitHub.GitHubDesktop",
    "choco": "github-desktop",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Docker Desktop",
    "description": "Docker Desktop is an easy-to-install application for Windows and macOS that enables developers to build, share, and run containerized applications and microservices locally.",
    "winget": "Docker.DockerDesktop",
    "choco": "docker-desktop",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Docker Compose",
    "description": "Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to use a YAML file to configure your application''s services, networks, and volumes.",
    "winget": "Docker.DockerCompose",
    "choco": "docker-compose",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PowerToys",
    "description": "PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. It includes tools like FancyZones for window management, PowerRename for batch renaming files, and more.",
    "winget": "Microsoft.PowerToys",
    "choco": "powertoys",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Notion",
    "description": "The all-in-one workspace for your notes, tasks, wikis, and databases.",
    "winget": "Notion.Notion",
    "choco": "notion",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "FL Studio",
    "description": "FL Studio is a digital audio workstation (DAW) developed by Image-Line. It allows you to compose, arrange, record, edit, mix, and master professional-quality music.",
    "winget": "ImageLine.FLStudio",
    "choco": "ImageLine.FLStudio",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Android Debug Bridge",
    "description": "Android Debug Bridge (ADB) is a command-line tool that allows you to communicate with an Android device. It is used for various debugging tasks such as installing and debugging apps.",
    "winget": "none",
    "choco": "adb",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Universal ADB Drivers",
    "description": "Universal ADB Drivers are drivers that provide compatibility with a wide range of Android devices for debugging purposes. They allow you to connect your Android device to a computer and use ADB commands.",
    "winget": "none",
    "choco": "universal-adb-drivers",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Scrcpy",
    "description": "Scrcpy is a free and open-source tool that allows you to display and control your Android device from a computer. It provides high-performance screen mirroring and supports various input methods.",
    "winget": "Genymobile.scrcpy",
    "choco": "scrcpy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "VirtualBox",
    "description": "VirtualBox is a cross-platform virtualization application. It installs on existing Intel or AMD-based computers, whether they are running Windows, Mac, Linux or Solaris operating systems. It extends the capabilities of your existing computer so that it can run multiple operating systems (inside multiple virtual machines) at the same time.",
    "winget": "Oracle.VirtualBox",
    "choco": "virtualbox",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Oh My Posh",
    "description": " Oh my Posh is a custom prompt engine for any shell that has the ability to adjust the prompt string with a function or variable.",
    "winget": "JanDeDobbeleer.OhMyPosh",
    "choco": "oh-my-posh",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Malwarebytes",
    "description": "Multiple layers of malware-crushing tech, including virus protection. Thorough malware and spyware removal. Specialized ransomware protection.",
    "winget": "Malwarebytes.Malwarebytes",
    "choco": "malwarebytes",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Avast Free Antivirus",
    "description": "Avast Free Antivirus.",
    "winget": "XPDNZJFNCR1B07",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "choco": "avastfreeantivirus",
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Nerd Fonts - CascadiaCode",
    "description": "Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs (icons).",
    "winget": "none",
    "choco": "nerd-fonts-cascadiacode",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Java SE Runtime Environment 8.0.411",
    "description": "Java allows you to play online games, chat with people around the world, calculate your mortgage interest, and view images in 3D, just to name a few. It''s also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing. Please note you now need a Java License from Oracle to use unless installed for Personal Use and Development Use.",
    "winget": "none",
    "choco": "jre8",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Audacity",
    "description": "Audacity is free, open source, cross-platform software for recording and editing sounds.",
    "winget": "Audacity.Audacity",
    "choco": "audacity",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "MusicBee",
    "description": "MusicBee makes it easy to organize, find and play music files on your computer, on portable devices and on the web.",
    "winget": "MusicBee.MusicBee",
    "choco": "musicbee",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Format Factory",
    "description": "multifunctional media processing tools",
    "winget": "none",
    "choco": "formatfactory",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Winaero Tweaker",
    "description": "Customize the appearance and behavior of the Windows operating system",
    "winget": "none",
    "choco": "winaero-tweaker",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Windows Subsystem for Linux WSL2",
    "description": "To install Windows Subsystem for Linux 2, run the following command from the command line or from PowerShell:",
    "winget": "Microsoft.WSL",
    "choco": "wsl2",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Wamp Server 3.3.5",
    "description": "WampServer is a Windows web development environment. It allows you to create web applications.",
    "winget": "none",
    "choco": "wamp-server",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "MongoDB",
    "description": "MongoDB stores data using a flexible document data model that is similar to JSON. Documents contain one or more fields, including arrays, binary data and sub-documents. Fields can vary from document to document. This flexibility allows development teams to evolve the data model rapidly as their application requirements change.",
    "winget": "MongoDB.Server",
    "choco": "mongodb",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "MPC-BE",
    "description": "Media Player Classic - BE is a free and open source audio and video player for Windows.",
    "winget": " MPC-BE.MPC-BE",
    "choco": "mpc-be",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Kdenlive",
    "description": "A powerful non-linear video editor",
    "winget": "KDE.Kdenlive",
    "choco": "kdenlive",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "TablePlus",
    "description": "Modern, native, and friendly GUI tool for relational databases: MySQL, PostgreSQL, SQLite, MongoDB, Redis, and more.",
    "winget": "TablePlus.TablePlus",
    "choco": "tableplus",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Hosts File Editor",
    "description": "Hosts File Editor makes it easy to change your hosts file as well as archive multiple versions for easy retrieval.",
    "winget": "scottlerch.hosts-file-editor",
    "choco": "hosts.editor",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Subtitle Edit",
    "description": "With SE you can easily adjust a subtitle if it is out of sync with the video in several different ways. You can also use SE for making new subtitles from scratch (do use the time-line/waveform/spectrogram) or translating subtitles.",
    "winget": "9NWH51GWJTKN",
    "choco": "subtitleedit",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Skype",
    "description": "Skype - Install Skype, add your friends as contacts, then call, video call and instant message with them for free. Call people who aren''t on Skype too, at really low rates.",
    "winget": "Microsoft.Skype",
    "choco": "skype",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "FileZilla",
    "description": "FileZilla Client is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface.",
    "winget": "none",
    "choco": "filezilla",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Everything",
    "description": "Everything Search Engine - locate files and folders by name instantly",
    "winget": "voidtools.Everything",
    "choco": "everything",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Yarn",
    "description": "Yarn is a package manager for the npm and bower registries with a few specific focuses.",
    "winget": "Yarn.Yarn",
    "choco": "yarn",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "VMware Workstation Player",
    "description": "VMware Workstation Player™ is a streamlined desktop virtualization application that runs another operating system on the same computer without rebooting. VMware Workstation Player provides a simple user interface, unmatched operating system support, and portability across the VMware ecosystem.",
    "winget": "none",
    "choco": "vmware-workstation-player",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "HDD Low Level Format Tool",
    "description": "Will erase, Low-Level Format and re-certify a SATA, IDE or SCSI hard disk drive with any size of up to 281 474 976 710 655 bytes.",
    "winget": "none",
    "choco": "llftool",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "BlueStacks",
    "description": "Play Android Games on PC.",
    "winget": "BlueStack.BlueStacks",
    "choco": "bluestacks",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Intel Wireless Bluetooth for Windows 10 and Windows 11",
    "description": "Bluetooth for Windows 10 and Windows",
    "winget": "none",
    "choco": "intel-bluetooth-drivers",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Office 365 Business",
    "description": "Microsoft 365 (formerly Office 365) is a line of subscription services offered by Microsoft as part of the Microsoft Office product line. The brand encompasses plans that allow use of the Microsoft Office software suite over the life of the subscription, as well as cloud-based software as a service products for business environments, such as hosted Exchange Server, Skype for Business Server, and SharePoint, among others. All Microsoft 365 plans include automatic updates to their respective software at no additional charge, as opposed to conventional licenses for these programs—where new versions require purchase of a new license.",
    "winget": "Microsoft.Office",
    "choco": "office365business",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Bandicam",
    "description": "Bandicam is a closed-source screen capture and screen recording software originally developed by Bandisoft and later by Bandicam Company that can take screenshots or record screen changes. Bandicam consists of three main modes. One is the Screen Recording mode, which can be used for recording a certain area on the PC screen",
    "winget": "BandicamCompany.Bandicam",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "QQPlayer",
    "description": "QQPlayer media player",
    "winget": "Tencent.QQPlayer",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "4K Video Downloader",
    "description": "4K Video Downloader allows downloading videos, playlists, channels and subtitles from YouTube, Facebook, Vimeo and other video sites in high quality.",
    "winget": "OpenMedia.4KVideoDownloader",
    "choco": "4k-video-downloader",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Active@ Partition Recovery",
    "description": "Active@ Partition Recovery is a freeware toolkit that helps to recover deleted and damaged logical drives and partitions within Windows, WinPE (recovery boot disk) and Linux (recovery LiveCD) environments.",
    "winget": "LSoftTechnologies.ActivePartitionRecovery",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "HiSuite",
    "description": "HUAWEI HiSuite is the official Android Smart Device Manager tool,HiSuite helps users to connect their HUAWEI smartphones and tablets to PC",
    "winget": "Huawei.HiSuite",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Android Studio",
    "description": "Android Studio is the official integrated development environment for Google''s Android operating system, built on JetBrains IntelliJ IDEA software and designed specifically for Android development",
    "winget": "Google.AndroidStudio",
    "choco": "androidstudio",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "LibreWolf",
    "description": "LibreWolf is designed to increase protection against tracking and fingerprinting techniques, while also including a few security improvements. This is achieved through our privacy and security oriented settings and patches. LibreWolf also aims to remove all the telemetry, data collection and annoyances, as well as disabling anti-freedom features like DRM.",
    "winget": "LibreWolf.LibreWolf",
    "choco": "librewolf",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Flow Launcher",
    "description": "Dedicated to making your workflow flow more seamless. Search everything from applications, files, bookmarks, YouTube, Twitter and more. Flow will continue to evolve, designed to be open and built with the community at heart.",
    "winget": "Flow-Launcher.Flow-Launcher",
    "choco": "flow-launcher",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "IconsExtract",
    "description": "The IconsExtract utility scans the files and folders on your computer, and extract the icons and cursors stored in EXE, DLL, OCX, CPL, and in other file types.",
    "winget": "none",
    "choco": "iconsext",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AdGuard Home",
    "description": "AdGuard Home is a network-wide software for blocking ads and tracking. After you set it up, it''ll cover ALL your home devices, and you don''t need any client-side software for that.",
    "winget": "AdGuard.AdGuardHome",
    "choco": "adguardhome",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Burp Suite Community Edition",
    "description": "Burp Suite is an integrated platform for performing security testing of web applications. Its various tools work seamlessly together to support the entire testing process, from initial mapping and analysis of an application''s attack surface, through to finding and exploiting security vulnerabilities.",
    "winget": "PortSwigger.BurpSuite.Community",
    "choco": "burp-suite-free-edition",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "CoreTemp",
    "description": "Core Temp is a compact, no fuss, small footprint, yet powerful program to monitor processor temperature and other vital information.",
    "winget": "ALCPU.CoreTemp",
    "choco": "coretemp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "ShareX",
    "description": "Screen capture, file sharing and productivity tool.",
    "winget": "ShareX.ShareX",
    "choco": "sharex",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "ONLY OFFICE",
    "description": "ONLYOFFICE is a project developed by experienced IT experts from Ascensio System SIA, leading IT company with headquarters in Riga, Latvia. Originally ONLYOFFICE was designed for internal team collaboration. An attempt to introduce it to a wider audience proved to be successful: ONLYOFFICE received very positive feedback from the Internet community. As a result, its functionality was considerably revised and expanded that brought about a high and stable growth of users from different countries.",
    "winget": "ONLYOFFICE.DesktopEditors",
    "choco": "onlyoffice",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "ESET Internet Security",
    "description": "Ideal for modern users concerned about their privacy, who actively use internet for shopping, banking, work and communication.",
    "winget": "ESET.EndpointSecurity",
    "choco": "eset-internet-security",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "WinDirStat",
    "description": "WinDirStat is a disk usage statistics viewer and cleanup tool for Microsoft Windows.",
    "winget": "WinDirStat.WinDirStat",
    "choco": "windirstat",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Winmerge",
    "description": "WinMerge is an Open Source differencing and merging tool for Windows. WinMerge can compare both  folders and files, presenting differences in a visual text format that is easy to understand and handle.",
    "winget": "WinMerge.WinMerge",
    "choco": "winmerge",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Wireshark",
    "description": "Wireshark is the worlds foremost and widely-used network protocol analyzer. It lets you see whats happening on your network at a microscopic level and is the de facto (and often de jure) standard across many commercial and non-profit enterprises, government agencies, and educational institutions. Wireshark development thrives thanks to the volunteer contributions of networking experts around the globe and is the continuation of a project started by Gerald Combs in 1998.",
    "winget": "WiresharkFoundation.Wireshark",
    "choco": "wireshark",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "TeraCopy",
    "description": "TeraCopy is designed to copy and move files at the maximum possible speed. It skips bad files during the copying process, and then displays them at the end of the transfer so that you can see which ones need attention. TeraCopy can automatically check the copied files for errors by calculating their CRC checksum values. It also provides a lot more information about the files being copied than its Windows counterpart. TeraCopy integrates with Windows Explorer''s right-click menu and can be set as the default copy handler.",
    "winget": "CodeSector.TeraCopy",
    "choco": "teracopy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "QuickLook",
    "description": "Quick Look is among the few features I missed from Mac OS X It enables very quick preview of file by pressing Space key while highlighting it without opening its associated application Then I decide to add this feature to Windows by myself which results this QuickLook project",
    "winget": "QL-Win.QuickLook",
    "choco": "quicklook",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "RepoZ",
    "description": "RepoZ provides a quick overview of the git repositories on your development machine including their current branch and a short status information It uses the repositories on your machine to create an efficient navigation widget and makes sure youll never loose track of your work along the way",
    "winget": "AndreasWascher.RepoZ",
    "choco": "repoz",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
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
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Go Programming Language",
    "description": "Go is expressive concise clean and efficient Its concurrency mechanisms make it easy to write programs that get the most out of multicore and networked machines while its novel type system enables flexible and modular program construction Go compiles quickly to machine code yet has the convenience of garbage collection and the power of runtime reflection Its a fast statically typed compiled language that feels like a dynamically typed interpreted language",
    "winget": "Language GoLang.Go",
    "choco": "golang",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Rust",
    "description": "Rust is a curlybrace blockstructured expression language It visually resembles the C language family but differs significantly in syntactic and semantic details Its design is oriented toward concerns of programming in the large that is of creating and maintaining boundaries  both abstract and operational  that preserve largesystem integrity availability and concurrency",
    "winget": "Rustlang.Rust.GNU",
    "choco": "rust",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Inkscape",
    "description": "Inkscape is an opensource vector graphics editor similar to Adobe Illustrator Corel Draw Freehand or Xara X What sets Inkscape apart is its use of Scalable Vector Graphics SVG an open XMLbased W3C standard as the native format",
    "winget": "Inkscape.Inkscape",
    "choco": "inkscape",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Youtube dl",
    "description": "outubedl is a small commandline program to download videos from YouTubecom and a few more sites It is written in Python and its not platform specific It should work in your Unix box in Windows or in Mac OS X It is released to the public domain which means you can modify it redistribute it or use it however you like",
    "winget": "youtube-dl.youtube-dl",
    "choco": "youtube-dl",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Postman",
    "description": "Postman helps you be more efficient while working with APIs Using Postman you can construct complex HTTP requests quickly organize them in collections and share them with your coworkers",
    "winget": "Postman.Postman",
    "choco": "postman",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Azure CLI",
    "description": "The Azure CLI is available across Azure services and is designed to get you working quickly with Azure with an emphasis on automation",
    "winget": "Microsoft.AzureCLI",
    "choco": "azure-cli",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "GameMaker Studio",
    "description": "GameMaker Studio has everything you need for games development no matter what your level or expertise",
    "winget": "YoYoGames.GameMaker.Studio.2",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Charles",
    "description": "Charles is an HTTP proxy  HTTP monitor  Reverse Proxy that enables a developer to view all of the HTTP and SSL  HTTPS traffic between their machine and the Internet This includes requests responses and the HTTP headers which contain the cookies and caching information",
    "winget": "XK72.Charles",
    "choco": "charles",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
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
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "espanso",
    "description": "A crossplatform Text Expander written in Rust",
    "winget": "Espanso.Espanso",
    "choco": "espanso",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Ability Office",
    "description": "Ability Office Standard offers 3 core applications essential for home and business Word Processor Spreadsheet and Presentation in one affordable office suite It also includes a Photoalbum and quick application Launcher Just perfect for working from home allowing files to be edited and exchanged with those back in the office and absolutely ideal for students and school children",
    "winget": "Ability.AbilityOffice.8.Standard",
    "choco": "abilityoffice",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Winbox",
    "description": "Small utility that allows administration of MikroTik RouterOS using a fast and simple GUI",
    "winget": "Mikrotik.Winbox",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "SearchMyFiles",
    "description": "SearchMyFiles allows you to make a very accurate search that cannot be done with Windows search For Example You can search all files created in the last 10 minutes with size between 500 and 700 bytes",
    "winget": "NirSoft.SearchMyFiles",
    "choco": "searchmyfiles",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "iTunes",
    "description": "iTunes is the best way to organize and enjoy the music movies and TV shows you already have and shop for the ones you want to get Its home to Apple Music which gives you unlimited access to millions of songs curated playlists1 and Beats 1 radio hosted by Zane Lowe and a team of acclaimed DJs Enjoy all the entertainment iTunes has to offer on your Mac and PC",
    "winget": "Apple.iTunes",
    "choco": "itunes",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "StartIsBack++",
    "description": "StartIsBack returns Windows 10 and Windows 8 a real fully featured start menu and start button behaving exactly like the ones in Windows 7",
    "winget": "StartIsBack.StartIsBack",
    "choco": "startisback",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Advanced SystemCare Free",
    "description": "Over time your computer may accumulate with large quantities of useless temporary and duplicate files Advanced SystemCare 12 will help clean up these junk files and free up your disk space Also you can use our advanced tools to make registry clean for better use",
    "winget": "XPFFGSS4Z9M2TX",
    "choco": "afedteated",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Send Anywhere",
    "description": "Send Anywhere is a multiplatform file sharing service where users can directly share digital content in real time",
    "winget": "Estmob.SendAnywhere",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "YUMI Legacy",
    "description": "YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary",
    "winget": "YumiUsb.Legacy",
    "choco": "yumi",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "YUMI UEFI",
    "description": "YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary",
    "winget": "YumiUsb.UEFI",
    "choco": "yumi-uefi",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "OP Auto Clicker",
    "description": "A fullfledged autoclicker with two modes of autoclicking at your dynamic cursor location or at a prespecified location The maximum amounts of clicked can also be set or left as infinite Hotkeys work in the background for convenience",
    "winget": "OPAutoClicker.OPAutoClicker",
    "choco": "autoclicker",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Spotube",
    "description": "Spotube is a Flutter based lightweight spotify client It utilizes the power of Spotify  Youtubes public API  creates a hazardless performant  resource friendly User Experience",
    "winget": "KRTirtho.Spotube",
    "choco": "spotube",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Audio Switcher",
    "description": "Easily switch the default audio device input or output on any Windows PC Vista and above Using this application you can switch output OR input sound devices at the click of a button or the press of a key I designed this application to be incredibly small and lightweight There is no bloat it does exactly what it should nothing more nothing less",
    "winget": "FortyOneLtd.AudioSwitcher",
    "choco": "audioswitcher",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Microsoft Teams Classic Desktop",
    "description": "Microsoft Teams is a messaging app for teams where all conversations meetings files and notes can be accessed by everyone all in one place Its a place for collaboration and work to happen in the open",
    "winget": "none",
    "choco": "microsoft-teams.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Microsoft Windows SDK",
    "description": "The Windows 10 SDK for Windows 10 version 1809 provides the latest headers libraries metadata and tools for building Windows 10 apps NoteWindows 10 development targeting Windows 10 version 1903 or later requires Visual Studio 2017 or later This SDK will not be discovered by previous versions of Visual Studio",
    "winget": "none",
    "choco": "windows-sdk-10.1",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "RunAsDate Portable",
    "description": "RunAsDate is a small utility that allows you to run a program in the date and time that you specify This utility doesnt change the current system date and time of your computer but it only injects the datetime that you specify into the desired application",
    "winget": "none",
    "choco": "runasdate",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Portable",
    "check": "false"
  },
  {
    "name": "Visual Studio 2017 Build ",
    "description": "These Build Tools allow you to build native and managed MSBuildbased applications without requiring the Visual Studio IDE There are options to install the Visual C compilers and libraries MFC ATL and CCLI support",
    "winget": "none",
    "choco": "visualstudio2017buildtools",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "MSEdgeRedirect",
    "description": "This tool filters and passes the command line arguments of Microsoft Edge processes into your default browser instead of hooking into the microsoftedge handler this should provide resiliency against future changes Additionally an Image File Execution Options mode is available to operate similarly to the Old EdgeDeflector Additional modes are planned for future versions",
    "winget": "rcmaehl.MSEdgeRedirect",
    "choco": "msedgeredirect",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 5",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "Microsoft.DotNet.HostingBundle.5",
    "choco": "dotnet-5.0-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 3",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "dotnetcore-3.0-desktopruntime",
    "choco": "Microsoft.DotNet.HostingBundle.3_1",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 6",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "Microsoft.DotNet.HostingBundle.6",
    "choco": "dotnet-6.0-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 7",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "Microsoft.DotNet.AspNetCore.7",
    "choco": "dotnet-7.0-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 8",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime",
    "winget": "Microsoft.DotNet.DesktopRuntime.8",
    "choco": "dotnet-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Viber",
    "description": "Viber is a mobile application that lets you make free phone calls and send text messages to anyone who also has the application installed You can call or text any Viber user anywhere in the world for free",
    "winget": "XPFM5P5KDWF0JP",
    "choco": "viber",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "StartAllBack",
    "description": "Introducing  StartAllBack Windows 11 from a better timeline Embrace enhance unsweep classic UI from under the rug",
    "winget": "StartIsBack.StartAllBack",
    "choco": "startallback",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "DiskGenius Free",
    "description": "With powerful capabilities and userfriendly interface DiskGenius Free Edition provides a robust solution for individuals and organizations to seek efficient disk management",
    "winget": "Eassos.DiskGenius",
    "choco": "diskgenius",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "UNFORMAT",
    "description": "UNFORMAT is a software utility created to solve almost all data loss scenarios due to logical failure It can recover deleted files on a disk or restore deleted or damaged partitions and volumes As well as recovers data after using the FORMAT command",
    "winget": "LSoftTechnologies.UNFORMAT",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Active@ UNDELETE",
    "description": "Active UNDELETE helps you to recover deleted files and restore deleted partitions from a variety of file systems such as FAT NTFS NTFS  EFS MacOS HFS ApFS Linux ext2 ext3 ext4 ZFS Unix UFS Advanced scan algorithms help to restore files even from severely damaged disks Sophisticated userfriendly UI makes navigation through your data a breeze",
    "winget": "LSoftTechnologies.ActiveUNDELETE",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "HxD Hex Editor",
    "description": "HxD is a carefully designed and fast hex editor which additionally to raw disk editing and modifying of main memory RAM handles files of any size",
    "winget": "MHNexus.HxD",
    "choco": "hxd",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Epic Games Launcher",
    "description": "The Epic Games Launcher is how you obtain the Unreal Game Engine modding tools and other Epic Games like Fortnite and the new Epic Games Store",
    "winget": "EpicGames.EpicGamesLauncher",
    "choco": "epicgameslauncher",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Vivaldi",
    "description": "The new Vivaldi browser protects you from trackers blocks unwanted ads and puts you in control with unique builtin features Get Vivaldi and browse fast",
    "winget": "VivaldiTechnologies.Vivaldi",
    "choco": "vivaldi",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Microsoft PC Manager",
    "description": "Microsoft PC manager a good way to protect your personal computer and optimize performance provides PC cleanup antivirus and Windows update making your computer safe and secure",
    "winget": "9PM860492SZD",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Openshot",
    "description": "OpenShot Video Editor is an awardwinning opensource video editor available on Linux Mac and Windows OpenShot can create stunning videos films and animations with an easytouse interface and rich set of features",
    "winget": "OpenShot.OpenShot",
    "choco": "openshot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "WhatsApp",
    "description": "WhatsApp Messenger or simply WhatsApp is an American freeware crossplatform centralized messaging and voiceoverIP VoIP service owned by Facebook Inc It allows users to send text messages and voice messages make voice and video calls and share images documents user locations and other content",
    "winget": "9NKSQGP7F2NH",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Paint.NET",
    "description": "PaintNET is image and photo editing software for PCs that run Windows",
    "winget": "dotPDNLLC.paintdotnet",
    "choco": "paint.net",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Stretchly",
    "description": "stretchly is a crossplatform electron app that reminds you to take breaks when working on your computer By default it runs in your tray and displays a reminder window containing an idea for a microbreak for 20 seconds every 10 minutes",
    "winget": "Stretchly.Stretchly",
    "choco": "stretchly",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Microsoft Silverlight",
    "description": "Silverlight is a powerful development tool for creating engaging interactive user experiences for Web and mobile applications",
    "winget": "none",
    "choco": "silverlight",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "TreeSize",
    "description": "Every hard disk is too small if you just wait long enough TreeSize Free tells you where precious disk space has gone",
    "winget": "JAMSoftware.TreeSize.Free",
    "choco": "treesizefree",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Dot Net 3.5",
    "description": "NET is a free crossplatform opensource developer platform for building many different types of applications",
    "winget": "Microsoft.DotNet.DesktopRuntime.3_1",
    "choco": "dotnet3.5",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Flash Player ActiveX",
    "description": "The Adobe Flash Player is freeware software for viewing multimedia executing Rich Internet Applications and streaming video and audio content created on the Adobe Flash platform",
    "winget": "none",
    "choco": "flashplayeractivex",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Google Drive",
    "description": "Google Drive  All your files  everywhere Safely store your files and access them from any device Choose folders on your computer to sync with Google Drive or backup to Google Photos and access all of your content directly from your PC or Mac",
    "winget": "none",
    "choco": "googledrive",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Dot Net 4.5.2",
    "description": "The Microsoft NET Framework 452 is a highly compatible inplace update to the Microsoft NET Framework 4 Microsoft NET Framework 45 and Microsoft NET Framework 451",
    "winget": "none",
    "choco": "dotnet4.5.2",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Dropbox",
    "description": "Organize all your team''s content, tune out distractions, and get everyone coordinated with the world''s first smart workspace.",
    "winget": "Dropbox.Dropbox",
    "choco": "dropbox",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "cURL",
    "description": "Command line tool and library for transferring data with URLs",
    "winget": "cURL.cURL",
    "choco": "curl",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PDF Creator",
    "description": "PDFCreator lets you convert any printable document to PDF",
    "winget": "pdfforge.PDFCreator",
    "choco": "pdfcreator",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Autoruns",
    "description": "This utility shows you what programs are configured to run during system bootup or login",
    "winget": "Microsoft.Sysinternals.Autoruns",
    "choco": "autoruns",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Microsoft OneDrive",
    "description": "Save your files and photos to OneDrive and access them from any device anywhere",
    "winget": "Microsoft.OneDrive",
    "choco": "onedrive",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Process Explorer",
    "description": "Process Explorer shows you information about which handles and DLLs processes have opened or loaded",
    "winget": "Microsoft.Sysinternals.ProcessExplorer",
    "choco": "procexp",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "FFmpeg",
    "description": "FFmpeg is a widelyused crossplatform multimedia framework which can process almost all common and many uncommon media formats It has over 1000 internal components to capture decode encode modify combine stream media and it can make use of dozens of external libraries to provide more capabilities",
    "winget": "Gyan.FFmpeg",
    "choco": "ffmpeg",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "OpenVPN Connect",
    "description": "The official OpenVPN Connect client software developed and maintained by OpenVPN Inc",
    "winget": "OpenVPNTechnologies.OpenVPNConnect",
    "choco": "openvpn-connect",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Git Large File Storage",
    "description": "Git Large File Storage LFS replaces large files such as audio samples videos datasets and graphics with text pointers inside Git while storing the file contents on a remote server like GitHubcom or GitHub Enterprise",
    "winget": "none",
    "choco": "git-lfs",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Nmap",
    "description": "Nmap Network Mapper is a free and open source utility for network discovery and security auditing",
    "winget": "Insecure.Nmap",
    "choco": "nmap",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "UltraVNC",
    "description": "UltraVNC is an open source application that uses the VNC protocol to control another computer remotely over a network connection UltraVNC allows the use of a remote computer",
    "winget": "uvncbvba.UltraVnc",
    "choco": "ultravnc",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Plex",
    "description": "Plex is a global streaming media service and a clientserver media player platform made by Plex Inc",
    "winget": "Plex.Plex",
    "choco": "plex",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Plex Media Server",
    "description": "Plex Media Server helps you organise your media and stream it to your devices",
    "winget": "Plex.PlexMediaServer",
    "choco": "plexmediaserver",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Microsoft Visio Viewer",
    "description": "By using Microsoft Visio 2016 Viewer Visio users can freely distribute Visio drawings files with a vsdx vsdm vsd vdx vdw vstx vstm vst or vtx extension to team members partners customers or others even if the recipients do not have Visio installed on their computer",
    "winget": "Microsoft.VisioViewer",
    "choco": "visioviewer",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Key''n''Stroke",
    "description": "KeynStroke makes it easy for your audience to follow your actions on the screen",
    "winget": "none",
    "choco": "key-n-stroke",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ability Office",
    "description": "Ability Office 8 Standard complete office suite",
    "winget": "Ability.AbilityOffice.8.Standard",
    "choco": "abilityoffice",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Fing",
    "description": "Fing App is a free network scanner that makes you discover all connected devices run internet speed tests and help troubleshoot network and device issues Get Fingbox for more advanced security and protection for your network",
    "winget": "none",
    "choco": "fing",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ryujinx",
    "description": "Ryujinx is an opensource Nintendo Switch emulator created by gdkchan and written in C This emulator aims at providing excellent accuracy and performance a userfriendly interface and consistent builds",
    "winget": "none",
    "choco": "ryujinx --params ''/DesktopShortcut''",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Omnify Hotspot",
    "description": "The best virtual router to turn your PC into a WiFi hotspot  repeater WiFi hotspot allows you to create a wireless access point and share your internet Its easy to use and quick to start as you only need to give it a name and password and then connect your smartphone tablet media player ereader printer laptop and other wireless devices The network name can also include Unicode characters and Emojis",
    "winget": "none",
    "choco": "omnifyhotspot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "MKVToolNix",
    "description": "MKVToolNix is a set of tools to create alter and inspect Matroska files under Linux other Unices and Windows",
    "winget": "MoritzBunkus.MKVToolNix",
    "choco": "mkvtoolnix",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Neat Download Manager",
    "description": "Neat Download Manager is a free Internet Download Manager for Windows",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "true",
        "url": "https://www.neatdownloadmanager.com/file/NeatDM_setup.exe",
        "extinction": "exe",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "no",
        "run": "yes"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "x630ce for all games",
    "description": "Xbox 360 Controller Emulator” allows your controller (gamepad, joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like “Grand Theft Auto” or “Saints Row” • Digitally Signed",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "https://www.x360ce.com/files/x360ce.zip",
        "extinction": "zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "none",
        "shortcut": "yes",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "x630ce x86",
    "description": "Xbox 360 Controller Emulator” allows your controller (gamepad, joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like “Grand Theft Auto” or “Saints Row” • Digitally Signed",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "https://www.x360ce.com/files/x360ce_x86.zip",
        "extinction": "zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "x360ce_x86.exe",
        "shortcut": "yes",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "x630ce x64",
    "description": "Xbox 360 Controller Emulator” allows your controller (gamepad, joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like “Grand Theft Auto” or “Saints Row” • Digitally Signed",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "https://www.x360ce.com/files/x360ce_x64.zip",
        "extinction": "zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "launcher": "x360ce_x64.exe",
        "shortcut": "yes",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Microsoft .NET SDK 7",
    "description": "NET is a free crossplatform opensource developer platform for building many different types of applications",
    "winget": "Microsoft.DotNet.SDK.7",
    "choco": "dotnet-7.0-sdk",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft .NET SDK 8",
    "description": "NET is a free crossplatform opensource developer platform for building many different types of applications",
    "winget": "Microsoft.DotNet.SDK.Preview",
    "choco": "dotnet-sdk",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft ASP.NET Core Runtime 7.0",
    "description": "NET is a free crossplatform opensource developer platform for building many different types of applications",
    "winget": "Microsoft.DotNet.AspNetCore.7",
    "choco": "dotnet-aspnetruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "HFS HTTP File Server",
    "description": "You can use HFS HTTP File Server to send and receive files Its different from classic file sharing because it uses web technology to be more compatible with todays Internet It also differs from classic web servers because its very easy to use and runs right outofthe box",
    "winget": "none",
    "choco": "hfs",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Cemu",
    "description": "Cemu is a highly experimental software to emulate Wii U applications on PC",
    "winget": "Cemu.Cemu",
    "choco": "cemu",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Chatterino",
    "description": "Chatterino is a chat client for Twitch chat that offers a clean and customizable interface for a better streaming experience",
    "winget": "ChatterinoTeam.Chatterino",
    "choco": "chatterino",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Clementine",
    "description": "Clementine is a modern music player and library organizer supporting various audio formats and online radio services",
    "winget": "Clementine.Clementine",
    "choco": "clementine",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Clink",
    "description": "Clink is a powerful Bashcompatible commandline interface CLIenhancement for Windows adding features like syntax highlighting and improved history",
    "winget": "chrisant996.Clink",
    "choco": "clink",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "CMake",
    "description": "CMake is an opensource crossplatform family of tools designed to build test and package software",
    "winget": "Kitware.CMake",
    "choco": "cmake",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "CopyQ Clipboard Manager",
    "description": "CopyQ is a clipboard manager with advanced features allowing you to store edit and retrieve clipboard history",
    "winget": "hluk.CopyQ",
    "choco": "copyq",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Crystal Disk Info",
    "description": "Crystal Disk Info is a disk health monitoring tool that provides information about the status and performance of hard drives It helps users anticipate potential issues and monitor drive health",
    "winget": "CrystalDewWorld.CrystalDiskInfo",
    "choco": "crystaldiskinfo",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Crystal Disk Mark",
    "description": "Crystal Disk Mark is a disk benchmarking tool that measures the read and write speeds of storage devices It helps users assess the performance of their hard drives and SSDs",
    "winget": "CrystalDewWorld.CrystalDiskMark",
    "choco": "crystaldiskmark",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Darktable",
    "description": "Opensource photo editing tool offering an intuitive interface advanced editing capabilities and a nondestructive workflow for seamless image enhancement",
    "winget": "darktable.darktable",
    "choco": "darktable",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "EA App",
    "description": "EA App is a platform for accessing and playing Electronic Arts games",
    "winget": "ElectronicArts.EADesktop",
    "choco": "ea-app",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Falkon",
    "description": "Falkon is a lightweight and fast web browser with a focus on user privacy and efficiency",
    "winget": "KDE.Falkon",
    "choco": "falkon",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "File Converter",
    "description": "File Converter is a very simple tool which allows you to convert and compress one or several files using the context menu in windows explorer",
    "winget": "AdrienAllard.FileConverter",
    "choco": "file-converter",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Files",
    "description": "Alternative file explorer",
    "winget": "none",
    "choco": "files",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Flameshot",
    "description": "Flameshot is a powerful yet simple to use screenshot software offering annotation and editing features",
    "winget": "Flameshot.Flameshot",
    "choco": "flameshot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Lightshot",
    "description": "Ligthshot is an Easytouse lightweight screenshot software tool where you can optionally edit your screenshots using different tools share them via Internet andor save to disk and customize the available options",
    "winget": "Skillbrains.Lightshot",
    "choco": "lightshot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "F.lux",
    "description": "flux adjusts the color temperature of your screen to reduce eye strain during nighttime use",
    "winget": "flux.flux",
    "choco": "flux",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "GitHub CLI",
    "description": "GitHub CLI is a commandline tool that simplifies working with GitHub directly from the terminal",
    "winget": "GitHub.cli",
    "choco": "gh",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "GOG Galaxy",
    "description": "GOG Galaxy is a gaming client that offers DRMfree games additional content and more",
    "winget": "GOG.Galaxy",
    "choco": "goggalaxy",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Greenshot",
    "description": "Greenshot is a lightweight screenshot software tool with builtin image editor and customizable capture options",
    "winget": "Greenshot.Greenshot",
    "choco": "greenshot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Hexchat",
    "description": "HexChat is a free opensource IRC Internet Relay Chat client with a graphical interface for easy communication",
    "winget": "HexChat.HexChat",
    "choco": "hexchat",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "HWMonitor",
    "description": "HWMonitor is a hardware monitoring program that reads PC systems main health sensors",
    "winget": "CPUID.HWMonitor",
    "choco": "hwmonitor",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "ImageGlass",
    "description": "ImageGlass is a versatile image viewer with support for various image formats and a focus on simplicity and speed",
    "winget": "DuongDieuPhap.ImageGlass",
    "choco": "imageglass",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Itch.io",
    "description": "Itchio is a digital distribution platform for indie games and creative projects",
    "winget": "ItchIo.Itch",
    "choco": "itch",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "KDE Connect",
    "description": "KDE Connect allows seamless integration between your KDE desktop and mobile devices",
    "winget": "KDE.KDEConnect",
    "choco": "kdeconnect-kde",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "KeePassXC",
    "description": "KeePassXC is a crossplatform opensource password manager with strong encryption features",
    "winget": "KeePassXCTeam.KeePassXC",
    "choco": "keepassxc",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Lazygit",
    "description": "Simple terminal UI for git commands",
    "winget": "JesseDuffield.lazygit",
    "choco": "lazygit",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "LocalSend",
    "description": "An open source crossplatform alternative to AirDrop",
    "winget": "LocalSend.LocalSend",
    "choco": "localsend.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Fork",
    "description": "Fork  a fast and friendly git client",
    "winget": "Fork.Fork",
    "choco": "git-fork",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PulsarEdit",
    "description": "A Communityled HyperHackable Text Editor",
    "winget": "Pulsar-Edit.Pulsar",
    "choco": "pulsar",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Shotcut",
    "description": "Shotcut is a free open source crossplatform video editor",
    "winget": "Meltytech.Shotcut",
    "choco": "Shotcut",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "PaleMoon",
    "description": "Pale Moon is an Open Source Goannabased web browser available for Microsoft Windows and Linux with other operating systems in development focusing on efficiency and ease of use",
    "winget": "MoonchildProductions.PaleMoon",
    "choco": "paleMoon",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "JoyToKey",
    "description": "enables PC game controllers to emulate the keyboard and mouse input",
    "winget": "JTKsoftware.JoyToKey",
    "choco": "joytokey",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Windows Auto Dark Mode",
    "description": "Automatically switches between the dark and light theme of Windows 10 and Windows 11",
    "winget": "Armin2208.WindowsAutoNightMode",
    "choco": "auto-dark-mode",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Windows Firewall Control",
    "description": "Windows Firewall Control is a powerful tool which extends the functionality of Windows Firewall and provides new extra features which makes Windows Firewall better",
    "winget": "BiniSoft.WindowsFirewallControl",
    "choco": "windowsfirewallcontrol",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "TightVNC",
    "description": "TightVNC is a free and Open Source remote desktop software that lets you access and control a computer over the network With its intuitive interface you can interact with the remote screen as if you were sitting in front of it You can open files launch applications and perform other actions on the remote desktop almost as if you were physically there",
    "winget": "GlavSoft.TightVNC",
    "choco": "TightVNC",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Python Version Manager",
    "description": "pyenv for Windows is a simple python version management tool It lets you easily switch between multiple versions of Python",
    "winget": "none",
    "choco": "pyenv-win",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Pixi",
    "description": "Pixi is a fast software package manager built on top of the existing conda ecosystem Spins up development environments quickly on Windows macOS and Linux Pixi supports Python R CC Rust Ruby and many other languages",
    "winget": "prefix-dev.pixi",
    "choco": "pixi",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "VSCodium",
    "description": "VSCodium is a communitydriven freelylicensed binary distribution of Microsofts VS Code",
    "winget": "VSCodium.VSCodium",
    "choco": "vscodium",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Thonny Python IDE",
    "description": "Python IDE for beginners",
    "winget": "AivarAnnamaa.Thonny",
    "choco": "thonny",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Poedit",
    "description": "Poedit translations editor The best way to translate apps and sites",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Adobe Acrobat Reader",
    "description": "Adobe Acrobat Reader DC software is the free trusted global standard for viewing printing signing sharing and annotating PDFs Its the only PDF viewer that can open and interact",
    "winget": "Adobe.Acrobat.Reader.32-bit",
    "choco": "adobereader",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Flash Player Plugin",
    "description": "The Adobe Flash Player is freeware software for viewing multimedia executing Rich Internet Applications and streaming video and audio content created on the Adobe Flash platform",
    "winget": "none",
    "choco": "flashplayerplugin",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Sysinternals",
    "description": "The Sysinternals Troubleshooting Utilities have been rolled up into a single suite of tools",
    "winget": "none",
    "choco": "sysinternals",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none",
        "shortcut": "no",
        "run": "no"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "SelfishNet",
    "description": "Control your internet bandwidth with SelfishNet V3, ARP Spoofing application.",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "true",
        "url": "https://github.com/nov0caina/SelfishNetV3/releases/download/SelfishNetV3.0.0/SelfishNetV3.0.0_Installer.zip",
        "extinction": "msi",
        "exeArgs": "/quiet",
        "output": "none",
        "launcher": "SelfishNetV3_Installer.msi",
        "shortcut": "no",
        "run": "yes"
      }
    ],
    "category": "Utilities",
    "check": "false"
  }
]
' | ConvertFrom-Json
$itt.database.locales = '{
  "Controls": {
    "ar": {
        "Welcome": "توفر هذه الأداة تسهيلات كبيرة في عملية تثبيت البرامج وتحسين الاداء. انضم إلينا لتساهم في تطويرها وجعلها أكثر اكتمالًا",
        "sysinfo": "معلومات النظام",
        "PowerOptions": "خيارات الطاقة",
        "devicemgr": "إدارة الأجهزة",
        "services": "خدمات",
        "networks": "شبكات",
        "appsfeatures": "التطبيقات و الميزات",
        "taskmgr": "مدير المهام",
        "diskmgr": "إدارة القرص",
        "InstallBtn": "تثبيت",
        "applyBtn": "تطبيق",
        "downloading": "جارٍ التثبيت",
        "about":"عن المطور",
        "thirdparty":"روابط خارجية",
        "preferences":"التفضيلات",
        "management":"إدارة الجهاز",
        "apps":"تطبيقات",
        "tweaks":"تحسينات",
        "settings": "إعدادات",
        "saveapps":"حفظ البرامج",
        "loadapps":"أسترجاع البرامج",
        "music":"الموسيقى",
        "on":"تشغيل ",
        "off":"كتم",
        "Dark":"ليلا",
        "Light":"نهارا",
        "defaultTheme":"استخدم إعدادات النظام",
        "ittlink":"أنشاء أختصار على سطح المكتب",
        "reset":"الوضع الافتراضي",
        "theme":"المظهر",
        "language":"اللغة",
        "mas":"تفعيل الويندوز",
        "winoffice":"تنزيل ويندوز / أوفيس",
        "idm":"تفعيل الدون لود مانجر",
        "extensions":"أضافات المتصفحات",
        "all": "الكل",
        "search": "بحث",
        "restorepoint": "إنشاء نقطة الاستعادة",
        "chocoloc": "مجلد التنزيلات المحمولة",
        "InstallMessage":"هل تريد تثبيت البرامج التالية",
        "ApplyMessage":"هل تريد تطبيق التحسينات التالية",
        "Applying": "جارٍ التطبيق",
        "Pleasewait": "يرجى الانتظار، يوجد عملية في الخلفية",
        "choseapp":"اختر على الأقل تطبيقًا لتثبيته",
        "chosetweak":"يرجى الانتظار حتى يتم تطبيق التحسينات",
        "lastupdate":"آخر تحديث",
        "sourcecode":"الشفرة المصدرية",
        "devby":"صنع بـ ♥ من قبل عماد عادل",
        "exit":"هل أنت متأكد من رغبتك في إغلاق البرنامج؟ إذا كان هناك أي تثبيتات، فسيتم إيقافها.",
        "watchdemo": "مرحبا بك",
        "happybirthday": "!عيد ميلاد سعيد عماد",
        "myplaylist": "انه عيد ميلادي و قائمة الموسيقى الخاصة بي",
        "Subtitle": "أداة اي تي تي مفتوحة المصدر يهدف هذا المشروع إلى تسهيل عملية تصطيب برامج الويندوز دفعة واحدة وتحسين أداء النظام. سواء كنت خبيرًا في البرمجة أو مستخدمًا يبحث عن تحسين تجربته على الويندوز، نرحب بمساهماتك, نتطلع لرؤية مساهماتكم وأفكاركم لجعل هذا المشروع أفضل لكل مستخدمي ويندوز. شكرًا لانضمامك إلينا"
    },
    "en": {
        "Welcome": "Save time by installing multiple programs at once and boost your Windows performance. Join us in improving the tool and make it great.",
        "sysinfo": "System Info",
        "PowerOptions": "Power Options",
        "devicemgr": "Device Manager",
        "services": "Services",
        "networks": "Networks",
        "appsfeatures": "Apps-Features",
        "taskmgr": "Task Manager",
        "diskmgr": "Disk Managment",
        "installBtn": "Install",
        "applyBtn": "Apply",
        "downloading": "Downloading",
        "about":"About",
        "thirdparty":"Third-party",
        "preferences":"Preferences",
        "management":"Management",
        "apps":"Apps",
        "tweaks":"Tweaks",
        "settings": "Settings",
        "saveapps":"Save",
        "loadapps":"Restore",
        "music":"Music",
        "on":"On ",
        "off":"Off",
        "Dark":"Dark ",
        "Light":"Light",
        "defaultTheme":"Use system setting",
        "ittlink":"Create desktop shortcut",
        "reset":"Reset Preferences",
        "reopen":"Please reopen ITT again.",
        "theme":"Theme",
        "language":"Language",
        "mas":"Microsoft Activation Scripts (MAS)",
        "winoffice":"Download Windows / Office ISO",
        "idm":"IDM Activation",
        "extensions":"Browsers Extensions",
        "all": "All",
        "search": "Search",
        "restorepoint": "Create a restore point",
        "chocoloc": "Portable Downloads Folder",
        "InstallMessage":"Do you want to install following applications",
        "ApplyMessage":"Do you want to install following tweaks",
        "installing": "Installing..",
        "Applying": "Applying..",
        "choseapp":"Select at least one app to install",
        "chosetweak":"Please wait while the tweaks are being applied",
        "pleasewait": "Please wait, a process is running in the background",
        "lastupdate":"Last update",
        "sourcecode":"Source Code",
        "devby":"Made with ♥ by Emad Adel",
        "exit":"Are you sure you want to close the program? If there are any installations, they will be terminated.",
        "watchdemo": "Welcome",
        "happybirthday": "Happy Birthday to me!",
        "myplaylist": "It''s my Birthday and My Playlist ♪",
        "Subtitle": "ITT tool aims to simplify the process of installing Windows programs all at once and improving system performance. Whether you are an expert in programming or a user looking to enhance your Windows experience, we welcome your contributions. We look forward to seeing your contributions and ideas to make this project better for all Windows users. Thank you for joining us."
    },
    "fr": {
        "Welcome": "Économisez du temps en installant plusieurs programmes à la fois et améliorez les performances de votre Windows. Rejoignez-nous pour améliorer l''outil et le rendre excellent.",
        "sysinfo": "Informations Système",
        "PowerOptions": "Options d''Alimentation",
        "devicemgr": "Gestionnaire de périphériques",
        "services": "Services",
        "networks": "Réseaux",
        "appsfeatures": "Fonctionnalités des Applications",
        "taskmgr": "Gestionnaire des tâches",
        "diskmgr": "Gestion des disques",
        "installBtn": "Installer",
        "applyBtn": "Appliquer",
        "downloading": "Téléchargement en cours",
        "about": "À propos",
        "thirdparty": "Tiers",
        "preferences": "Préférences",
        "management": "Gestion",
        "apps": "Applications",
        "tweaks": "Réglages",
        "settings": "Paramètres",
        "saveapps": "Enregistrer les applications sélectionnées",
        "loadapps": "Restaurer les applications sélectionnées",
        "music": "Musique",
        "on": "Activer",
        "off": "Désactiver",
        "Dark": "Sombre",
        "reset": "Réinitialiser les préférences",
        "Light": "Clair",
        "defaultTheme": "Système",
        "ittlink": "Créer un raccourci sur le bureau",
        "reopen": "Veuillez rouvrir ITT à nouveau.",
        "theme": "Thème",
        "language": "Langue",
        "mas": "Scripts d''Activation Microsoft (MAS)",
        "winoffice": "Télécharger Windows / Office ISO",
        "idm": "Activation IDM",
        "extensions": "Extensions de Navigateurs",
        "all": "Tout",
        "restorepoint": "Créer un point de restauration",
        "chocoloc": "Dossier Téléchargements Portable",
        "InstallMessage": "Souhaitez-vous installer les applications sélectionnées",
        "ApplyMessage": "Souhaitez-vous appliquer les ajustements sélectionnés",
        "installing": "Installation en cours...",
        "Applying": "Application des ajustements...",
        "choseapp": "Sélectionnez au moins une application à installer",
        "chosetweak": "Veuillez patienter pendant l''application des ajustements",
        "pleasewait": "Veuillez patienter, un processus est en cours en arrière-plan.",
        "lastupdate": "Dernière mise à jour",
        "sourcecode": "Code Source",
        "devby": "Créé avec ♥ par Emad Adel",
        "exit": "Êtes-vous sûr de vouloir fermer le programme ? Toute installation en cours sera interrompue.",
        "watchdemo": "Bienvenue",
        "happybirthday": "Joyeux Anniversaire Emad !",
        "myplaylist": "Doğum Günüm ve Playlistim ♪",
        "Subtitle": "ITT vise à simplifier le processus d''installation des programmes Windows en une seule fois et à améliorer les performances du système. Que vous soyez un expert en programmation ou un utilisateur cherchant à améliorer votre expérience Windows, nous accueillons vos contributions. Nous attendons avec impatience vos contributions et idées pour améliorer ce projet pour tous les utilisateurs de Windows. Merci de nous avoir rejoints."
    },
    "tr": {
        "Welcome": "Birden fazla programı tek seferde kurarak zaman kazanın ve Windows performansınızı artırın. Aracı iyileştirmemize katılın ve harika yapalım.",
        "sysinfo": "Sistem Bilgisi",
        "PowerOptions": "Güç Seçenekleri",
        "devicemgr": "Cihaz Yöneticisi",
        "services": "Hizmetler",
        "networks": "Ağlar",
        "appsfeatures": "Uygulamalar-Özellikler",
        "taskmgr": "Görev Yöneticisi",
        "diskmgr": "Disk Yönetimi",
        "installBtn": "Yükle",
        "applyBtn": "Uygula",
        "downloading": "İndiriliyor",
        "about": "Hakkında",
        "thirdparty": "Üçüncü Taraf",
        "preferences": "Tercihler",
        "management": "Yönetim",
        "apps": "Uygulamalar",
        "tweaks": "Düzeltmeler",
        "settings": "Ayarlar",
        "saveapps": "Seçili uygulamaları kaydet",
        "loadapps": "Seçili uygulamaları geri yükle",
        "music": "Müzik",
        "on": "Aç",
        "off": "Kapat",
        "Dark": "Koyu",
        "reset": "Tercihleri Sıfırla",
        "Light": "Açık",
        "defaultTheme": "Sistem",
        "ittlink": "Masaüstü kısayolu oluştur",
        "reopen": "Lütfen ITT''yi tekrar açın.",
        "theme": "Tema",
        "language": "Dil",
        "mas": "Microsoft Aktivasyon Komut Dosyaları (MAS)",
        "winoffice": "Windows / Office ISO İndir",
        "idm": "IDM Aktivasyonu",
        "extensions": "Tarayıcı Eklentileri",
        "all": "Tüm",
        "restorepoint": "Geri yükleme noktası oluştur",
        "chocoloc": "Taşınabilir İndirilenler Klasörü",
        "InstallMessage": "Seçilen uygulamaları yüklemek istiyor musunuz",
        "ApplyMessage": "Seçilen düzeltmeleri uygulamak istiyor musunuz",
        "installing": "Yükleniyor..",
        "Applying": "Uygulanıyor..",
        "choseapp": "Lütfen kurulacak en az bir uygulama seçin",
        "chosetweak": "Düzeltmelerin uygulanmasını bekleyin",
        "pleasewait": "Lütfen bekleyin, arka planda bir işlem var.",
        "lastupdate": "Son güncelleme",
        "sourcecode": "Kaynak Kod",
        "devby": "Emad Adel tarafından ♥ ile yapıldı",
        "exit": "Programı kapatmak istediğinizden emin misiniz? Eğer herhangi bir yükleme işlemi varsa, kesilecektir.",
        "watchdemo": "Hoş Geldiniz",
        "happybirthday": "Günün Kutlu Olsun Emad!",
        "myplaylist": "Bugün Benim Doğum Günüm ve Benim Çalma Listem ♪",
        "Subtitle": "ITT aracı, Windows programlarını tek seferde yükleme sürecini basitleştirmeyi ve sistem performansını artırmayı hedefliyor. İster programlama konusunda uzman olun ister Windows deneyiminizi geliştirmek isteyen bir kullanıcı olun, katkılarınızı memnuniyetle karşılıyoruz. Bu projeyi tüm Windows kullanıcıları için daha iyi hale getirmek adına katkılarınızı ve fikirlerinizi görmek için sabırsızlanıyoruz. Bize katıldığınız için teşekkür ederiz."
    },
    "zh": {
        "Welcome": "通过一次安装多个程序节省时间并提升您的Windows性能。加入我们，改进工具，使其更加优秀。",
        "sysinfo": "系统信息",
        "PowerOptions": "电源选项",
        "devicemgr": "设备管理器",
        "services": "服务",
        "networks": "网络",
        "appsfeatures": "应用特性",
        "taskmgr": "任务管理器",
        "diskmgr": "磁盘管理",
        "installBtn": "安装",
        "applyBtn": "应用",
        "downloading": "下载中",
        "about": "关于",
        "thirdparty": "第三方",
        "preferences": "偏好",
        "management": "管理",
        "apps": "应用",
        "tweaks": "调整",
        "settings": "设置",
        "saveapps": "保存选定应用",
        "loadapps": "恢复选定应用",
        "music": "音乐",
        "on": "开启",
        "off": "关闭",
        "reset": "重置偏好设置",
        "Dark": "深色",
        "Light": "浅色",
        "defaultTheme": "系统",
        "ittlink": "创建桌面快捷方式",
        "reopen": "请重新打开ITT。",
        "theme": "主题",
        "language": "语言",
        "mas": "Microsoft 激活脚本 (MAS)",
        "winoffice": "下载 Windows / Office ISO",
        "idm": "IDM 激活",
        "extensions": "浏览器扩展",
        "all": "都",
        "restorepoint": "创建还原点",
        "chocoloc": "便携下载文件夹",
        "InstallMessage": "是否要安装选定的应用",
        "ApplyMessage": "是否要应用选定的调整",
        "installing": "安装中..",
        "Applying": "应用中..",
        "choseapp": "请选择至少一款要安装的应用",
        "chosetweak": "请等待调整应用完成",
        "pleasewait": "请等待，后台有进程在进行中。",
        "lastupdate": "最后更新",
        "sourcecode": "源代码",
        "devby": "由 Emad Adel ♥ 制作",
        "exit": "您确定要关闭程序吗？如果有任何安装正在进行，它们将被终止。",
        "watchdemo": "欢迎",
        "happybirthday": "生日快乐 Emad!",
        "myplaylist": "这是我的生日和我的播放列表 ♪",
        "Subtitle": "开源的ITT工具旨在简化一次性安装Windows程序的过程，并提高系统性能。无论您是编程专家还是希望提升Windows体验的用户，我们都欢迎您的贡献。我们期待看到您的贡献和想法，以使该项目为所有Windows用户提供更好的服务。感谢您的加入。"
    },
    "ko": {
        "Welcome": "여러 프로그램을 한 번에 설치하여 시간을 절약하고 Windows 성능을 향상시킵니다. 도구를 개선하고 우리와 함께 훌륭하게 만들어 보세요.",
        "sysinfo": "시스템 정보",
        "PowerOptions": "전원 옵션",
        "devicemgr": "장치 관리자",
        "services": "서비스",
        "networks": "네트워크",
        "appsfeatures": "앱 기능",
        "taskmgr": "작업 관리자",
        "diskmgr": "디스크 관리",
        "installBtn": "설치",
        "applyBtn": "적용",
        "downloading": "다운로드 중",
        "about": "정보",
        "thirdparty": "외부",
        "preferences": "환경 설정",
        "management": "관리",
        "apps": "앱",
        "tweaks": "설정",
        "settings": "설정",
        "saveapps": "선택한 앱 저장",
        "loadapps": "선택한 앱 복원",
        "music": "음악",
        "on": "켜기",
        "reset": "환경 설정 초기화",
        "off": "끄기",
        "Dark": "다크",
        "Light": "라이트",
        "defaultTheme": "시스템",
        "ittlink": "바탕화면 바로 가기 만들기",
        "reopen": "ITT를 다시 열어주세요.",
        "theme": "테마",
        "language": "언어",
        "mas": "Microsoft 활성화 스크립트 (MAS)",
        "winoffice": "Windows / Office ISO 다운로드",
        "idm": "IDM 활성화",
        "extensions": "브라우저 확장 프로그램",
        "all": "모두",
        "restorepoint": "복원 지점 생성",
        "chocoloc": "휴대용 다운로드 폴더",
        "InstallMessage": "선택한 앱을 설치하시겠습니까",
        "ApplyMessage": "선택한 조정 사항을 적용하시겠습니까",
        "installing": "설치 중..",
        "Applying": "적용 중..",
        "choseapp": "설치할 적어도 하나의 앱을 선택하십시오",
        "chosetweak": "조정 사항 적용 대기 중",
        "pleasewait": "배경에서 프로세스가 진행 중입니다. 잠시 기다려주세요.",
        "lastupdate": "마지막 업데이트",
        "sourcecode": "소스 코드",
        "devby": "Emad Adel 제작 ♥",
        "exit": "프로그램을 종료하시겠습니까? 진행 중인 설치가 있으면 중단됩니다.",
        "watchdemo": "환영합니다",
        "happybirthday": "생일 축하합니다 Emad!",
        "myplaylist": "제 생일과 제 플레이리스트 ♪",
        "Subtitle": "오픈 소스 ITT 도구는 Windows 프로그램을 한 번에 설치하고 시스템 성능을 개선하는 과정을 간소화하는 것을 목표로 합니다. 프로그래밍 전문가이든 Windows 경험을 향상시키려는 사용자이든, 여러분의 기여를 환영합니다. 이 프로젝트를 모든 Windows 사용자에게 더 좋게 만들기 위해 여러분의 기여와 아이디어를 기대합니다. 함께 해주셔서 감사합니다."
    },
    "de": {
        "Welcome": "Sparen Sie Zeit, indem Sie mehrere Programme gleichzeitig installieren und verbessern Sie die Leistung Ihres Windows. Helfen Sie uns dabei, das Tool zu verbessern und großartig zu machen.",
        "sysinfo": "Systeminformationen",
        "PowerOptions": "Energieoptionen",
        "devicemgr": "Geräte-Manager",
        "services": "Dienste",
        "networks": "Netzwerke",
        "appsfeatures": "Apps-Funktionen",
        "taskmgr": "Task-Manager",
        "diskmgr": "Festplattenverwaltung",
        "installBtn": "Installieren",
        "applyBtn": "Anwenden",
        "downloading": "Herunterladen",
        "about": "Über",
        "thirdparty": "Drittanbieter",
        "preferences": "Einstellungen",
        "management": "Verwaltung",
        "apps": "Apps",
        "tweaks": "Anpassungen",
        "settings": "Einstellungen",
        "saveapps": "Ausgewählte Apps speichern",
        "loadapps": "Ausgewählte Apps wiederherstellen",
        "music": "Musik",
        "on": "Stummschalten ",
        "reset": "Einstellungen zurücksetzen",
        "off": "Stummschalten",
        "Dark": "Dunkel ",
        "Light": "Hell",
        "defaultTheme": "System",
        "ittlink": "Desktop-Verknüpfung erstellen",
        "reopen": "Bitte öffnen Sie ITT erneut.",
        "theme": "Thema",
        "language": "Sprache",
        "mas": "Microsoft-Aktivierungsskripte (MAS)",
        "winoffice": "Windows / Office ISO herunterladen",
        "idm": "IDM-Aktivierung",
        "extensions": "Browser-Erweiterungen",
        "all": "Alle",
        "restorepoint": "Wiederherstellungspunkt erstellen",
        "chocoloc": "Tragbarer Download-Ordner",
        "InstallMessage": "Möchten Sie die ausgewählten Apps installieren?",
        "ApplyMessage": "Möchten Sie die ausgewählten Anpassungen anwenden?",
        "installing": "Installiere..",
        "Applying": "Wende an..",
        "choseapp": "Wählen Sie mindestens eine App zum Installieren aus",
        "chosetweak": "Bitte warten Sie, bis die Anpassungen angewendet wurden",
        "pleasewait": "Bitte warten Sie, es läuft ein Prozess im Hintergrund.",
        "lastupdate": "Letztes Update",
        "sourcecode": "Quellcode",
        "devby": "Hergestellt mit ♥ von Emad Adel",
        "exit": "Sind Sie sicher, dass Sie das Programm schließen möchten? Falls Installationen laufen, werden sie abgebrochen.",
        "watchdemo": "Willkommen",
        "happybirthday": "Alles Gute zum Geburtstag, Emad!",
        "myplaylist": "Es ist mein Geburtstag und meine Playlist ♪",
        "Subtitle": "ITT zielt darauf ab, den Prozess der gleichzeitigen Installation von Windows-Programmen zu vereinfachen und die Systemleistung zu verbessern. Ob Sie ein Experte in der Programmierung oder ein Benutzer sind, der seine Windows-Erfahrung verbessern möchte, wir begrüßen Ihre Beiträge. Wir freuen uns auf Ihre Beiträge und Ideen, um dieses Projekt für alle Windows-Benutzer zu verbessern. Vielen Dank, dass Sie sich uns angeschlossen haben."
    },
    "ru": {
        "Welcome": "Экономьте время, устанавливая несколько программ одновременно и улучшая производительность Windows. Присоединяйтесь к нам в улучшении этого инструмента и сделайте его лучше.",
        "sysinfo": "Информация о системе",
        "PowerOptions": "Питание",
        "devicemgr": "Диспетчер устройств",
        "services": "Службы",
        "networks": "Сети",
        "appsfeatures": "Особенности приложений",
        "taskmgr": "Диспетчер задач",
        "diskmgr": "Управление дисками",
        "installBtn": "Установить",
        "applyBtn": "Применить",
        "downloading": "Загрузка",
        "about": "О программе",
        "thirdparty": "Сторонние приложения",
        "preferences": "Настройки",
        "management": "Управление",
        "apps": "Приложения",
        "tweaks": "Настройки",
        "settings": "Настройки",
        "saveapps": "Сохранить выбранные приложения",
        "loadapps": "Восстановить выбранные приложения",
        "music": "Музыка",
        "on": "Включить ",
        "reset": "Сбросить настройки",
        "off": "Выключить",
        "Dark": "Темная ",
        "Light": "Светлая",
        "defaultTheme": "Системная",
        "ittlink": "Создать ярлык на рабочем столе",
        "reopen": "Пожалуйста, снова откройте ITT.",
        "theme": "Тема",
        "language": "Язык",
        "mas": "Скрипты активации Microsoft (MAS)",
        "winoffice": "Скачать Windows / Office ISO",
        "idm": "Активация IDM",
        "extensions": "Расширения браузера",
        "all": "Все",
        "restorepoint": "Создать точку восстановления",
        "chocoloc": "Портативная папка загрузок",
        "InstallMessage": "Хотите установить выбранные приложения?",
        "ApplyMessage": "Хотите применить выбранные настройки?",
        "installing": "Установка..",
        "Applying": "Применение..",
        "choseapp": "Выберите хотя бы одно приложение для установки",
        "chosetweak": "Пожалуйста, подождите, пока будут применены настройки",
        "pleasewait": "Пожалуйста, подождите, идет процесс на заднем плане.",
        "lastupdate": "Последнее обновление",
        "sourcecode": "Исходный код",
        "devby": "Сделано с ♥ Emad Adel",
        "exit": "Вы уверены, что хотите закрыть программу? Если есть установки, они будут прерваны.",
        "watchdemo": "Добро пожаловать",
        "happybirthday": "С днем рождения, Emad!",
        "myplaylist": "Мой день рождения и мой плейлист ♪",
        "Subtitle": "ITT открытым исходным кодом предназначен для упрощения процесса установки программ Windows одновременно и улучшения производительности системы. Независимо от того, являетесь ли вы экспертом в программировании или пользователем, стремящимся улучшить свой опыт работы с Windows, мы приветствуем ваши предложения. Мы с нетерпением ждем ваших предложений и идей, чтобы сделать этот проект лучше для всех пользователей Windows. Спасибо, что присоединились к нам."
    },
    "es": {
    "Welcome": "Ahorra tiempo instalando varios programas a la vez y mejora el rendimiento de tu Windows. Únete a nosotros para mejorar la herramienta y hacerla excelente.",
    "sysinfo": "Información del Sistema",
    "PowerOptions": "Opciones de Energía",
    "devicemgr": "Administrador de Dispositivos",
    "services": "Servicios",
    "networks": "Redes",
    "appsfeatures": "Aplicaciones-Características",
    "taskmgr": "Administrador de Tareas",
    "diskmgr": "Administración de Discos",
    "installBtn": "Instalar",
    "applyBtn": "Aplicar",
    "downloading": "Descargando",
    "about": "Acerca de",
    "thirdparty": "Terceros",
    "preferences": "Preferencias",
    "management": "Gestión",
    "apps": "Aplicaciones",
    "tweaks": "Ajustes",
    "settings": "Configuración",
    "saveapps": "Guardar aplicaciones seleccionadas",
    "loadapps": "Restaurar aplicaciones seleccionadas",
    "music": "Música",
    "on": "Activado ",
    "reset": "Restablecer preferencias",
    "off": "Desactivado",
    "Dark": "Oscuro ",
    "Light": "Claro",
    "defaultTheme": "Sistema",
    "ittlink": "Crear acceso directo en el escritorio",
    "reopen": "Por favor, vuelva a abrir ITT.",
    "theme": "Tema",
    "language": "Idioma",
    "mas": "Scripts de Activación de Microsoft (MAS)",
    "winoffice": "Descargar ISO de Windows / Office",
    "idm": "Activación de IDM",
    "extensions": "Extensiones de Navegadores",
    "all": "Todo",
    "restorepoint": "Crear punto de restauración",
    "chocoloc": "Carpeta de Descargas Portátiles",
    "InstallMessage": "¿Deseas instalar las aplicaciones seleccionadas?",
    "ApplyMessage": "¿Deseas aplicar los ajustes seleccionados?",
    "installing": "Instalando..",
    "Applying": "Aplicando..",
    "choseapp": "Selecciona al menos una aplicación para instalar",
    "chosetweak": "Por favor espera mientras se aplican los ajustes",
    "pleasewait": "Por favor espera, hay un proceso en segundo plano.",
    "lastupdate": "Última actualización",
    "sourcecode": "Código Fuente",
    "devby": "Hecho con ♥ por Emad Adel",
    "exit": "¿Estás seguro de que quieres cerrar el programa? Si hay instalaciones en curso, se cancelarán.",
    "watchdemo": "Bienvenido",
    "happybirthday": "¡Feliz Cumpleaños Emad!",
    "myplaylist": "Es mi cumpleaños y mi lista de reproducción ♪",
    "Subtitle": "ITT de código abierto tiene como objetivo simplificar el proceso de instalación de programas de Windows de una sola vez y mejorar el rendimiento del sistema. Ya seas un experto en programación o un usuario que busca mejorar su experiencia en Windows, damos la bienvenida a tus contribuciones. Esperamos con interés ver tus contribuciones e ideas para mejorar este proyecto para todos los usuarios de Windows. Gracias por unirte a nosotros."
    }
  },
  "Updates":{
    "Keyboard": "Enter Key: Performs different actions depending on the current view:\n  - Apps List View: Installs selected applications.\n  - Tweaks List View: Applies selected tweaks.\n\nCtrl + S: Same action as Enter Key:\n  - Apps List View: Installs selected applications.\n  - Tweaks List View: Applies selected tweaks.\n\nCtrl + G: Closes the application.\n\nCtrl + F: Enter search mode. Press ESC to exit.\n\nCtrl + Q: Switch to the ''Apps'' tab.\n\nCtrl + W: Switch to the ''Tweaks'' tab.\n\nCtrl + E: Switch to the ''Settings'' tab.\n\nShift + S: Save items to JSON file.\n\nShift + D: Load items from JSON file.\n\nShift + M: Mute music.\n\nShift + F: Play music.\n\nShift + P: Open Choco folder in File Explorer.\n\nShift + Q: Restore point.\n\nShift + I: ITT Shortcut."
    }
}
' | ConvertFrom-Json
$itt.database.OST = '{
  "Tracks": [
    {
      "name": "Further - Far cry-3",
      "url": "https://epsilon.vgmsite.com/soundtracks/far-cry-3/iqgdbfrhtw/17.%20Further%20%28feat.%20Serena%20McKinney%29.mp3"
    },
    {
      "name": "Grand Theft Auto 4 Theme Song",
      "url": "https://archive.org/download/GrandTheftAuto4ThemeSong_201904/Grand%20Theft%20Auto%204%20Theme%20Song.mp3"
    },
    {
      "name": "Mass Effect-3 - End of Cycle",
      "url": "https://epsilon.vgmsite.com/soundtracks/mass-effect-3-gamerip-2012/nchtmgcz/304.%20End%20of%20Cycle.mp3"
    },
    {
      "name": "Intro (Somerville Original Soundtrack)",
      "url": "https://dl.vgmdownloads.com/soundtracks/somerville-2022/naszqoqnhr/01.%20Intro%20%28Somerville%20Original%20Soundtrack%29%20%28feat.%20Dominique%20Charpentier%29.mp3"
    },
    {
      "name": "Kate Chruscicka - Requiem For A Dream",
      "url": "https://archive.org/download/kate-chruscicka-requiem-for-a-dream-electric-violin/Kate%20Chruscicka-Requiem%20For%20A%20Dream%20%28Electric%20Violin%29.mp3"
    },
    {
      "name": "Hans Zimmer - Time",
      "url": "https://archive.org/download/InceptionSoundtrackHD12TimeHansZimmer/Inception%20Soundtrack%20HD%20-%20%2312%20Time%20%28Hans%20Zimmer%29.mp3"
    },
    {
      "name": "Westworld - Exit Music (For a Film)",
      "url": "https://archive.org/download/exit-music-for-a-film-westworld-soundtrack/exit-music-for-a-film-westworld-soundtrack.mp3"
    },
    {
      "name": "Ludovico Einaudi - Experience",
      "url": "https://archive.org/download/ludovico-einaudi-experience-mp-3-70-k/Ludovico%20Einaudi%20-%20Experience%28MP3_70K%29.mp3"
    },
    {
      "name": "Hans Zimmer - No Time for Caution ",
      "url": "https://archive.org/download/interstellar-soundtrack/22%20No%20Time%20for%20Caution%20%28Docking%20scene%29%201.m4a"
    },
    {
      "name": "Cyberpunk - Rebel Path",
      "url": "https://eta.vgmtreasurechest.com/soundtracks/cyberpunk-2077-original-game-score/zalnnwrhwh/1-03%20The%20Rebel%20Path.mp3"
    },
    {
      "name": "Max Richter - Leftovers Piano Theme",
      "url": "https://archive.org/download/tvtunes_32383/HBOs%20The%20Leftovers%20Piano%20Theme%20-%20Max%20Richter.mp3"
    },
    {
      "name": "Assassin Creed II - Ezio''s Family",
      "url": "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/jlrprchapt/1-03%20Ezio%27s%20Family.mp3"
    }
  ],
  "Favorite": [
    {
      "name": "Radiohead -  Exit Music (For a Film)",
      "url": "https://archive.org/download/06-everything-in-its-right-place-live-in-france/OK%20Computer/04%20Exit%20Music%20%28For%20a%20Film%29.mp3"
    },
    {
      "name": "Billie Eilish - No Time To Die",
      "url": "https://archive.org/download/06-everything-in-its-right-place-live-in-france/OK%20Computer/04%20Exit%20Music%20%28For%20a%20Film%29.mp3"
    },
    {
      "name": "Imagine Dragons - Roots",
      "url": "https://archive.org/download/ImagineDragons_20190510_0456/Imagine%20Dragons%20-%20Roots.mp3"
    },
    {
      "name": "Imagine Dragons - Believer",
      "url": "https://archive.org/download/bunchofimaginedragons/14%20Imagine%20Dragons%20-%20Believer.mp3"
    },
    {
      "name": "Imagine Dragons - Thunder",
      "url": "https://archive.org/download/imaginedragonsmusicalbum/Imagine%20Dragons%20-%20Thunder.mp3"
    },
    {
      "name": "Imagine Dragons - Birds",
      "url": "https://archive.org/download/bunchofimaginedragons/14%20Imagine%20Dragons%20-%20Birds.mp3"
    },
    {
      "name": "Kxllswxtch - WASTE",
      "url": "https://archive.org/download/rock-playlist_202305/WASTE.mp3"
    },
    {
      "name": "Imagine Dragons - Lonely",
      "url": "https://archive.org/download/discography-imagine-dragons/discography%20Imagine%20Dragons/MP3%20320%20Kbps/05Imagine%20Dragons%20-%20Mercury%20-%20Act%201/03%20Lonely.mp3"
    },
    {
      "name": "Sharks - Imagine Dragons",
      "url": "https://archive.org/download/discography-imagine-dragons/discography%20Imagine%20Dragons/MP3%20320%20Kbps/06Imagine%20Dragons%20-%20Mercury%20-%20Act%202/03%20Sharks.mp3"
    },
    {
      "name": "Roma - Cairokee",
      "url": "https://archive.org/download/Cairokee-Roma/07%20-%20Roma.mp3"
    },
    {
      "name": "Sigrid - Everybody Knows",
      "url": "https://archive.org/download/justiceleagueflac/Danny%20Elfman%20-%20Justice%20League%20%28Original%20Motion%20Picture%20Soundtrack%29/01%20-%20Everybody%20Knows.mp3"
    }
  ]
}
' | ConvertFrom-Json
$itt.database.Quotes = '{
  "Q": [
    "إما تموت بطلا، أو تعيش طويلاً حتى ترى نفسك اصبحت الشرير",
    "بعض الرجال يريدون فقط مشاهدة العالم يحترق",
    "أنت دائما تخشى ما لا تفهمه",
    "التعاون مع الشر لا يجعلك تفوز. إنه يجعلك مثله",
    "القتال الحقيقي هو دائمًا ضد الذات",
    "الوحدة هي أسوأ أشكال العقوبة",
    "الجمال الحقيقي لا يكمن في المظهر الخارجي، بل في النية والروح",
    "ليس كل ما نخاف منه سيئًا، وليس كل ما نحبه جيدًا",
    "ظننت أنه يمكننا أن نكون رجالاً شرفاء في زمن غير شريف",
    "يمكنك أن تعطي رجلاً مسدسًا ليسرق بنكًا، لكن أعطه بنكًا يمكنه سرقة العالم",
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
    "ولدت من جديد حينما رأيت ذالك",
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
    "الحقيقة ليست دائماً واضحة، لكنها دائماً موجودة",
    "الجشع هو موتك السريع، والغباء هو رصاصتك الخاصة",
    "الحياة ليست سهلة، ولكن الصعوبات تجعلنا أقوى",
    "تموت البراءة وتحيا الكلاب",
    "رجال الحق قالو الصابرون نالوا والذهن حامل لما لا تحمل الجبال",
    "أردتم السلام , فأشعلنا حربا في الخفاء",
    "أنت لأ تخاف الموت أنت ترحب به",
    "لاستغلال خوف الآخرين، عليك أن تسيطر على خوفك",
    "حرية كذابة، عالم إستبدادي",
    "رَحْمَتِي وَسِعَتْ كُلَّ شَيْءٍ",
    "عندما تتبول الأنظمة علي الشعوب تتسارع الصحافة لإقناعهم بانها مطر و رجال الدين بانها طاهرة",
    "عايش في أكبر سجن بس من جوايا حر",
    "قلبي نطق بالحقيقة بالخيانة إتوصف",
    "الحقيقة هي، أن الأشياء نادراً ما تسير كما نريدها",
    "الحظ ليس عادلاً، ولكن العالم ليس كذلك أيضًا.",
    "الحرية تأتي بثمن. وأحياناً، تكون الكلفة مرتفعة للغاية",
    "الأشياء التي نحبها أكثر، هي الأشياء التي نفقدها",
    "أصغر الاصوات بإمكانها أن تصبح عظيمة",
    "هل انت 0 ام 1",
    "حياتي جعلتني كالميت الحي لكن انعكاسي اظهر لي مازلت على قيد الحياة",
    "المقاومه ما هي الا نتاج للقهر والظلم والاستبداد",
    "لقد خلقنا الله أحراراً، ولم يخلقنا تراثاً أو عقاراً",
    "الرأسمالية هي آلة تعمل على سحق الأمل لصالح الجشع",
    "الرأسمالية تجعل من البشر مجرد أدوات لتحقيق الربح",
    "الرأسمالية تخلق تفاوتًا اقتصاديًا وظلمًا اجتماعيًا لا يمكن التغاضي عنه",
    "الرأسمالية تجعلنا نعتقد أن السعادة مرتبطة بالامتلاك، وليس بالوجود",
    "الرأسمالية تضع الربح قبل القيم الإنسانية",
    "الظلم يولد الطغيان والمقاومة",
    "الوحدة هي ذلك المكان الذي تكتشف فيه نفسك دون ضغوط من الآخرين",
    "الوحدة هي الهدوء الذي يعزلك عن العالم ويجعلك تكتشف نفسك",
    "لا يمكن لأي قوة على وجه الأرض أن تقهر روحاً متمسكة بالإيمان في الحق",
    "إذا صَرَختَ فأَسمِع وإذا ضَرَبتَ فأوجِع، فإن العَاقِبة واحِدة",
    "!لا يتعلق الأمر بما أريده، بل بما هو مُنصف",
    "الشيء الوحيد الذي يخشونه هو أنت",
    "أبحث عن الوسائل لمحاربة الظلم، لأحول الخوف ضد أولئك الذين يفترسون الضعفاء",
    "أعتقد أن أي شيء لا يقتلك يجعلك ببساطة... أكثر غرابة",
    "إنهم يحتاجون إليك الآن، لكن عندما لا يعودون بحاجة إليك، سيتركونك وحيداً",
    "الرجل المناسب في المكان الخطأ يمكن أن يحدث فرقاً كبيراً في العالم",
    "The right man in the wrong place can make all the difference in the world. - Half-Life 2",
    "We''re Thieves In A World That Don''t Want Us No More. - Arthur Morgan",
    "I Have A Plan. - Dutch",
    "In A World Without Gold, We Might Have Been Heroes!. - Blackbeard",
    "We Are Free To Follow Our Own Path. There Are Those Who Will Take That Freedom From Us. - Ezio Auditore",
    "Learning is knowledge, and knowledge is freedom and power. - Altaïr",
    "They need you right now, but when they don''t, they''ll cast you out. - Joker",
    "I Believe That Whatever Doesn''t Kill You, Simply Makes You Stranger. - Joker",
    "Some men just want to watch the world burn. - Alfred",
    "You either die a hero or live long enough to see yourself become the villain. - Harvey dent",
    "Give a man a gun and he can rob a Bank. Give a man a Bank and he can rob the world. - Mr. Robot",
    "Everybody knows the fight was fixed.. The poor stay poor, the rich get rich",
    "الجميع يعلم أن الحرب كانت مسرحية. الفقراء يبقون فقراء، والأغنياء يزدادون غنى",
    "كل شيء في الحياة يأتي ويذهب، ولكن الذكريات تبقى في القلب",
    "الأشخاص الذين نحبهم لا يغادرون، بل يتركون بصمة في قلوبنا تظل إلى الأبد",
    "ما الحياة سوى رحلة قصيرة بين الولادة والموت، لذا لنعيشها بكل لحظة كما لو كانت الأخيرة",
    "البرمجة ليست مجرد كتابة الأكواد، بل هي فن حل المشكلات بطرق إبداعية",
    "البرمجة هي القدرة على تحويل الأفكار إلى واقع، قطعة من الكود في كل مرة",
    "البرمجة ليست مجرد مهنة، بل هي شغف يدفعك لإنشاء شيء من لا شيء",
    "كل خطأ في الكود هو فرصة للتعلم والنمو، وليس مجرد فشل",
    "أحياناً تكون الوحدة أكثر وضوحاً عندما تكون محاطاً بأشخاص لا يشاركونك أفكارك ومشاعرك",
    "تم تخدير الشعوب بعد أن سرقوا أموالهم, بتوظيف الدين لإقناع الفقراء بإنهم سيدخلون الجنة قبل الاغنياء",
    "اذا كنت لا تستطيع رفع الظلم ، على الأقل أخبر الجميع عنه",
    "If you can''t lift the injustice, at least tell everyone about it.",
    "Live together, die alone",
    "نعيش معًا، او الموت وحيدا",
    "لم يهتم أحد بمن أكون، حتى ارتديت القناع",
    "No one cared who I was, until I put on the mask -Bane",
    "Peace has cost you your strength. Victory has defeated you -Bane",
    "Why Do We Fall? So That We Can Learn To Pick Ourselves Up -Alfred"
  ]
}
' | ConvertFrom-Json
$itt.database.Settings = '[
  {
      "Content": "Show file extensions",
      "Name":"ToggleShowExt",
      "description": "Show file extensions in Windows displays the suffix at the end of file names (like .txt, .jpg, .exe), indicating file types and helping users identify which programs can open them, simplifying file management and differentiation.",
      "category": "Protection"
    },
  {
    "Content": "Show Super Hidden",
    "Name":"ToggleShowHidden",
    "description": "Show Super Hidden displays files and folders in Windows that are hidden beyond standard hidden files, often system files to prevent accidental changes.",
    "category": "Protection"

},
  {
    "Content": "Dark Mode",
    "Name":"ToggleDarkMode",
    "description": "Dark Mode is a setting that changes the screen to darker colors, reducing eye strain and saving battery life on OLED screens.",
    "category": "Personalize"
  },
  {
    "Content": "NumLook",
    "Name":"ToggleNumLook",
    "description": "Toggle the Num Lock key state when your computer starts.",
    "category": "Protection"
  },
  {
    "Content": "Sticky Keys",
    "Name":"ToggleStickyKeys",
    "description": "Sticky keys is an accessibility feature of some graphical user interfaces which assists users who have physical disabilities or help users reduce repetitive strain injury.",
    "category": "Accessibility"
  },
  {
    "Content": "Mouse Acceleration",
    "Name":"MouseAcceleration",
    "description": "Cursor movement is affected by the speed of your physical mouse movements",
    "category": "Accessibility"
  }
]' | ConvertFrom-Json
$itt.database.Tweaks = '[
  {
    "Name": "Disk cleanup",
    "Description": "Clean temporary files that are not necessary",
    "Check": "false",
    "Category": "Cleanup",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "
        Remove-Item -Path \"$env:LOCALAPPDATA\\Temp\\*\" -Recurse -Force -ErrorAction SilentlyContinue
        Remove-Item -Path \"C:\\Windows\\Prefetch\\*\" -Recurse -Force -ErrorAction SilentlyContinue
        Stop-Service -Name wuauserv -Force
        takeown /f C:\\Windows\\SoftwareDistribution\\Download /r /d y
        icacls C:\\Windows\\SoftwareDistribution\\Download /grant administrators:F /t
        Remove-Item -Path \"C:\\Windows\\SoftwareDistribution\\Download\\*\" -Recurse -Force -ErrorAction SilentlyContinue
        cleanmgr.exe /d C: /VERYLOWDISK /sagerun:1 Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
        cleanmgr.exe /d C: /sagerun:1
        cleanmgr.exe /sagerun:1
        Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
        Dism.exe /online /Cleanup-Image /StartComponentCleanup
        cleanmgr.exe /d C: /VERYLOWDISK
        Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
        Start-Service -Name wuauserv
      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "System File Checker",
    "Description": "sfc /scannow Use the System File Checker tool to repair missing or corrupted system files",
    "Check": "false",
    "Category": "Fixer",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "
        Chkdsk /scan
        sfc /scannow
        DISM /Online /Cleanup-Image /Restorehealth
        sfc /scannow
      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Clear Start Menu Windows 10/11",
    "Description": "Clear all pinned apps from the start menu",
    "Check": "false",
    "Category": "Performance",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/WindowsTweaks/main/ClearStartMenu.ps1 | Invoke-Expression"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Clean Taskbar",
    "Description": "Disable the (News and interests) and (People icon) Show Search icon only for Windows 10/11",
    "Check": "false",
    "Category": "Performance",
    "Type": "Registry",
    "Refresh": "true",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Feeds",
        "Name": "ShellFeedsTaskbarViewMode",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "SearchboxTaskbarMode",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "2"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\\People",
        "Name": "PeopleBand",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Remove Windows 10/11 Bloatware",
    "Description": "BingNews, GetHelp, Getstarted, Messaging, Microsoft3DViewer, MicrosoftOfficeHub, MicrosoftSolitaireCollection, News, Office.Lens, Office.OneNote, Office.Sway, OneConnect, People, Print3D, RemoteDesktop, SkypeApp, StorePurchaseApp, Office.Todo.List, Whiteboard, WindowsAlarms, WindowsCamera, windowscommunicationsapps, WindowsFeedbackHub, WindowsMaps, WindowsSoundRecorder, Xbox.TCUI, XboxApp, XboxGameOverlay, XboxIdentityProvider, XboxSpeechToTextOverlay, ZuneMusic, ZuneVideo, Windows.Cortana, MSPaint, Clipchamp",
    "Check": "false",
    "Category": "Performance",
    "Type": "AppxPackage",
    "Refresh": "false",
    "RemoveAppxPackage": [
      {
        "Name": "Microsoft.BingNews"
      },
      {
        "Name": "Microsoft.WindowsCamera"
      },
      {
        "Name": " Microsoft.Getstarted"
      },
      {
        "Name": "Microsoft.MicrosoftEdge.Stable"
      },
      {
        "Name": "Microsoft.MicrosoftEdgeDevToolsClient"
      },
      {
        "Name": "Microsoft.BingWeather_1.0.6.0_x64__8wekyb3d8bbwe"
      },
      {
        "Name": "MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy"
      },
      {
        "Name": "Microsoft.GetHelp"
      },
      {
        "Name": "Microsoft.AppConnector"
      },
      {
        "Name": "Microsoft.BingFinance"
      },
      {
        "Name": "Microsoft.XboxGamingOverlay"
      },
      {
        "Name": "Microsoft.BingTranslator"
      },
      {
        "Name": "Microsoft.BingHealthAndFitness"
      },
      {
        "Name": "Microsoft.BingTravel"
      },
      {
        "Name": "Microsoft.MinecraftUWP"
      },
      {
        "Name": "Microsoft.GamingServices"
      },
      {
        "Name": "Microsoft.BingFoodAndDrink"
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
        "Name": "Microsoft.549981C3F5F10"
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
        "Name": "Microsoft.windowscommunicationsapps"
      },
      {
        "Name": "Microsoft.WindowsFeedbackHub"
      },
      {
        "Name": "Microsoft.Wallet"
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
        "Name": "Microsoft.GamingApp"
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
        "Name": "Microsoft.ScreenSketch"
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
        "Name": "Microsoft.Getstarted"
      },
      {
        "Name": "Microsoft.ZuneMusic"
      },
      {
        "Name": "Microsoft.ZuneVideo"
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
      },
      {
        "Name": "TikTok.TikTok_8wekyb3d8bbwe"
      },
      {
        "Name": "TikTok"
      },
      {
        "Name": "Microsoft.NetworkSpeedTest"
      }
    ],
    "InvokeCommand": [
      "
        DISM /Online /Remove-Capability /CapabilityName:Microsoft.Windows.MSPaint~~~~0.0.1.0
        Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/WindowsTweaks/main/ClearStartMenu.ps1 | Invoke-Expression
      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Restore All Windows Services to Default",
    "Description": "If you face a problem with some system services, you can restore all services to Default.",
    "Check": "false",
    "Category": "Fixer",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/WindowsTweaks/main/restore.bat | Invoke-Expression"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Fix Stutter in Games",
    "Description": "Fix Stutter in Games Disable GameBarPresenceWriter for Windows 10 and 11",
    "Check": "false",
    "Category": "Performance",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.exe\r\n\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll\r\n\r\n        takeown /f C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.exe /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll /grant administrators:F\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.exe -NewName GameBarPresenceWriter.exe_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll -NewName GameBarPresenceWriter.proxy.dll_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll -NewName Windows.Gaming.UI.GameBar.dll_backup\r\n\r\n      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Enable the Ultimate Performance Power Plan",
    "Description": "Enable the Ultimate Performance Power Plan",
    "Check": "false",
    "Category": "Performance",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61; Start-Process powercfg.cpl"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Reset the TCP/IP Stack",
    "Description": "If you have an internet problem, Reset network configuration",
    "Check": "false",
    "Category": "Fixer",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "netsh int ip reset"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Setup Auto login",
    "Description": "Setup auto login Windows username",
    "Check": "false",
    "Category": "Other",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "curl.exe -ss \"https://live.sysinternals.com/Autologon.exe\" -o $env:temp\\autologin.exe ; cmd /c $env:temp\\autologin.exe /accepteula"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable  Xbox Services",
    "Description": "Disables all Xbox Services Game Mode and Optimizations for Windowed Games and fix stutter playing smooth",
    "Check": "false",
    "Category": "Performance",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar",
        "Name": "AutoGameModeEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar",
        "Name": "AllowAutoGameMode",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar",
        "Name": "ShowStartupPanel",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_Enabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "AppCaptureEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "UseNexusForGameBarEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "AudioCaptureEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "CursorCaptureEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\Software\\Policies\\Microsoft\\Windows\\GameDVR",
        "Name": "AllowgameDVR",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\System\\CurrentControlSet\\Services\\xbgm",
        "Name": "Start",
        "Type": "DWord",
        "Value": "4",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_FSEBehaviorMode",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_HonorUserFSEBehaviorMode",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_FSEBehavior",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_DXGIHonorFSEWindowsCompatible",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_EFSEFeatureFlags",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_DSEBehavior",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\DirectX\\UserGpuPreferences",
        "Name": "DirectXUserGlobalSettings",
        "Type": "String",
        "Value": "SwapEffectUpgradeEnable=1;",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\DirectX\\GraphicsSettings",
        "Name": "",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\DirectX\\GraphicsSettings",
        "Name": "SwapEffectUpgradeCache",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SoftwareProtectionPlatform",
        "Name": "InactivityShutdownDelay",
        "Type": "DWord",
        "Value": "4294967295",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\Dwm",
        "Name": "OverlayTestMode",
        "Type": "DWord",
        "Value": "5",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile\\Tasks\\Games",
        "Name": "GPU Priority",
        "Type": "DWord",
        "Value": "8",
        "defaultValue": "8"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile\\Tasks\\Games",
        "Name": "Scheduling Category",
        "Type": "String",
        "Value": "High",
        "defaultValue": "High"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile\\Tasks\\Games",
        "Name": "SFIO Priority",
        "Type": "String",
        "Value": "High",
        "defaultValue": "High"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Control\\PriorityControl",
        "Name": "IRQ8Priority",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent",
        "Name": "DisableWindowsConsumerFeatures",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      "Disable-MMAgent -MemoryCompression | Out-Null",
      "\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.exe\r\n\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll\r\n\r\n        takeown /f C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.exe /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll /grant administrators:F\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.exe -NewName GameBarPresenceWriter.exe_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll -NewName GameBarPresenceWriter.proxy.dll_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll -NewName Windows.Gaming.UI.GameBar.dll_backup\r\n\r\n      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Start Menu Ads",
    "Description": "Disable Start menu Ads and Settings",
    "Check": "false",
    "Category": "Privacy",
    "Type": "Registry",
    "Refresh": "true",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\AdvertisingInfo",
        "Name": "Enabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SystemPaneSuggestionsEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SoftLandingEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced",
        "Name": "ShowSyncProviderNotifications",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Windows Web Search",
    "Description": "Disable web search in Windows by Modify the registry settings related to Windows Search for Windows 10 and 11",
    "Check": "false",
    "Category": "Privacy",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "BingSearchEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Turn off background Apps",
    "Description": "Turn off background apps for Windows 10 and 11",
    "Check": "false",
    "Category": "Performance",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\BackgroundAccessApplications",
        "Name": "GlobalUserDisabled",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "BackgroundAppGlobalToggle",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable suggestions on Start Menu",
    "Description": "Disables suggestions on start menu for Windows 10 and 11",
    "Check": "false",
    "Category": "Privacy",
    "Type": "Modify",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent",
        "Name": "DisableWindowsConsumerFeatures",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Remove Folder Shortcuts From File Explorer",
    "Description": "Remove Documents, Videos, Pictures, Desktop. Shortcuts from File Explorer",
    "Check": "false",
    "Category": "Other",
    "Type": "Registry",
    "Refresh": "false",
    "Delete": [
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
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Optimize Windows Services",
    "Description": "Disable (Print Spooler), (Fax), (Diagnostic Policy), (Downloaded Maps Manager), (Windows Error Reporting Service), (Remote Registry) , (Internet Connection Sharing), (Disables Telemetry and Data) ",
    "Check": "false",
    "Category": "Performance",
    "Type": "service",
    "Refresh": "false",
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
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Hibernate",
    "Description": "Hibernate is a power-saving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely.",
    "Check": "false",
    "Category": "Performance",
    "Type": "command",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKLM:\\System\\CurrentControlSet\\Control\\Session Manager\\Power",
        "Name": "HibernateEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\FlyoutMenuSettings",
        "Name": "ShowHibernateOption",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      "powercfg.exe /hibernate off"
    ],
    "UndoCommand": [
      "powercfg.exe /hibernate on"
    ]
  },
  {
    "Name": "Disable OneDrive",
    "Description": "Disabling OneDrive for Windows 10 and 11",
    "Check": "false",
    "Category": "Performance",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\OneDrive",
        "Name": "DisableFileSyncNGSC",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Run",
        "Name": "OneDrive",
        "Type": "String",
        "Value": "",
        "defaultValue": ""
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Activate Windows Old Photo Viewer",
    "Description": "This tweak enables the classic Windows Photo Viewer for Windows 10.",
    "Check": "false",
    "Category": "Classic",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".jpg",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".jpeg",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".png",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".bmp",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".gif",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": "ApplicationIcon",
        "Type": "String",
        "Value": "C:\\Program Files (x86)\\Windows Photo Viewer\\photoviewer.dll",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": "ApplicationName",
        "Type": "String",
        "Value": "Windows Photo Viewer",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Restore Classic Context Menu Windows 11",
    "Description": "Restore the old context menu for Windows 11",
    "Check": "false",
    "Category": "Classic",
    "Type": "Registry",
    "Refresh": "true",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Classes\\CLSID\\",
        "Name": "{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}",
        "Type": "String",
        "Value": "",
        "defaultValue": ""
      },
      {
        "Path": "HKCU:\\Software\\Classes\\CLSID\\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\\InprocServer32",
        "Name": "",
        "Type": "String",
        "Value": "",
        "defaultValue": "default"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Remove Copilot in Windows 11",
    "Description": "Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop Copilot in Windows appears as a side bar docked on the Windows desktop and is designed to help users get things done in Windows Copilot in Windows can perform common tasks in Windows like changing Windows settings which makes it different from the browserbased Copilot in Edge",
    "Check": "false",
    "Category": "Privacy",
    "Type": "Registry",
    "Refresh": "true",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Policies\\Microsoft\\Windows\\WindowsCopilot",
        "Name": "TurnOffWindowsCopilot",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsCopilot",
        "Name": "TurnOffWindowsCopilot",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Edge",
        "Name": "HubsSidebarEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Policies\\Microsoft\\Windows\\Explorer",
        "Name": "DisableSearchBoxSuggestions",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\Explorer",
        "Name": "DisableSearchBoxSuggestions",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Recall Snapshots in Windows 11 24H",
    "Description": "Recall is an upcoming preview experience exclusive to Copilot+ PCs that will help you easily find and remember things you''ve seen using natural language.",
    "Check": "false",
    "Category": "Privacy",
    "Type": "Registry",
    "Refresh": "true",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Policies\\Microsoft\\Windows\\WindowsAI",
        "Name": "DisableAIDataAnalysis",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsAI",
        "Name": "DisableAIDataAnalysis",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Delete Thumbnail Cache",
    "Description": "removing the stored image thumbnails on your computer These thumbnails are small versions of images used by the operating system to display image previews quickly Over time the cache can become large or corrupted causing slowdowns or display issues Deleting it can free up space and resolve such issues as the system will regenerate",
    "Check": "false",
    "Category": "Performance",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "Remove-Item \"$env:LocalAppData\\Microsoft\\Windows\\Explorer\\thumbcache*\" -Force -Recurse"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Old Volume Control in Windows 10",
    "Description": "The old volume control in Windows 10 refers to the classic audio mixer interface that was used in earlier versions of Windows, before the modern volume control system was introduced. This interface allowed users to adjust the volume for individual applications separately, providing a more detailed and flexible approach to managing audio levels.",
    "Check": "false",
    "Category": "Classic",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": {
      "Path": "HKLM:\\Software\\Microsoft\\Windows NT\\CurrentVersion\\MTCUVC",
      "Name": "EnableMtcUvc",
      "Type": "DWord",
      "Value": "0",
      "defaultValue": "1"
    },
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Toggle Key Sounds",
    "Description": "Toggle key sounds in Windows are audio cues that play when you press the Caps Lock, Num Lock, or Scroll Lock keys. These sounds help users identify when these keys are activated or deactivated.",
    "Check": "false",
    "Category": "Classic",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": {
      "Path": "HKCU:\\Control Panel\\Accessibility\\ToggleKeys",
      "Name": "Flags",
      "Type": "String",
      "Value": "58",
      "defaultValue": "62"
    },
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Homegroup",
    "Description": "Disables HomeGroup  HomeGroup is a passwordprotected home networking service that lets you share your stuff with other PCs that are currently running and connected to your network",
    "Check": "false",
    "Category": "Privacy",
    "Type": "service",
    "Refresh": "false",
    "Service": [
      {
        "Name": "HomeGroupListener",
        "StartupType": "Manual ",
        "DefaultType": "Automatic"
      },
      {
        "Name": "HomeGroupProvider",
        "StartupType": "Manual ",
        "DefaultType": "Automatic"
      }
    ]
  },
  {
    "Name": "Remove Home and Gallery from explorer",
    "Description": "Removes the Home and Gallery from explorer and sets This PC as default",
    "Check": "false",
    "Category": "Performance",
    "Type": "Registry",
    "Refresh": "false",
    "Modify": [
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced",
        "Name": "1",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "1"
      }
    ],
    "Delete": [
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace",
        "Name": "{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace",
        "Name": "{f874310e-b6b7-47dc-bc84-b9e6b38f5903}"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable all Privacy Settings",
    "Description": "Disable Wifi-Sense & Activity History & ActivityFeed Telemetry & DataCollection",
    "Check": "false",
    "Category": "Privacy",
    "Type": "Registry",
    "refresh": "false",
    "Modify": [
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\CapabilityAccessManager\\ConsentStore\\location",
        "Name": "Value",
        "Type": "String",
        "Value": "Deny",
        "defaultValue": "Deny"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Sensor\\Overrides\\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}",
        "Name": "SensorPermissionState",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Services\\lfsvc\\Service\\Configuration",
        "Name": "Status",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SYSTEM\\Maps",
        "Name": "AutoUpdateEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\System",
        "Name": "EnableActivityFeed",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\Software\\Microsoft\\PolicyManager\\default\\WiFi\\AllowAutoConnectToWiFiSenseHotspots",
        "Name": "Value",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting",
        "Name": "Disabled",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting",
        "Name": "Disabled",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\DataCollection",
        "Name": "AllowTelemetry",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "ContentDeliveryAllowed",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "OemPreInstalledAppsEnabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "PreInstalledAppsEnabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "PreInstalledAppsEverEnabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SilentInstalledAppsEnabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SubscribedContent-338387Enabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SubscribedContent-338388Enabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SubscribedContent-338389Enabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SubscribedContent-353698Enabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SystemPaneSuggestionsEnabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Siuf\\Rules",
        "Name": "NumberOfSIUFInPeriod",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\DataCollection",
        "Name": "DoNotShowFeedbackNotifications",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent",
        "Name": "DisableTailoredExperiencesWithDiagnosticData",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\AdvertisingInfo",
        "Name": "DisabledByGroupPolicy",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting",
        "Name": "Disabled",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\DeliveryOptimization\\Config",
        "Name": "DODownloadMode",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Control\\Remote Assistance",
        "Name": "fAllowToGetHelp",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\OperationStatusManager",
        "Name": "EnthusiastMode",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced",
        "Name": "ShowTaskViewButton",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\\People",
        "Name": "PeopleBand",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced",
        "Name": "LaunchTo",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Control\\FileSystem",
        "Name": "LongPathsEnabled",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "_Comment": "Driver searching is a function that should be left in",
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\DriverSearching",
        "Name": "SearchOrderConfig",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile",
        "Name": "SystemResponsiveness",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile",
        "Name": "NetworkThrottlingIndex",
        "Value": "4294967295",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Control Panel\\Desktop",
        "Name": "MenuShowDelay",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Control Panel\\Desktop",
        "Name": "AutoEndTasks",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Memory Management",
        "Name": "ClearPageFileAtShutdown",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SYSTEM\\ControlSet001\\Services\\Ndu",
        "Name": "Start",
        "Value": "2",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Control Panel\\Mouse",
        "Name": "MouseHoverTime",
        "Value": "400",
        "Type": "String",
        "defaultValue": "400"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Services\\LanmanServer\\Parameters",
        "Name": "IRPStackSize",
        "Value": "30",
        "Type": "DWord",
        "defaultValue": "20"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Policies\\Microsoft\\Windows\\Windows Feeds",
        "Name": "EnableFeeds",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Feeds",
        "Name": "ShellFeedsTaskbarViewMode",
        "Value": "2",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Value": "1",
        "Type": "DWord",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\UserProfileEngagement",
        "Name": "ScoobeSystemSettingEnabled",
        "Value": "0",
        "Type": "DWord",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      "Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\Application Experience\\Microsoft Compatibility Appraiser'' | Out-Null; Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\Application Experience\\ProgramDataUpdater'' | Out-Null; Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\Autochk\\Proxy'' | Out-Null; Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\Customer Experience Improvement Program\\Consolidator'' | Out-Null; Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\Customer Experience Improvement Program\\UsbCeip'' | Out-Null; Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\DiskDiagnostic\\Microsoft-Windows-DiskDiagnosticDataCollector'' | Out-Null"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Autoplay and Autorun",
    "Description": "Disabling autoplay in Windows prevents the automatic launch of media or applications when a removable device, such as a USB drive or CD, is connected to the computer. Autoplay is a feature that, by default, prompts the user to choose an action whenever a new media device is inserted, such as playing a video or opening a file",
    "Check": "false",
    "Category": "Protection",
    "Type": "Registry",
    "refresh": "false",
    "Modify": [
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\AutoplayHandlers",
        "Name": "DisableAutoplay",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "NoDriveTypeAutoRun",
        "Type": "DWord",
        "Value": "255",
        "defaultValue": "255"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable SMB Server",
    "Description": "SMB Server enables file and printer sharing over a network, allowing access to resources on remote computers as if they were local.",
    "Check": "false",
    "Category": "Protection",
    "Type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force; Set-SmbServerConfiguration -EnableSMB2Protocol $false -Force"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Set current network profile to public",
    "Description": "Deny file sharing, device discovery, etc.",
    "Check": "false",
    "Category": "Protection",
    "Type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "Set-NetConnectionProfile -NetworkCategory Public"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Enable F8 boot menu options",
    "Description": "Enable F8 boot menu options",
    "Check": "false",
    "Category": "Other",
    "Type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "bcdedit /set bootmenupolicy Standard | Out-Null"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable display and sleep mode timeouts",
    "Description": "If you use your device frequently, disable this.",
    "Check": "false",
    "Category": "Other",
    "Type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "
        powercfg /X monitor-timeout-ac 0
        powercfg /X monitor-timeout-dc 0
        powercfg /X standby-timeout-ac 0
        powercfg /X standby-timeout-dc 0
      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Set Wallpaper desktop Quality to 100%",
    "Description": "It''s Microsoft, what should I say!",
    "Check": "false",
    "Category": "Personalization",
    "Type": "Registry",
    "refresh": "false",
    "Modify": [
      {
        "Path": "HKLM:\\System\\CurrentControlSet\\Control\\CrashControl",
        "Name": "DisplayParameters",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable Windows Transparency",
    "Description": "Windows transparency has a significant impact on performance, disable it if you want performance",
    "Check": "false",
    "Category": "Performance",
    "Type": "Registry",
    "refresh": "false",
    "Modify": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize",
        "Name": "EnableTransparency",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Disable scheduled defragmentation task",
    "Description": "Defragmentation in Windows optimizes disk performance by reorganizing fragmented data, improving access times and system efficiency.",
    "Check": "false",
    "Category": "Performance",
    "Type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "Disable-ScheduledTask -TaskName ''Microsoft\\Windows\\Defrag\\ScheduledDefrag'' | Out-Null"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "Name": "Enable NET 3.5",
    "Description": "Some old games and applications require .NET Framework 3.5.",
    "Check": "false",
    "Type": "command",
    "Refresh": "false",
    "InvokeCommand": [
      "DISM /Online /Enable-Feature /FeatureName:NetFx3 /All"
    ],
    "UndoCommand": []
  }
]
' | ConvertFrom-Json
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
#===========================================================================
#region Begin Main Functions
#===========================================================================
function Invoke-ScriptBlock {
    <#
        .SYNOPSIS
        Executes a given script block asynchronously within a specified runspace.

        .DESCRIPTION
        This function creates a new PowerShell instance to execute a provided script block asynchronously. It accepts an optional array of arguments to pass to the script block and manages the runspace and PowerShell instance resources. The function ensures that resources are properly disposed of after the script block completes execution.

        .PARAMETER ScriptBlock
        The script block to be executed. This parameter is mandatory and must be of type `[scriptblock]`.

        .PARAMETER ArgumentList
        An optional array of arguments to be passed to the script block. This parameter allows for dynamic input to the script block.

        .EXAMPLE
        Invoke-ScriptBlock -ScriptBlock { param($arg1) Write-Output $arg1 } -ArgumentList @("Hello, World!")
        Executes the script block that outputs the provided argument "Hello, World!" asynchronously.

        .NOTES
        - The function uses a custom runspace (`$itt.runspace`) for execution. Ensure that this runspace is correctly configured and available in the script's context.
        - Proper disposal of the PowerShell instance and runspace is handled to prevent resource leaks.
        - Garbage collection is explicitly invoked to free up memory after execution.
    #>

    param(
        [scriptblock]$ScriptBlock,  # The script block to invoke
        [array]$ArgumentList        # Optional arguments for the script block
    )

    $script:powershell = [powershell]::Create()  # Create a new PowerShell instance

    # Add the script block and arguments to the runspace
    $script:powershell.AddScript($ScriptBlock)
    $script:powershell.AddArgument($ArgumentList)
    $script:powershell.RunspacePool = $itt.runspace  # Set the runspace pool

    # Begin running the script block asynchronously
    $script:handle = $script:powershell.BeginInvoke()

    # If the script has completed, clean up resources
    if ($script:handle.IsCompleted) {
        $script:powershell.EndInvoke($script:handle)  # End the invocation
        $script:powershell.Dispose()                  # Dispose of the PowerShell instance
        $itt.runspace.Dispose()                      # Dispose of the runspace
        $itt.runspace.Close()                        # Close the runspace
        [System.GC]::Collect()                        # Force garbage collection to free memory
    }
}

function RestorePoint {

    <#
        .SYNOPSIS
        Creates a system restore point on the local computer.

        .DESCRIPTION
        This function creates a system restore point using the Checkpoint-Computer cmdlet. It logs the process of creating the restore point and handles any errors that occur during the creation. If the restore point creation fails, an error message is displayed.

        .EXAMPLE
        RestorePoint
        Creates a restore point and logs the success or failure of the operation.
    #>

    Invoke-ScriptBlock -ScriptBlock {

        Try {
            Add-Log -Message "Creating Restore point..." -Level "INFO"
            Start-Process powershell.exe -ArgumentList "-NoExit", "-Command `"Enable-ComputerRestore -Drive '$env:SystemDrive'; Checkpoint-Computer -Description 'ITT' -RestorePointType 'MODIFY_SETTINGS'; exit`"" -Wait -Verb RunAs
            Add-Log -Message "Created successfully" -Level "INFO"
        } Catch {
            Add-Log -Message "An error occurred while enabling System Restore: $_" -Level "ERROR"
        }
    }
}

function Add-Log {

   <#
        .SYNOPSIS
        Logs a message to the console with a specified severity level and color.

        .DESCRIPTION
        This function writes a log message to the console with a timestamp and specified severity level. The message's color varies based on the log level (INFO, WARNING, ERROR) to help differentiate the severity of log entries. The function also handles default colors for any unspecified levels.

        .PARAMETER Message
        The content of the log message to be displayed. This parameter is required.

        .PARAMETER Level
        The severity level of the message. Options are:
        - INFO (default): Standard informational messages.
        - WARNING: Warnings that indicate potential issues.
        - ERROR: Error messages indicating critical issues.

        .OPTIONS
        INFO
        WARNING
        ERROR

        .EXAMPLE
        Add-Log -Message "ARE YOU 0 OR 1?" -Level "WARNING"
        Logs the message "ARE YOU 0 OR 1?" to the console with a yellow color indicating a warning.

        .NOTES
        - The `Level` parameter is case-insensitive and can be specified in any case format.
        - The default color for log messages is white if the level is not specified or does not match predefined options.
        - The function uses `Write-Host` for output, which may not be suitable for all logging scenarios (e.g., persistent logs).
    #>

    param (
        [string]$Message, # Content of Message
        [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
    )

    # Get the current timestamp
    $timestamp = Get-Date -Format "hh:mm tt"

    # Determine the color based on the log level
    switch ($Level.ToUpper()) {
        "INFO" { $color = "White" }
        "WARNING" { $color = "Yellow" }
        "ERROR" { $color = "Red" }
        default { $color = "White" }
    }

    # Construct the log message
    $logMessage = "$Message"
    $date =  "[$timestamp $Level]"

    # Write the log message to the console with the specified color
    Write-Host " $date" -ForegroundColor $color ; Write-Host " $logMessage" -ForegroundColor $color 
    Write-Host "" -ForegroundColor $color

}
function Disable-Service {
    
    <#
    .SYNOPSIS
    Disables a specified service by changing its startup type and stopping it.

    .DESCRIPTION
    This function disables a Windows service by first changing its startup type to the specified value, then stopping the service if it is running. The function logs the outcome of the operation, including whether the service was found and successfully disabled or if an error occurred.

    .PARAMETER ServiceName
    The name of the service to be disabled. This is a required parameter.

    .PARAMETER StartupType
    The desired startup type for the service. Common values include 'Disabled', 'Manual', and 'Automatic'. This is a required parameter.

    .EXAMPLE
    Disable-Service -ServiceName "wuauserv" -StartupType "Disabled"
    #>

    param(
        $ServiceName,
        $StartupType
    )

    try {


        # Check if the service exists
        if (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue) {
            Set-Service -Name $ServiceName -StartupType $StartupType -ErrorAction Stop
            Stop-Service -Name $ServiceName 
            Add-Log -Message "Service '$ServiceName' disabled." -Level "INFO"
        }
        else {
            Add-Log -Message "Service '$ServiceName' not found." -Level "INFO"
        }
    }
    catch
    {
        Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
    }
}
function ExecuteCommand {
    
    <#
    .SYNOPSIS
    Executes a PowerShell command in a new process.

    .DESCRIPTION
    This function starts a new PowerShell process to execute the specified command. It waits for the command to complete before returning control to the caller. The function handles any errors that occur during the execution of the command and outputs an error message if needed.

    .PARAMETER Name
    An optional name or identifier for the command being executed. This parameter is currently not used in the function but could be used for logging or tracking purposes.

    .PARAMETER Command
    The PowerShell command to be executed. This parameter is required.

    .EXAMPLE
    ExecuteCommand -Name "Greeting" -Command "Write-Output 'Welcome to ITT'"
    Executes the PowerShell command `Write-Output 'Welcome to ITT'` in a new PowerShell process.
    #>

    param (
        [string]$Name,
        [string]$Command
    )
    try {
        #Add-Log -Message "$Name" -Level "INFO"
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$Command`"" -NoNewWindow -Wait
    } catch {
        Write-Host "Error executing command '$Command': $_"
    }
}
function Finish {

    <#
        .SYNOPSIS
        Clears checkboxes in a specified ListView and displays a notification.

        .DESCRIPTION
        This function iterates through the items in a specified ListView, unchecks any CheckBox controls within it, and clears the ListView. After clearing the ListView, it uses the `Notify` function to display a notification with a given title, message, and icon.

        .PARAMETER ListView
        The name of the ListView control within the `$itt` object that needs to be processed. This parameter is required.

        .PARAMETER title
        The title for the notification message. Defaults to "ITT Emad Adel" if not specified.

        .PARAMETER msg
        The message content for the notification. Defaults to "Installed successfully" if not specified.

        .PARAMETER icon
        The icon to be used in the notification. Defaults to "Info" if not specified.

        .EXAMPLE
        Finish -ListView "myListView" -title "Process Completed" -msg "All items have been processed" -icon "Success"
        Clears all checkboxes in the ListView named "myListView" and displays a notification with the title "Process Completed", message "All items have been processed", and icon "Success".

        .NOTES
        - Ensure that the `Notify` function is implemented and available in your script to handle notification display.
        - The function assumes the `$itt` object and its `ListView` are properly initialized and accessible.
        - The notification duration is set to 30 seconds (`30000` milliseconds).
    #>

    param (
       [string]$ListView,
       [string]$title = "ITT Emad Adel",
       [string]$msg = "Installed successfully",
       [string]$icon = "Info"
    )

    
    switch($ListView)
    {
        "AppsListView" {
            UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "InstallBtn" -TextIcon "installIcon" -Icon "  "
        }

        "TweaksListView" {
            UpdateUI -Button "ApplyBtn" -ButtonText "applyText" -Content "applyBtn" -TextIcon "applyIcon" -Icon "  "
            Add-Log -Message "Finished, Some tweaks require restarting" -Level "INFO"
        }
    }

    $itt["window"].Dispatcher.Invoke([action]{ Set-Taskbar -progress "None" -value 0.01 -icon "done" })
    Notify -title "$title" -msg "$msg" -icon "Info" -time 30000

    # Clear 
    $itt.$ListView.Dispatcher.Invoke([Action]{
        foreach ($item in $itt.$ListView.Items)
        {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            $innerChild.IsChecked = $false
                            $itt.$ListView.Clear()
                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.$ListView.Items)
                            $collectionView.Filter = $null
                        }
                    }
                }
            }
        }
    })

}
function Show-Selected {

   <#
        .SYNOPSIS
        Filters or clears items in a specified ListView based on their selection status.

        .DESCRIPTION
        This function provides functionality to either filter the items in a specified ListView to show only those with selected checkboxes or to clear the filter and reset the ListView. It handles two modes:
        - `Filter`: Filters items based on whether their checkboxes are selected.
        - Default: Clears the ListView and resets the filter.

        .PARAMETER ListView
        The name of the ListView control within the `$itt` object to be processed. This parameter is required.

        .PARAMETER mode
        The mode of operation for the function. Options include:
        - `Filter`: Applies a filter to show only items with selected checkboxes.
        - Default: Clears any applied filter and resets the ListView.

        .OPTIONS
        AppsListView
        TweaksListView

        .EXAMPLE
        Show-Selected -ListView "AppsListView" -mode "Filter"
        Filters the "AppsListView" to display only the items where the associated checkbox is selected.

        .EXAMPLE
        Show-Selected -ListView "TweaksListView"
        Clears the filter on the "TweaksListView" and resets the ListView to show all items.

        .NOTES
        - Ensure the `$itt` object and its `ListView` are properly initialized and accessible.
        - The `mode` parameter determines whether to apply a filter or reset the ListView. If not specified, the function defaults to clearing the ListView.
    #>

    param (
        [string]$ListView,
        [string]$mode
     )

    switch ($mode) {

        "Filter"{

            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.$ListView.Items)

            $filterPredicate = {
                param($item)
        
                if ($item -is [System.Windows.Controls.StackPanel]) {
                    foreach ($child in $item.Children) {
                        if ($child -is [System.Windows.Controls.StackPanel]) {
                            foreach ($innerChild in $child.Children) {
                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                    # Check if the CheckBox is checked
                                    $itemTag = $innerChild.IsChecked
                                    return $itemTag
                                }
                            }
                        }
                    }
                }
        
                # Return $true if no CheckBox found (to include all items)
                return $true
            }
        
            $collectionView.Filter = $filterPredicate

        }
        Default {
            $itt.$ListView.Clear()
            [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.$ListView.Items).Filter = $null
            $itt.category.SelectedIndex = 0
        }
    }
}
function Clear-Item {

    <#
        .SYNOPSIS
        Unchecks all checkboxes in a specified ListView and clears the ListView.

        .DESCRIPTION
        This function iterates through all items in a specified ListView, unchecking any CheckBox controls within those items. After unchecking the checkboxes, it clears the ListView and removes any applied filters. It also resets the category selection to the first item.

        .PARAMETER ListView
        The name of the ListView control within the `$itt` object that needs to be processed. This parameter is required.

        .EXAMPLE
        Clear-Item -ListView "AppsListView"
        Unchecks all checkboxes in the "AppsListView", clears the ListView, and resets the category selection.

        .NOTES
        - The function assumes that the `$itt` object and its `ListView` are properly initialized and accessible.
        - The `Dispatcher.Invoke` method is used to ensure that UI changes are made on the UI thread, which is necessary for interacting with WPF controls.
        - The `category.SelectedIndex` is set to 0, which resets the category dropdown or selection to its initial state.
    #>

    param (
        $ListView
    )

     # Uncheck all checkboxes in $list if user chose [NO]
     $itt.$ListView.Dispatcher.Invoke({
        foreach ($item in $itt.$ListView.Items) {
            $item.Children | ForEach-Object {
                if ($_ -is [System.Windows.Controls.StackPanel]) {
                    $_.Children | ForEach-Object {
                        if ($_ -is [System.Windows.Controls.CheckBox]) {
                            $_.IsChecked = $false
                        }
                    }
                }
            }
        }
        $itt.$ListView.Clear()
        [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.$ListView.Items).Filter = $null
    })

    $itt.category.SelectedIndex = 0
    
}
function Get-SelectedItems {

    <#
        .SYNOPSIS
        Retrieves selected items from the ListView based on the specified mode.

        .DESCRIPTION
        This function collects information about selected items from a ListView, depending on the mode specified. It extracts data from the ListView items that have checkboxes that are checked and returns this information in a structured format.

        .PARAMETER Mode
        Specifies the mode for item retrieval. Options include:
        - `Apps`: Retrieves information about selected applications from the `AppsListView`.
        - `Tweaks`: Retrieves information about selected tweaks from the `TweaksListView`.

        .EXAMPLE
        Get-SelectedItems -Mode "Apps"
        Retrieves and returns a list of selected applications from the `AppsListView`.

        .EXAMPLE
        Get-SelectedItems -Mode "Tweaks"
        Retrieves and returns a list of selected tweaks from the `TweaksListView`.

        .NOTES
        - The function relies on the `$itt` object, which must be initialized and accessible within the scope of the function.
        - The function processes items from the ListView by iterating through nested StackPanel controls and their child CheckBox controls.
        - The resulting items are returned as an array of hashtables, with each hashtable containing details about the selected item based on the mode.
    #>

    param (
        [string]$Mode
    )

    $items = @()

    switch ($Mode) {
        "Apps" {
            $itt.AppsListView.Items |
                Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                ForEach-Object {
                    $_.Children |
                        Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                        ForEach-Object {
                            $_.Children |
                                Where-Object { $_ -is [System.Windows.Controls.CheckBox] -and $_.IsChecked } |
                                ForEach-Object {
                                    $checkbox = $_
                                    $app = $itt.database.Applications | Where-Object { $_.Name -eq $checkbox.Content }

                                    if ($app) {
                                        $items += @{
                                            Name    = $app.name
                                            Choco   = $app.choco
                                            Winget  = $app.winget
                                            Default = $app.default
                                            # Add a new method downloader here
                                        }
                                    }
                                }
                        }
                }
        }
        "Tweaks" {
            $itt.TweaksListView.Items |
                Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                ForEach-Object {
                    $_.Children |
                        Where-Object { $_ -is [System.Windows.Controls.StackPanel] } |
                        ForEach-Object {
                            $_.Children |
                                Where-Object { $_ -is [System.Windows.Controls.CheckBox] -and $_.IsChecked } |
                                ForEach-Object {
                                    $checkbox = $_
                                    $tweak = $itt.database.Tweaks | Where-Object { $_.Name -eq $checkbox.Content }

                                    if ($tweak) {
                                        $items += @{
                                            Name                = $tweak.Name
                                            Type                = $tweak.Type
                                            Modify              = $tweak.Modify
                                            Delete              = $tweak.Delete
                                            Service             = $tweak.Service
                                            RemoveAppxPackage   = $tweak.RemoveAppxPackage
                                            Command             = $tweak.InvokeCommand
                                            Refresh             = $tweak.Refresh
                                            # Add a new method tweak here
                                        }
                                    }
                                }
                        }
                }
        }
        default {
            Write-Error "Invalid Mode specified. Please choose 'Apps' or 'Tweaks'."
        }
    }

    return $items
}
Function Get-ToggleStatus {

    <#
        .SYNOPSIS
        Checks the status of various system toggle switches based on the provided parameter.

        .DESCRIPTION
        This function retrieves and returns the status of specific system toggle switches, such as Dark Mode, file extension visibility, hidden files visibility, Num Lock, and Sticky Keys. The status is determined by querying the Windows Registry for relevant settings.

        .PARAMETER ToggleSwitch
        Specifies which toggle switch status to check. The following values are supported:
        - `ToggleDarkMode`: Checks if Dark Mode is enabled.
        - `ToggleShowExt`: Checks if file extensions are set to be shown.
        - `ToggleShowHidden`: Checks if hidden files are set to be shown.
        - `ToggleNumLock`: Checks if Num Lock is enabled.
        - `ToggleStickyKeys`: Checks if Sticky Keys is enabled.

        .RETURN
        - Returns `$true` if the specified toggle switch is enabled according to the criteria.
        - Returns `$false` if the toggle switch is disabled or if the check does not match the criteria.

        .EXAMPLE
        Get-ToggleStatus -ToggleSwitch "ToggleDarkMode"
        Checks if Dark Mode is enabled on the system and returns `$true` if it is.

        .EXAMPLE
        Get-ToggleStatus -ToggleSwitch "ToggleShowExt"
        Checks if file extensions are shown in the File Explorer and returns `$true` if they are.

        .NOTES
        - The function relies on querying specific registry paths to determine the status of the toggle switches.
        - The function uses registry values to determine the state of settings related to the specified toggle switches.
        - Ensure that you have appropriate permissions to access the registry paths used by this function.
        - The function includes error handling to return `$false` if the registry values do not match the expected criteria for the toggle switches.
    #>


    Param($ToggleSwitch) # Parameter to specify which toggle switch status to check

    # Check status of "ToggleDarkMode"
    if($ToggleSwitch -eq "ToggleDarkMode"){
        $app = (Get-ItemProperty -path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize').AppsUseLightTheme
        $system = (Get-ItemProperty -path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize').SystemUsesLightTheme
        if($app -eq 0 -and $system -eq 0){
            return $true
        }
        else{
            # Return true if Sticky Keys are enabled
            return $false
        }
    }
  
    # Check status of "ToggleShowExt" (Show File Extensions)
    if($ToggleSwitch -eq "ToggleShowExt"){
        $hideextvalue = (Get-ItemProperty -path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced').HideFileExt
        if($hideextvalue -eq 0){
            return $true
        }
        else{
            # Return true if Sticky Keys are enabled
            return $false
        }
    }

    # Check status of "ToggleShowHidden" (Show Hidden Files)
    if($ToggleSwitch -eq "ToggleShowHidden"){
        $hideextvalue = (Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden")
        if($hideextvalue -eq 1){
            return $true
        }
        else{
            # Return true if Sticky Keys are enabled
            return $false
        }
    }

    # Check status of "ToggleNumLock"
    if($ToggleSwitch -eq "ToggleNumLook"){
        $numlockvalue = (Get-ItemProperty -path 'HKCU:\Control Panel\Keyboard').InitialKeyboardIndicators
        if($numlockvalue -eq 2){
            return $true
        }
        else{
            # Return true if Sticky Keys are enabled
            return $false
        }
    } 
    
    # Check status of "ToggleStickyKeys"    
    if ($ToggleSwitch -eq "ToggleStickyKeys") {
        $StickyKeys = (Get-ItemProperty -path 'HKCU:\Control Panel\Accessibility\StickyKeys').Flags
        if($StickyKeys -eq 58){
            return $false
        }
        else{
            # Return true if Sticky Keys are enabled
            return $true
        }
    }

    # Check status of "MouseAcceleration"    
    if($ToggleSwitch -eq "MouseAcceleration") {
        $Speed = (Get-ItemProperty -path 'HKCU:\Control Panel\Mouse').MouseSpeed
        $Threshold1 = (Get-ItemProperty -path 'HKCU:\Control Panel\Mouse').MouseThreshold1
        $Threshold2 = (Get-ItemProperty -path 'HKCU:\Control Panel\Mouse').MouseThreshold2

        if($Speed -eq 1 -and $Threshold1 -eq 6 -and $Threshold2 -eq 10) {
            return $true
        } else {
            return $false
        }
    }
}

function Install-App {
    
     <#
    .SYNOPSIS
    Installs an application using Chocolatey or Winget based on availability and installation status.

    .DESCRIPTION
    This function attempts to install a specified application using Chocolatey. If the Chocolatey installation fails, it falls back to using Winget to install the application. The function also handles some cleanup tasks related to Chocolatey and logs the results of the installation process.

    .PARAMETER appName
    The name of the application to be installed. This parameter is used for logging and status messages.

    .PARAMETER appChoco
    The package name of the application as recognized by Chocolatey. This parameter is used to perform the installation via Chocolatey.

    .PARAMETER appWinget
    The package identifier for the application as recognized by Winget. This parameter is used to perform the installation via Winget if Chocolatey fails.

    .EXAMPLE
    Install-App -appName "Google Chrome" -appChoco "googlechrome" -appWinget "Google.Chrome"
    Attempts to install Google Chrome using Chocolatey. If the installation fails, it attempts to install it using Winget.
    #>

    param (
        [string]$appName,
        [string]$appChoco,
        [string]$appWinget
    )

    Install-Choco

    if(Test-Path "C:\ProgramData\chocolatey\lib\$appChoco"){
        Remove-Item -Path "C:\ProgramData\chocolatey\lib\$appChoco" -Force -Recurse
        Remove-Item -Path "$env:TEMP\chocolatey" -Force -Recurse
        # debug
        #Add-Log -Message "C:\ProgramData\chocolatey\lib\$appChoco" -Level "INFO"
    }
        
    $chocoResult = $(Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -Wait -NoNewWindow -PassThru).ExitCode

    if ($chocoResult -ne 0) {

        Add-Log -Message "Chocolatey installation failed for $appName." -Level "INFO"
        Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"

        #Install Winget if not install on Device
        Install-Winget

        Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
        $wingetResult = $(Start-Process -FilePath "winget" -ArgumentList "install --id $appWinget --silent --accept-source-agreements --accept-package-agreements --force" -Wait -NoNewWindow -PassThru).ExitCode

        # Check winget
        if ($wingetResult -ne 0) {
            Add-Log -Message "Winget Installation Failed for ($appName). report the issue in the ITT repository to resolve this problem." -Level "ERROR"
            $itt["window"].Dispatcher.Invoke([action]{ Set-Taskbar -progress "Error" -value 0.01 -icon "Error" })
        } 
        else
        {
            Add-Log -Message "($appName) Successfully Installed Using Winget." -Level "INFO"
        }
    }
    else
    {
        Add-Log -Message "($appName) Successfully Installed Using Chocolatey." -Level "INFO"
    }
}
function Install-Choco {
    
    <#
    .SYNOPSIS
    Installs Chocolatey if it is not already installed on the system.

    .DESCRIPTION
    This function checks if Chocolatey is installed on the system by attempting to retrieve the `choco` command. If Chocolatey is not found, it proceeds to install Chocolatey using a web-based installation script. The function also logs the process of installing Chocolatey.

    .EXAMPLE
    Install-Choco
    Checks if Chocolatey is installed, and if not, installs it.
    #>

    if (-not (Get-Command choco -ErrorAction SilentlyContinue))
    {
        Add-Log -Message "Installing Chocolatey for the first time, It won't take minutes :)" -Level "INFO"
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
        Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"
    }
}

function Install-Winget {

    <#
        .SYNOPSIS
        Installs the Windows Package Manager (`winget`) and its dependencies.

        .DESCRIPTION
        This function installs `winget` by first checking if it is already installed on the system. If not, it downloads and installs the necessary dependencies:
        1. `Microsoft.VCLibs` package.
        2. `Microsoft.UI.Xaml` package.
        3. The `Microsoft Store App Installer` which includes `winget`.

        It also ensures that the `winget` path is added to the system environment variables if it is not already present.

        .PARAMETER None
        This function does not require any parameters.

        .EXAMPLE
        Install-Winget

        .EXAMPLE
        If you want to run this function in a PowerShell script, just call `Install-Winget`. This will download and install `winget` and its prerequisites if they are not already installed on the system.

        .NOTES
        - The function determines the OS architecture (32-bit or 64-bit) and selects the appropriate package URLs for `Microsoft.VCLibs` and `Microsoft.UI.Xaml`.
        - It checks for the existence of `winget` using `Get-Command`. If `winget` is found, the function exits without making changes.
        - It downloads the necessary `.appx` packages and installs them using `Add-AppxPackage`.
        - It downloads and installs the `Microsoft Store App Installer` which includes `winget`.
        - The function attempts to add the `winget` path to the system environment variables if it is not already included.
        - The function includes error handling to throw a custom exception if the installation of prerequisites fails.
    #>


    $versionVCLibs = "14.00"
    $versionUIXamlMinor = "2.8"
    $versionUIXamlPatch = "2.8.6"

    function Get-OSArchitecture {
    $is64Bit = $env:PROCESSOR_ARCHITEW6432 -eq "AMD64"
    $architecture = if ($is64Bit) { "64-bit" } else { "32-bit" }
    return $architecture
    }

    if (Get-OSArchitecture -eq "64-bit") {
    $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x64.${versionVCLibs}.Desktop.appx"
    $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x64.appx"
    } 
    else
    {
    $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x86.${versionVCLibs}.Desktop.appx"
    $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x86.appx"
    }

    Try {
    
        if (Get-Command winget -ErrorAction SilentlyContinue) {
            Write-Host "winget is installed on this system."
            return
        } 
    
        Write-Host "Downloading Microsoft.VCLibs Dependency..."
        Invoke-WebRequest -Uri $fileVCLibs -OutFile $ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx
        Write-Host "Downloading Microsoft.UI.Xaml Dependency...`n"
        Invoke-WebRequest -Uri $fileUIXaml -OutFile $ENV:TEMP\Microsoft.UI.Xaml.x64.appx
    
        # Install Microsoft.VCLibs
        Add-AppxPackage -Path "$ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx"
    
        # Install Microsoft.UI.Xaml
        Add-AppxPackage -Path "$ENV:TEMP\Microsoft.UI.Xaml.x64.appx"
    
        $msiPath = "$env:TEMP\winget.msixbundle"
        $url = "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
        Invoke-WebRequest -Uri $url -OutFile $msiPath
    
        # Install the Microsoft Store App Installer silently
        Add-AppxPackage -Path $msiPath -ErrorAction Stop
    
        # Wait for the installation to complete
        Start-Sleep -Seconds 2
    
        # Add winget to the system environment variable 'Path' if not already present
        $wingetPath = "$env:ProgramFiles\WindowsApps\Microsoft.DesktopAppInstaller_1.11.12371.0_x64__8wekyb3d8bbwe"
        $pathVariable = [Environment]::GetEnvironmentVariable("Path", "Machine")
        if (-not ($pathVariable -split ";" | Where-Object {$_ -eq $wingetPath})) {
            $newPath = "$pathVariable;$wingetPath"
            [Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")
        }
    
        $ENV:PATH = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
    
    }
    Catch {
        throw [WingetFailedInstall]::new('Failed to install prerequisites')
    }
}
function Start-DownloadAndUnzip {
    
    <#
    .SYNOPSIS
    Downloads a ZIP file from a URL, extracts its contents to a specified directory, and optionally creates a shortcut and runs an executable.

    .DESCRIPTION
    This function downloads a ZIP file from the provided URL, extracts the contents to a specified destination directory, and optionally creates a shortcut to an executable file on the desktop. It can also run the executable with optional arguments. The function includes error handling and logging to track the process.

    .PARAMETER url
    The URL of the ZIP file to be downloaded. This is a required parameter.

    .PARAMETER destinationDir
    The directory where the ZIP file will be downloaded and extracted. The default is "C:\ProgramData\ITT\Downloads".

    .PARAMETER Createshortcut
    Specifies whether to create a shortcut to the executable file. Accepts "yes" or "no". Default is not specified.

    .PARAMETER exeFileName
    The name of the executable file to create a shortcut for. This parameter is required if `Createshortcut` is set to "yes".

    .PARAMETER run
    Specifies whether to run the executable after extraction. Accepts "yes" or "no". Default is not specified.

    .PARAMETER exeArgs
    Arguments to be passed to the executable when it is run. This parameter is optional.

    .EXAMPLE
    Start-DownloadAndUnzip -url "http://example.com/file.zip" -destinationDir "C:\Temp" -Createshortcut "yes" -exeFileName "setup.exe" -run "yes" -exeArgs "/silent"
    Downloads the ZIP file from the specified URL, extracts it to "C:\Temp", creates a shortcut to "setup.exe" on the desktop, and runs the executable with the "/silent" argument.
    #>

    param (
        [string]$url,
        [string]$destinationDir = "C:\ProgramData\ITT\Downloads",
        [string]$Createshortcut,
        [string]$exeFileName,
        [string]$run,
        [string]$exeArgs
    )

    # Ensure destination directory exists
    if (-not (Test-Path -Path $destinationDir)) {
        New-Item -ItemType Directory -Path $destinationDir -Force
    }

    # Define paths
    $zipFileName = [System.IO.Path]::GetFileName($url)
    $downloadPath = [System.IO.Path]::Combine($destinationDir, $zipFileName)
    $exePath = [System.IO.Path]::Combine($destinationDir, $exeFileName)
    
    # Create the shortcut name based on the .exe file name
    $shortcutName = [System.IO.Path]::GetFileNameWithoutExtension($exeFileName) + ".lnk"
    $desktopPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), $shortcutName)

    try {
        Add-Log -Message "Downloading using Invoke-WebRequest" -Level "INFO"
        Invoke-WebRequest -Uri $url -OutFile $downloadPath

        # Extract the file
        Write-Output "Extracting file to: $destinationDir"
        Expand-Archive -Path $downloadPath -DestinationPath $destinationDir -Force

        #create a shortcut
        if ($Createshortcut -eq "yes") {
            if (Test-Path -Path $exePath) {
                Write-Output "Creating shortcut at: $desktopPath"
                # Create a shortcut on the desktop
                $shell = New-Object -ComObject WScript.Shell
                $shortcut = $shell.CreateShortcut($desktopPath)
                $shortcut.TargetPath = $exePath
                $shortcut.Save()
                Write-Output "Shortcut created successfully."
                Add-Log -Message "Saved in $downloadPath" -Level "INFO"
            } else {
                Write-Error "The specified .exe file '$exeFileName' was not found in the extracted content."
            }
        }

        # Optionally run the executable
        if ($run -eq "yes") {
            Write-Output "Starting installation"
            Start-Process -FilePath $exePath -ArgumentList $exeArgs -NoNewWindow
        }
    } catch {
        Write-Error $_.Exception.Message
    }
}

function Start-DownloadAndInstallExe {
    <#
    .SYNOPSIS
    Downloads an executable file from a URL, optionally creates a shortcut on the desktop, and runs the executable.

    .DESCRIPTION
    This function downloads an executable file from the specified URL to a designated output directory. Optionally, it can create a shortcut to the executable file on the desktop and run the executable with provided arguments. The function includes error handling and logging to track the process.

    .PARAMETER name
    The name of the executable file to be downloaded. This is used to define the destination path and the shortcut name.

    .PARAMETER url
    The URL of the executable file to be downloaded. This parameter is required.

    .PARAMETER type
    The file extension of the executable file (e.g., "exe"). This helps in naming the file correctly upon download.

    .PARAMETER exeArgs
    Arguments to be passed to the executable when it is run. This parameter is optional.

    .PARAMETER outputDir
    The directory where the executable file will be downloaded. This is a subdirectory under `$env:ProgramData`. This parameter is required.

    .PARAMETER shortcut
    Specifies whether to create a shortcut to the executable on the desktop. Accepts "yes" or "no". Default is "no".

    .PARAMETER run
    Specifies whether to run the executable after downloading. Accepts "yes" or "no". Default is "no".

    .EXAMPLE
    Start-DownloadAndInstallExe -name "ExampleApp" -url "http://example.com/exampleapp.exe" -type "exe" -exeArgs "/silent" -outputDir "Installers" -shortcut "yes" -run "yes"
    Downloads the executable from the specified URL, saves it to `C:\ProgramData\Installers\ExampleApp\ExampleApp.exe`, creates a shortcut to the executable on the desktop, and runs the executable with the `/silent` argument.

    #>

    param (
        [string]$name,
        [string]$url,
        [string]$type,
        [string]$exeArgs,
        [string]$outputDir,
        [string]$shortcut,
        [string]$run
    )

    $destination = "$env:ProgramData\$outputDir\$name\$name.$type"
    $shortcutPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "$name.lnk")

    Add-Log -Message "Downloading using Invoke-WebRequest" -Level "INFO"

    try {
        # Create the output directory if it doesn't exist
        if (-not (Test-Path -Path (Split-Path -Path $destination -Parent))) {
            New-Item -ItemType Directory -Path (Split-Path -Path $destination -Parent) | Out-Null
        }
        # Download the file
        Invoke-WebRequest -Uri $url -OutFile $destination
        Add-Log -Message "Downloaded any saved in $destination " -Level "INFO"

        if ($shortcut -eq "yes") {
            # Create a shortcut on the desktop
            $shell = New-Object -ComObject WScript.Shell
            $shortcut = $shell.CreateShortcut($shortcutPath)
            $shortcut.TargetPath = $destination
            $shortcut.Save()
            Add-Log -Message "Saved in $downloadPath" -Level "INFO"
            Add-Log -Message "Shortcut created on desktop" -Level "INFO"
        }
        if ($run -eq "yes") {
            Start-Process -Wait $destination -ArgumentList $exeArgs
        }
    }
    catch {
        throw "Error downloading EXE file: $_"
    }
}
function Refresh-Explorer {
    
    # Stop the Explorer process
    Stop-Process -Name explorer -Force

    # Wait a moment to ensure the process has stopped
    Start-Sleep -Seconds 1

    # Restart the Explorer process
    Stop-Process -Name explorer -Force
}
function Remove-Registry {

    <#
        .SYNOPSIS
        Deletes a specified registry key and all its subkeys.

        .DESCRIPTION
        This function removes a registry key and its associated subkeys from the Windows registry. It combines the provided registry path and folder name to form the full registry key path and deletes it if it exists. The function includes error handling to manage any issues that occur during the deletion process.

        .PARAMETER RegistryPath
        The base path of the registry where the key is located. This parameter is mandatory.

        .PARAMETER Folder
        The name of the registry key (folder) to be deleted. This parameter is mandatory.

        .EXAMPLE
        Remove-Registry -RegistryPath "HKCU\Software\MyCompany" -Folder "MyApp"
        Deletes the registry key "MyApp" located under "HKCU\Software\MyCompany" and all of its subkeys.
    #>

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
        } else {
            Add-Log -Message "Registry key '$KeyPath' does not exist." -Level "INFO"
        }
    }
    catch {
        Write-Host "An error occurred: $_" -ForegroundColor red
    }
}
function Reset-Preferences {

    <#
        .SYNOPSIS
        Resets user preferences for music volume and popup window settings.

        .DESCRIPTION
        This function resets the preferences by updating the registry values for the music volume and popup window settings. 
        It writes the provided values to the specified registry path and switches to the system's default settings.

        .PARAMETER music
        Sets the music volume preference. Default is "100".

        .PARAMETER PopupWindow
        Sets the popup window visibility. Default is "on".
    #>

    param (
        [string]$music = "100",
        [string]$PopupWindow = "on"
    )

    Set-ItemProperty -Path $itt.registryPath  -Name "PopupWindow" -Value $PopupWindow -Force
    Set-ItemProperty -Path $itt.registryPath  -Name "Music" -Value $music -Force
    SwitchToSystem

    Message -key "reopen" -icon "Information"
}
# Function to get all CheckBoxes from a StackPanel
function Get-CheckBoxesFromStackPanel {
    param (
        [System.Windows.Controls.StackPanel]$item  # The StackPanel to search
    )

    $checkBoxes = @()  # Initialize an empty array to store CheckBoxes
    
    if ($item -is [System.Windows.Controls.StackPanel]) {
        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        $checkBoxes += $innerChild  # Add each CheckBox to the array
                    }
                }
            }
        }
    }
    return $checkBoxes  # Return the array of CheckBoxes
}

# Function to load JSON data and update the UI
function LoadJson {
    if ($itt.ProcessRunning) {
        $msg = $itt.database.locales.Controls.$($itt.Language).Pleasewait
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    # Open file dialog to select JSON file
    $openFileDialog = New-Object "Microsoft.Win32.OpenFileDialog"
    $openFileDialog.Filter = "JSON files (*.itt)|*.itt"
    $openFileDialog.Title = "Open JSON File"
    $dialogResult = $openFileDialog.ShowDialog()

    if ($dialogResult -eq "OK") {
        $jsonData = Get-Content -Path $openFileDialog.FileName -Raw | ConvertFrom-Json
        $filteredNames = $jsonData.Name

        # Filter predicate to match CheckBoxes with JSON data
        $filterPredicate = {
            param($item)

            $checkBoxes = Get-CheckBoxesFromStackPanel -item $item

            foreach ($currentItemName in $filteredNames) {
                if ($currentItemName -eq $checkBoxes.Content) {
                    $checkBoxes.IsChecked = $true
                    break
                }
            }
            return $filteredNames -contains $checkBoxes.Content
        }

        # Update UI based on the loaded JSON data
        $itt['window'].FindName('apps').IsSelected = $true
        $itt['window'].FindName('appslist').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt['window'].FindName('appslist').Items)
        $collectionView.Filter = $filterPredicate
        [System.Windows.MessageBox]::Show("Restored successfully", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}

# Function to save selected items to a JSON file
function SaveItemsToJson {
    if ($itt.ProcessRunning) {
        $msg = $itt.database.locales.Controls.$($itt.Language).Pleasewait
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    ClearFilter

    # Convert the applications list to a dictionary for faster lookups
    $appsDictionary = @{}
    foreach ($app in $itt.database.Applications) {
        $appsDictionary[$app.Name] = $app
    }

    # Initialize the items list as a specific type
    $items = @()

    foreach ($item in $itt.AppsListView.Items) {
        $checkBoxes = Get-CheckBoxesFromStackPanel -item $item
        if ($checkBoxes.IsChecked) {
            $app = $appsDictionary[$checkBoxes.Content]

            if ($app) {
                $itemObject = [PSCustomObject]@{
                    Name   = $checkBoxes.Content
                    check  = "true"
                    choco  = $app.choco
                    winget = $app.winget
                }
                $items += $itemObject
            }
        }
    }

    if ($items.Count -gt 0) {
        # Open save file dialog
        $saveFileDialog = New-Object "Microsoft.Win32.SaveFileDialog"
        $saveFileDialog.Filter = "JSON files (*.itt)|*.itt"
        $saveFileDialog.Title = "Save JSON File"
        $dialogResult = $saveFileDialog.ShowDialog()

        if ($dialogResult -eq "OK") {
            $items | ConvertTo-Json | Out-File -FilePath $saveFileDialog.FileName -Force
            Write-Host "Saved: $($saveFileDialog.FileName)"
            [System.Windows.MessageBox]::Show("Saved", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)

            foreach ($item in $itt.AppsListView.Items) {
                $checkBoxes = Get-CheckBoxesFromStackPanel -item $item
                if ($checkBoxes.IsChecked) {
                    $checkBoxes.IsChecked = $false  # Uncheck all CheckBoxes after saving
                }
            }
        }

        
    } else {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }

    # Clear Search input
    $itt.SearchInput.Text = ""

}

function Set-Registry {
    <#
        .SYNOPSIS
        Sets or creates a registry value at a specified path.

        .DESCRIPTION
        This function sets a registry value at a given path. If the specified registry path does not exist, the function attempts to create the path and set the value. It handles different registry value types and includes error handling to manage potential issues during the process.

        .PARAMETER Name
        The name of the registry value to set or create. This parameter is required.

        .PARAMETER Type
        The type of the registry value. Common types include `String`, `DWord`, `QWord`, etc. This parameter is required.

        .PARAMETER Path
        The full path of the registry key where the value is to be set. This parameter is required.

        .PARAMETER Value
        The value to be set for the registry key. This parameter is required.

        .EXAMPLE
        Set-Registry -Name "ExampleValue" -Type "String" -Path "HKCU\Software\MyCompany" -Value "ExampleData"
        Sets the registry value named "ExampleValue" to "ExampleData" under "HKCU\Software\MyCompany". If the path does not exist, it attempts to create it.
    #>

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
                New-Item -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop | Out-Null
                #Add-Log -Message "Registry path created successfully." -Level "INFO"
            } catch {
                Add-Log -Message "Failed to create registry path: $_" -Level "ERROR"
            }
        } else {
            Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
        }
    }

    catch {
        Write-Error "An error occurred: $_"
    }
}
function Set-Taskbar {

    <#
        .SYNOPSIS
        Sets the taskbar progress and overlay icon in the application window.

        .DESCRIPTION
        The `Set-Taskbar` function allows setting the taskbar progress state, progress value, 
        and overlay icon for the application's taskbar item. 
        You can specify the progress state, value, and change the icon displayed on the taskbar.

        .EXAMPLE
        Set-Taskbar -progress 'Normal' -value 0.5 -icon 'done'
        This example sets the taskbar progress state to 'Normal' with a progress value of 50% 
        and shows a 'done' icon as an overlay for 2 seconds before switching back to the default icon.
    #>
    
    param (
        [string]$progress,
        [double]$value,
        [string]$icon
    )


    if ($value) {
        $itt["window"].taskbarItemInfo.ProgressValue = $value
    }


    if($progress)
    {
        switch ($progress) {
            'None' { $itt["window"].taskbarItemInfo.ProgressState = "None" }
            'Normal' { $itt["window"].taskbarItemInfo.ProgressState = "Normal" }
            'Indeterminate' { $itt["window"].taskbarItemInfo.ProgressState = "Indeterminate" }
            'Error' { $itt["window"].taskbarItemInfo.ProgressState = "Error" }
            default { throw "Set-Taskbar Invalid state" }
        }
    }

    if($icon)
    {
        switch ($icon) {

            "done" {
                $itt["window"].taskbarItemInfo.Overlay = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/done.png"
            }
            "logo" {
                $itt["window"].taskbarItemInfo.Overlay = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico"
            }
            "error" {
                $itt["window"].taskbarItemInfo.Overlay = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/error.png"
                Start-Sleep -Seconds 2
                $itt["window"].taskbarItemInfo.Overlay = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico"
            }
        }
    }
}
function Startup  {

    Invoke-ScriptBlock -ScriptBlock {

        function PlayMusic {

            # Function to play an audio track
            function PlayAudio($track) {
                $mediaItem = $itt.mediaPlayer.newMedia($track)
                $itt.mediaPlayer.currentPlaylist.appendItem($mediaItem)
                $itt.mediaPlayer.controls.play()
            }
        
            # Shuffle the playlist and create a new playlist
            function GetShuffledTracks {
        
                # Play Favorite Music in Special Date
                if ($itt.Date.Month -eq 9 -and $itt.Date.Day -eq 1) {
                    return $itt.database.OST.Favorite | Get-Random -Count $itt.database.OST.Favorite.Count
                }
                else {
                    return $itt.database.OST.Tracks | Get-Random -Count $itt.database.OST.Tracks.Count
                }
            }
        
            # Preload and play the shuffled playlist
            function PlayPreloadedPlaylist {
                # Preload the shuffled playlist
                $shuffledTracks = GetShuffledTracks
        
                foreach ($track in $shuffledTracks) {
                    PlayAudio -track $track.url
                    # Wait for the track to finish playing
                    while ($itt.mediaPlayer.playState -in 3, 6) {
                        Start-Sleep -Milliseconds 100
                    }
                }
            }
        
            # Play the preloaded playlist
            PlayPreloadedPlaylist
        }

        function Quotes {

            # Define the JSON file path
            $jsonFilePath = $itt.database.Quotes
        
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
            function Show-WelcomeText {
                $itt.Quotes.Dispatcher.Invoke([Action]{
        
                    #$fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                    #$shortCulture = $fullCulture.Split('-')[0]
                    $itt.Quotes.Text = $itt.database.locales.Controls.$($itt.Language).welcome
                    
                })
            }
        
            # Display welcome text
            Show-WelcomeText
        
            Start-Sleep -Seconds 20
        
            # Loop through shuffled names and display them
            do {
                foreach ($name in $shuffledNames) {
                    $itt.Quotes.Dispatcher.Invoke([Action]{
                        $itt.Quotes.Text = "`“$name`”"
                    })
                    # Adjust the sleep time as needed
                    Start-Sleep -Seconds 18 
                }
            } while ($true)
        }

        function Get-PCInfo {
            param (
                [string]$FirebaseUrl,
                [string]$Key
            )
        
            try {
        
                    $FirebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
                    $c = Invoke-RestMethod -Uri "https://ipinfo.io/json"
                    
        
                    $Key = "$env:COMPUTERNAME $env:USERNAME"
                
                    # Reuse connection to Firebase URL
                    $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                    $firebaseUrlRoot = "$FirebaseUrl.json"
                
                    # Check if the key exists
                    $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                
                    Write-Host "  PC Info... `n` "
                
                    if ($existingData) {
                        # Increment runs if data exists
                        $runs = $existingData.runs + 1
                
                        # Update PC info with the existing data
                        $pcInfo = @{
                            'Manufacturer' = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                            "Domain" = $env:COMPUTERNAME
                            "OS" = [Environment]::OSVersion.VersionString
                            "Username" = $env:USERNAME
                            "RAM" = "$((Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB)GB"
                            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                            "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                            "Country" = $c.country
                            "Language" = "$($itt.Language)"
                            "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                            "Runs" = $runs
                            "AppsHistory" = $existingData.AppsHistory
                            "TweaksHistory" = $existingData.TweaksHistory
                        }
                    }
                    else {
                        # Set runs to 1 if key doesn't exist
                        $runs = 1
                
                        # Get PC info for new entry
                        $pcInfo = @{
                            "Manufacturer" = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                            "Domain" = $env:COMPUTERNAME
                            "OS" = [Environment]::OSVersion.VersionString
                            "Username" = $env:USERNAME
                            "RAM" = "$((Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB)GB"
                            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                            "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                            "Country" = $c.country
                            "Language" = "$($itt.Language)"
                            "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                            "runs" = $runs
                            "AppsHistory" = @{}
                            "TweaksHistory" = @{}
                        }
                    }
                
                    # Convert to JSON
                    $json = $pcInfo | ConvertTo-Json 
                
                    # Set headers
                    $headers = @{
                        "Content-Type" = "application/json" 
                    }
                
                    # Update Firebase database with the new value
                    Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers -ErrorAction Stop
                
                    # Count the number of keys directly under the root
                    $response = Invoke-RestMethod -Uri $firebaseUrlRoot -Method Get -ErrorAction Stop
                    $totalKeys = ($response | Get-Member -MemberType NoteProperty | Measure-Object).Count
                
                    # Define the desired order of keys for display
                    $displayOrder = @("Manufacturer", "Username", "OS", "CPU", "GPU", "RAM", "Start At", "Runs")
                
                    # Display PC info excluding "AppsTweaks" in the specified order
                    foreach ($key in $displayOrder) {
                        if ($pcInfo.ContainsKey($key)) {
                            Write-Host "  $key : $($pcInfo[$key])" -ForegroundColor Yellow
                        }
                    }
                
                    Write-Host "`n`  ITT Used on $totalKeys devices and is featured on 9 sites." -ForegroundColor Yellow
        
                    # Force garbage collection to free memory
                    [System.GC]::Collect()                       
            }
            catch {
                Write-Error "An error occurred: $_"
                exit 1
            }
        }
        
        function LOG {
            param (
                $message,
                $color
            )
            
            Write-Host " +==============================================================================+" 
            Write-Host " |   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |" 
            Write-Host " |  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |" 
            Write-Host " |   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |" 
            Write-Host " |   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |" 
            Write-Host " |  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |" 
            Write-Host " |                       Made with ♥ By Emad Adel                               |" 
            Write-Host " |                          #StandWithPalestine                                 |" 
            Write-Host " +==============================================================================+" 
            Write-Host " You ready to Install anything.`n` " 
            Write-Host " Telegram: https://t.me/ittemadadel" 
            Write-Host " Discord: https://discord.com/invite/3eV79KgD `n` "
        
            Get-PCInfo
        
        }

        LOG
        PlayMusic
        Quotes

        $script:powershell.EndInvoke($script:handle)
        $script:powershell.Dispose()
        $sync.runspace.Dispose()
        $sync.runspace.Close()
        [System.GC]::Collect()              
    }
}
function ChangeTap {
    <#
        .SYNOPSIS
        Updates the visibility of buttons and sets the current list based on the selected tab.

        .DESCRIPTION
        This function manages the visibility of buttons and the selection of lists based on which tab is currently selected in a user interface. It uses a hash table to map tab names to their corresponding button visibility settings and list values. The function iterates through the tabs and updates the UI elements accordingly.

        .EXAMPLE
        ChangeTap
        Updates the visibility of the 'installBtn' and 'applyBtn' and sets the 'currentList' property based on the currently selected tab.

        .PARAMETER None
        This function does not take any parameters. It operates on predefined UI elements and settings.

        .NOTES
        Ensure that the `$itt['window']` object and its method `FindName` are correctly implemented and available in the context where this function is used. The function relies on these objects to access and modify UI elements.
    #>
    
    $tabSettings = @{
        'apps'        = @{ 'installBtn' = 'Visible'; 'applyBtn' = 'Hidden'; 'currentList' = 'appslist' }
        'tweeksTab'   = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Visible'; 'currentList' = 'tweakslist' }
        'SettingsTab' = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Hidden'; 'currentList' = 'SettingsList' }
    }

    # Iterate over the tab settings
    foreach ($tab in $tabSettings.Keys) {
        # Check if the current tab is selected
        if ($itt['window'].FindName($tab).IsSelected) {
            $settings = $tabSettings[$tab]
            
            # Update button visibility and currentList based on the selected tab
            $itt['window'].FindName('installBtn').Visibility = $settings['installBtn']
            $itt['window'].FindName('applyBtn').Visibility = $settings['applyBtn']
            $itt.currentList = $settings['currentList']

            # Debug
            #Add-Log -Message $settings['currentList'] -Level "INFO"
            
            break  # Exit the loop once the matching tab is found
        }
    }
}

function Uninstall-AppxPackage  {
    <#
        .SYNOPSIS
        Uninstalls an AppX package and removes any provisioned package references.

        .DESCRIPTION
        This function uninstalls a specified AppX package from the current user profile and removes any provisioned package references from the system. It uses PowerShell commands to handle both the removal of the AppX package and any associated provisioned package. Logging is used to track the process.

        .PARAMETER Name
        The name or partial name of the AppX package to be uninstalled. This parameter is required.

        .EXAMPLE
        Uninstall-AppxPackage -Name "Microsoft.BingNews"
        Attempts to remove the AppX package with a display name that includes "Microsoft.BingNews" from the current user profile and any provisioned package references from the system.

        .NOTES
        - Ensure that the `$Name` parameter correctly matches the display name or part of the display name of the AppX package you wish to uninstall.
        - The function runs PowerShell commands in a new process to handle the removal operations.
        - Add-Log should be implemented in your script or module to handle logging appropriately.
    #>

    param (
        $Name
    )
       
    try {
        Add-Log -Message "Trying to remove $($Name)" -Level "INFO"
        #Get-AppxPackage -AllUsers "*$Name*" | Remove-AppxPackage -ErrorAction SilentlyContinue
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxPackage -AllUsers '*$Name*' | Remove-AppxPackage -ErrorAction SilentlyContinue" -NoNewWindow -Wait
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$Name*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" -NoNewWindow -Wait
    } catch {
            Write-Output "Not installed or unable to remove it: $($_.Exception.Message)"
    }
}
function Invoke-Install {

    <#
        .SYNOPSIS
        Handles the installation of selected applications by invoking the appropriate installation methods.

        .DESCRIPTION
        The `Invoke-Install` function manages the process of installing applications based on user selection. It performs the following tasks:
        1. Checks if there are any selected applications to install.
        2. Displays a warning message if no applications are selected or if a process is already running.
        3. Shows a confirmation dialog to the user asking for permission to proceed with the installation.
        4. If confirmed, it filters the list view to show only selected items and starts the installation process.
        5. Updates the UI to reflect the installation status.
        6. Executes installation commands for applications using Chocolatey (`Choco`), Winget, or custom download methods.
        7. Updates the UI once the installation is complete and finishes the process.

        .PARAMETER None
        This function does not require any parameters.

        .EXAMPLE
        Invoke-Install

        .EXAMPLE
        To use this function in your script, simply call `Invoke-Install`. This will process the selected items for installation, check user confirmation, and execute the appropriate installation commands based on the type of application.

        .NOTES
        - The function starts by checking the count of selected applications using `Get-SelectedItems` with mode "Apps".
        - It uses a message box to confirm if the user wants to proceed with the installation.
        - The function updates the UI to reflect the installation status, including a button change and text update.
        - It installs applications using:
        - Chocolatey, if a `Choco` identifier is provided.
        - Winget, if a `Winget` identifier is provided.
        - Custom download methods (`Start-DownloadAndInstallExe` or `Start-DownloadAndUnzip`) for applications with default settings.
        - The function handles UI updates and cleanup operations post-installation using `UpdateUI` and `Finish`.
        - The `Invoke-ScriptBlock` function is used to execute the installation commands asynchronously.
    #>

  
    $selectedApps = Get-SelectedItems -Mode "Apps"

    if($itt.ProcessRunning) {
        Message -key "Pleasewait" -icon "Warning"
        return
    }


    if($selectedApps.Count -eq 0)
    {
        # Show Message
        Message -key "choseapp" -icon "Warning"
        return
    }
    else
    {
        # Show only selected item
        Show-Selected -ListView "AppsListView" -Mode "Filter"
    }

    $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).InstallMessage
    $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

   if($result -eq "no") {
        Show-Selected -ListView "AppsListView" -Mode "Default"
        Clear-Item -ListView "AppsListView"
        return
    }

    Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

        param($selectedApps)

        $itt.ProcessRunning = $true
        UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "downloading" -TextIcon "installIcon" -Icon "  " -Width "144"
        $itt["window"].Dispatcher.Invoke([action]{ Set-Taskbar -progress "Indeterminate" -value 0.01 -icon "logo" })

        $selectedApps | ForEach-Object {

            if ($_.Winget -ne "none" -or $_.Choco -ne "none")
            {
                Install-App -appName $_.Name -appWinget $_.Winget -appChoco $_.Choco

                # Debug
                #Write-Host $_.Winget $_.Choco
            }
            else
            {
                if($_.default.IsExcute -eq "true")
                {
                    Start-DownloadAndInstallExe -name "$($_.Name)" -url  $_.default.url -type $_.default.extinction -exeArgs $_.default.exeArgs -outputDir "ITT\Downloads\" -run $_.default.run -shortcut $_.default.shortcut
                }
                else
                {
                    Start-DownloadAndUnzip -url $_.default.url -shortcutName "$($_.Name)" -exeFileName $_.default.launcher -run $_.default.run -Createshortcut $_.default.shortcut -exeArgs $_.default.exeArgs
                }
            }
        }
        
        Finish -ListView "AppsListView"
        $itt.ProcessRunning = $false
    }
}

function Invoke-ApplyTweaks {

    <#
        .SYNOPSIS
        Handles the application of selected tweaks by executing the relevant commands, registry modifications, and other operations.

        .DESCRIPTION
        The `Invoke-ApplyTweaks` function manages the process of applying selected tweaks based on user selection. It performs the following tasks:
        1. Retrieves the list of selected tweaks using `Get-SelectedItems` with mode "Tweaks".
        2. Displays a warning message if a process is already running or if no tweaks are selected.
        3. Filters the list view to show only selected items and asks for user confirmation to proceed with applying tweaks.
        4. If confirmed, it starts the application of the selected tweaks.
        5. Executes the appropriate tweak operations based on the type of tweak (e.g., commands, registry modifications, Appx package removal, service management).
        6. Updates the UI to reflect the progress and completion of the tweak application.
        7. Finishes the process and logs a message indicating that some tweaks may require a restart.

        .PARAMETER None
        This function does not require any parameters.

        .EXAMPLE
        Invoke-ApplyTweaks

        .EXAMPLE
        To use this function in your script, call `Invoke-ApplyTweaks`. This will process the selected tweaks, ask for confirmation, and apply them according to their type.

        .NOTES
        - The function starts by checking the count of selected tweaks using `Get-SelectedItems` with mode "Tweaks".
        - It uses a message box to confirm if the user wants to proceed with applying the tweaks.
        - The function updates the UI to reflect the application status, including a button change and text update.
        - It applies tweaks by:
        - Executing commands specified in the tweak settings.
        - Modifying or deleting registry entries as per the tweak configuration.
        - Uninstalling Appx packages if specified.
        - Disabling services if required.
        - The function handles UI updates and cleanup operations post-application using `UpdateUI` and `Finish`.
        - The `Invoke-ScriptBlock` function is used to execute the tweak application commands asynchronously.
        - Additional logging is performed to track the status of the operation and provide feedback.
    #>

    
    $selectedApps = Get-SelectedItems -Mode "Tweaks"

    if($itt.ProcessRunning) {
        Message -key "Pleasewait" -icon "Warning"
        return
    }


    if($selectedApps.Count -eq 0)
    {
        Message -key "choseapp" -icon "Warning"
        return
    }
    else
    {
        Show-Selected -ListView "TweaksListView" -Mode "Filter"
    }

    $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).InstallMessage
    $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

   if($result -eq "no") 
    {
        Show-Selected -ListView "TweaksListView" -Mode "Default"
        Clear-Item -ListView "TweaksListView"
        return
    }

    Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

        param($selectedApps)

        $itt.ProcessRunning = $true
        UpdateUI -Button "ApplyBtn" -ButtonText "applyText" -Content "Applying" -TextIcon "applyIcon" -Icon "  " -Width "120"

        $itt["window"].Dispatcher.Invoke([action]{ Set-Taskbar -progress "Indeterminate" -value 0.01 -icon "logo" })


        foreach ($tweak in $selectedApps) {

            Add-Log -Message $tweak.Name -Level "INFO" 

            switch ($tweak.Type) {        
        
                "command" {
                    $tweak.Command | ForEach-Object { ExecuteCommand -Name $tweak.Name -Command $tweak.Command}
                }
                "Registry" {
                    $tweak.Modify | ForEach-Object {
                        Set-Registry -Name $_.Name -Type $_.Type -Path $_.Path -Value $_.Value
                    }
                    $tweak.Delete | ForEach-Object {
                        Remove-Registry -RegistryPath $_.Path -Folder $_.Name
                    }
                    if($tweak.Refresh -eq "true")
                    {
                        Add-Log -Message "Restarting explorer" -Level "INFO"
                        Refresh-Explorer
                    }
                }
                "AppxPackage" {
                    $tweak.removeAppxPackage | ForEach-Object { Uninstall-AppxPackage -Name $_.Name }
                    $tweak.Command | ForEach-Object {
                        ExecuteCommand -Name $tweak.Name -Command $tweak.Command 
                        # debug
                        #Write-Host $tweak.Command
                    }
                }
                "service" {
                    $tweak.Service | ForEach-Object { Disable-Service -ServiceName $_.Name -StartupType $_.StartupType }
                }
            }
        }

        Finish -ListView "TweaksListView"
        $itt.ProcessRunning = $false
    }
}
function Invoke-Button {

    <#
        .SYNOPSIS
        Handles various button actions and commands based on the specified action parameter.

        .DESCRIPTION
        The `Invoke-Button` function executes different actions depending on the input parameter. It manages operations such as installing apps, applying tweaks, changing themes, opening system utilities, and managing language settings. This function is designed to be used with UI elements where each button triggers a specific action.

        .PARAMETER action
        A string specifying the action to perform. The action can be one of several predefined values representing different operations, such as installing apps, applying tweaks, opening system utilities, changing themes, or managing language settings.

        .EXAMPLE
        Invoke-Button -action "installBtn"

        .EXAMPLE
        Invoke-Button -action "Dark"

        .EXAMPLE
        Invoke-Button -action "sysinfo"

        .NOTES
        - The function uses a `Switch` statement to handle different actions based on the `$action` parameter.
        - For UI-related actions, such as installing apps or applying tweaks, it calls `Invoke-Install` or `Invoke-ApplyTweaks`.
        - For system utilities and settings, it uses `Start-Process` to open tools like Device Manager, Task Manager, or disk management utilities.
        - For language settings, it invokes the `Set-Language` function with the specified language code.
        - For theme changes, it calls functions like `Switch-ToDarkMode` or `Switch-ToLightMode`.
        - For managing audio settings, it calls `MuteMusic` or `UnmuteMusic`.
        - For opening URLs related to tools or scripts, it uses `Start-Process` with the URL as an argument.
        - The `Debug-Message` function is used for internal debugging and can be uncommented for logging purposes.
    #>

    Param ([string]$action)

    # Helper function for debugging
    function Debug-Message($message) {
        #Write-Host "Debug: $message"
    }

    # Switch block to handle different actions
    Switch -Wildcard ($action) {

        "installBtn" {
            $itt.SearchInput.Text = $null
            Invoke-Install
            Debug-Message $action
        }
        "applyBtn" {
            Invoke-ApplyTweaks
            Debug-Message $action
        }
        "taps" {
            ChangeTap $action
        }
        "category" {
            FilterByCat($itt.category.SelectedItem.Content)
            Debug-Message $action
        }
        "searchInput" {
            Search
            $itt['window'].FindName('category').SelectedIndex = 0
            Debug-Message $action
        }

        # Menu items
        "ar" {
            Set-Language -lang "ar"
            Debug-Message $action
        }
        "en" {
            Set-Language -lang "en"
            Debug-Message $action
        }
        "fr" {
            Set-Language -lang "fr"
            Debug-Message $action
        }
        "tr" {
            Set-Language -lang "tr"
            Debug-Message $action
        }
        "zh" {
            Set-Language -lang "zh"
            Debug-Message $action
        }
        "ko" {
            Set-Language -lang "ko"
            Debug-Message $action
        }
        "de" {
            Set-Language -lang "de"
            Debug-Message $action
        }
        "ru" {
            Set-Language -lang "ru"
            Debug-Message $action
        }
        "es" {
            Set-Language -lang "es"
            Debug-Message $action
        }
        "save" {
            SaveItemsToJson
            Debug-Message $action
        }
        "load" {
            LoadJson
            Debug-Message $action
        }

        # Device Management
        "deviceManager" {
            Start-Process devmgmt.msc 
            Debug-Message $action
        }
        "appsfeatures" {
            Start-Process appwiz.cpl 
            Debug-Message $action
        }
        "sysinfo" {
            Start-Process msinfo32.exe
            Start-Process dxdiag.exe 
            Debug-Message $action
        }
        "poweroption" {
            Start-Process powercfg.cpl 
            Debug-Message $action
        }
        "services" {
            Start-Process services.msc 
            Debug-Message $action
        }
        "network" {
            Start-Process ncpa.cpl
            Debug-Message $action
        }
        "taskmgr" {
            Start-Process taskmgr.exe 
            Debug-Message $action
        }
        "diskmgmt" {
            Start-Process diskmgmt.msc
            Debug-Message $action
        }

        # Theme
        "Dark" {
            Switch-ToDarkMode
            Debug-Message $action
        }
        "Light" {
            Switch-ToLightMode
            Debug-Message $action
        }
        "systheme" {
            SwitchToSystem 
            Debug-Message $action
        }


        # chocoloc
         "chocoloc" {
            Start-Process explorer.exe "C:\ProgramData\chocolatey\lib"
            Debug-Message $action
        }

        # restore point
        "restorepoint" {
            RestorePoint
            Debug-Message $action
        }

        # Music
        "moff" {
            MuteMusic -Value 0
            Debug-Message $action
        }
        "mon" {
            UnmuteMusic -Value 100
            Debug-Message $action
        }

        # Mirror Links
        "unhook" {
            Start-Process "https://unhook.app/" 
            Debug-Message $action
        }
        "uBlock" {
            Start-Process "https://ublockorigin.com/" 
            Debug-Message $action
        }
        "mas" {
            Start-Process "https://github.com/massgravel/Microsoft-Activation-Scripts"
            Debug-Message $action
        }
        "idm" {
            Start-Process "https://github.com/WindowsAddict/IDM-Activation-Script"
            Debug-Message $action
        }
        "neat" {
            Start-Process "https://addons.mozilla.org/en-US/firefox/addon/neatdownloadmanager-extension/" 
            Debug-Message $action
        }

        "winoffice" {
            Start-Process "https://massgrave.dev/genuine-installation-media" 
            Debug-Message $action
        }
        "sordum" {
            Start-Process "https://www.sordum.org/" 
            Debug-Message $action
        }
        "majorgeeks" {
            Start-Process "https://www.majorgeeks.com/" 
            Debug-Message $action
        }

        # Other actions
        "ittshortcut" {
            ITTShortcut $action
            Debug-Message $action
        }
        "dev" {
            About
            Debug-Message $action
        }
        # Reset-Preferences

        "reset"{
            Reset-Preferences
            Debug-Message $action
        }

        "shelltube"{
            Start-Process -FilePath "powershell" -ArgumentList "irm https://raw.githubusercontent.com/emadadel4/ShellTube/main/st.ps1 | iex"
            Debug-Message $action
        }

        Default {
            Write-Host "Unknown action: $action"
        }
    }
}
function Invoke-Toogle {

    <#
        .SYNOPSIS
        Toggles various system settings based on the specified debug parameter.

        .DESCRIPTION
        The `Invoke-Toogle` function manages system settings such as showing file extensions, toggling dark mode, showing hidden files, and managing keyboard settings. It determines the current state of the setting and invokes the appropriate functions to toggle or apply the changes.

        .PARAMETER debug
        A string specifying the setting to toggle. The value should match one of the predefined toggle names, such as "ToggleShowExt" or "ToggleDarkMode". The function uses this parameter to determine which setting to check and change.

        .EXAMPLE
        Invoke-Toogle -debug "ToggleShowExt"

        .EXAMPLE
        Invoke-Toogle -debug "ToggleDarkMode"

        .NOTES
        - The function uses a `Switch` statement to handle different toggle actions based on the `$debug` parameter.
        - It calls `Get-ToggleStatus` to retrieve the current state of the specified setting and then calls the corresponding function to apply the toggle.
        - The `Invoke-ShowFile-Extensions`, `Invoke-DarkMode`, `Invoke-ShowFile`, `Invoke-NumLock`, and `Invoke-StickyKeys` functions are used to modify the respective settings.
        - The debug parameter is primarily used for testing and development purposes. Uncommenting the `Write-Host` line can provide additional output for debugging.
    #>

    Param ([string]$debug)

    # debug
    #Write-Host $debug

    Switch -Wildcard ($debug){

        "ToggleShowExt" {Invoke-ShowFile-Extensions $(Get-ToggleStatus ToggleShowExt)}
        "ToggleDarkMode" {Invoke-DarkMode $(Get-ToggleStatus ToggleDarkMode)}
        "ToggleShowHidden" {Invoke-ShowFile $(Get-ToggleStatus ToggleShowHidden)}
        "ToggleNumLook" {Invoke-NumLock $(Get-ToggleStatus ToggleNumLook)}
        "ToggleStickyKeys" {Invoke-StickyKeys $(Get-ToggleStatus ToggleStickyKeys)}
        "MouseAcceleration" {Invoke-MouseAcceleration $(Get-ToggleStatus MouseAcceleration)}

    }
}
Function Invoke-DarkMode {

    <#
        .SYNOPSIS
        Toggles the Windows theme between Dark Mode and Light Mode based on the provided setting.

        .DESCRIPTION
        The `Invoke-DarkMode` function enables or disables Dark Mode for Windows based on the `$DarkModeEnabled` parameter.
        - If `$DarkModeEnabled` is `$true`, it sets the system to Dark Mode.
        - If `$DarkModeEnabled` is `$false`, it sets the system to Light Mode.
        The function updates the application's theme resources accordingly and restarts the Windows Explorer process to apply the changes.

        .PARAMETER DarkModeEnabled
        A boolean value indicating whether Dark Mode should be enabled (`$true`) or Light Mode should be enabled (`$false`).

        .EXAMPLE
            Invoke-DarkMode -DarkModeEnabled $true
        This example sets the Windows theme to Dark Mode.

        .EXAMPLE
            Invoke-DarkMode -DarkModeEnabled $false
        This example sets the Windows theme to Light Mode.

        .NOTES
        - The function modifies registry settings related to Windows themes.
        - It restarts Windows Explorer to apply the theme changes.
        - Error handling is included for security exceptions and item not found exceptions.
    #>

    Param($DarkMoveEnabled)
    Try{

        $DarkMode = (Get-ItemProperty -Path $itt.registryPath -Name "DarkMode").DarkMode

        if ($DarkMoveEnabled -eq $false){
            $DarkMoveValue = 0
            Add-Log -Message "Dark Mode Enabled" -Level "INFO"
            if($DarkMode -eq "none")
            {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Dark"))
            }
        }
        else {
            $DarkMoveValue = 1
            Add-Log -Message "Light Mode Enabled" -Level "INFO"
            if($DarkMode -eq "none")
            {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Light"))
            }
        }

        $Path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty -Path $Path -Name AppsUseLightTheme -Value $DarkMoveValue
        Set-ItemProperty -Path $Path -Name SystemUsesLightTheme -Value $DarkMoveValue
        Refresh-Explorer
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
function Invoke-MouseAcceleration {

    <#
        .SYNOPSIS
        Toggles mouse acceleration settings on or off.

        .DESCRIPTION
        This function allows you to enable or disable mouse acceleration by adjusting the related registry settings. 
        If the `$Mouse` parameter is set to `$false`, mouse acceleration is enabled with default values. 
        If it is set to `$true`, mouse acceleration is disabled. Additionally, you can specify custom values for 
        `MouseSpeed`, `Threshold1`, and `Threshold2`.

        .EXAMPLE
        # Disables mouse acceleration
        MouseAcceleration -Mouse $true

        # Enables mouse acceleration with default values
        MouseAcceleration -Mouse $false

        # Enables mouse acceleration with custom values
        MouseAcceleration -Mouse $false -MouseSpeed 1 -Threshold1 4 -Threshold2 8

        # Disables mouse acceleration and logs actions
        MouseAcceleration -Mouse $true -Path "HKCU:\Control Panel\Mouse"
    #>

    param (
        $Mouse,
        $Speed = 0,
        $Threshold1  = 0,
        $Threshold2  = 0,
        [string]$Path = "HKCU:\Control Panel\Mouse"
    )

    try {
        if($Mouse -eq $false)
        {
            Add-Log -Message "Enabled" -LEVEL "INFO"
            $Speed = 1
            $Threshold1 = 6
            $Threshold2 = 10
        }else {
            $Speed = 0
            $Threshold1 = 0
            $Threshold2 = 0
            Add-Log -Message "Disabled" -LEVEL "INFO"
        }

        Set-ItemProperty -Path $Path -Name MouseSpeed -Value $Speed
        Set-ItemProperty -Path $Path -Name MouseThreshold1 -Value $Threshold1
        Set-ItemProperty -Path $Path -Name MouseThreshold2 -Value $Threshold2
    }
    catch {
        Add-Log -Message "Unable  set valuse" -LEVEL "ERROR"
    }
}
function Invoke-NumLock {

    <#
        .SYNOPSIS
        Toggles the Num Lock state on the system by modifying registry settings.

        .DESCRIPTION
        The `Invoke-NumLock` function sets the state of the Num Lock key based on the `$Enabled` parameter.
        - If `$Enabled` is `$true`, Num Lock is enabled.
        - If `$Enabled` is `$false`, Num Lock is disabled.
        The function modifies the registry settings under `HKU\.Default\Control Panel\Keyboard` to achieve this.

        .PARAMETER Enabled
        A boolean value that determines whether Num Lock should be enabled (`$true`) or disabled (`$false`).

        .EXAMPLE
            Invoke-NumLock -Enabled $true
        This example enables Num Lock.

        .EXAMPLE
            Invoke-NumLock -Enabled $false
        This example disables Num Lock.

        .NOTES
        - Requires administrative privileges to modify registry settings.
        - The registry path used is for the default user profile and may not affect the currently logged-in user.
    #>

    param(
        [Parameter(Mandatory = $true)]
        [bool]$Enabled
    )

    try {
        $value = if ($Enabled) { 0 } else { 2 }

        New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS -ErrorAction Stop
        $Path = "HKU:\.Default\Control Panel\Keyboard"
        Set-ItemProperty -Path $Path -Name InitialKeyboardIndicators -Value $value -ErrorAction Stop
    }
    catch {
        Write-Warning "An error occurred: $($_.Exception.Message)"
    }
}

function Invoke-ShowFile {

    <#
        .SYNOPSIS
        Toggles the visibility of hidden files and folders in Windows Explorer.

        .DESCRIPTION
        The `Invoke-ShowFile` function updates the Windows registry to show or hide hidden files and folders in Windows Explorer based on the `$Enabled` parameter.
        - If `$Enabled` is `$true`, hidden items and super-hidden items (e.g., system files) are shown.
        - If `$Enabled` is `$false`, these items are hidden.

        .PARAMETER Enabled
        A boolean value that determines whether hidden files and folders should be shown (`$true`) or hidden (`$false`).

        .EXAMPLE
            Invoke-ShowFile -Enabled $true
        This example makes hidden files and folders visible in Windows Explorer.

        .EXAMPLE
            Invoke-ShowFile -Enabled $false
        This example hides hidden files and folders in Windows Explorer.

        .NOTES
        - The function requires restarting Windows Explorer to apply the changes.
        - Administrative privileges might be required depending on system configuration.
    #>

    Param($Enabled)
    Try {
        $value = if ($Enabled -eq $false) { 1 } else { 2 }

        $hiddenItemsKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        
        # Set registry values to show or hide hidden items
        Set-ItemProperty -Path $hiddenItemsKey -Name Hidden -Value $value
        Set-ItemProperty -Path $hiddenItemsKey -Name ShowSuperHidden -Value $value
        Refresh-Explorer
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set registry keys due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch {
        Write-Warning "Unable to set registry keys due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
function Invoke-ShowFile-Extensions {

    <#
        .SYNOPSIS
        Toggles the visibility of file extensions in Windows Explorer.

        .DESCRIPTION
        The `Invoke-ShowFile-Extensions` function updates the Windows registry to show or hide file extensions for known file types in Windows Explorer based on the `$Enabled` parameter.
        - If `$Enabled` is `$true`, file extensions are shown.
        - If `$Enabled` is `$false`, file extensions are hidden.

        .PARAMETER Enabled
        A boolean value that determines whether file extensions should be shown (`$true`) or hidden (`$false`).

        .EXAMPLE
            Invoke-ShowFile-Extensions -Enabled $true
        This example makes file extensions visible in Windows Explorer.

        .EXAMPLE
            Invoke-ShowFile-Extensions -Enabled $false
        This example hides file extensions in Windows Explorer.

        .NOTES
        - The function requires restarting Windows Explorer to apply the changes.
        - Administrative privileges might be required depending on system configuration.
    #>
   
    Param($Enabled)
    Try{
        if ($Enabled -eq $false){
            $value = 0
        }
        else {
            $value = 1
            Add-Log -Message "This Setting require a restart" -Level "INFO"
        }
        $Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        Set-ItemProperty -Path $Path -Name HideFileExt -Value $value
        Refresh-Explorer
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
Function Invoke-StickyKeys {

     <#
        .SYNOPSIS
        Toggles Sticky Keys functionality in Windows.

        .DESCRIPTION
        The `Invoke-StickyKeys` function updates the Windows registry settings to enable or disable Sticky Keys based on the `$Enabled` parameter.
        - If `$Enabled` is `$true`, Sticky Keys is enabled with a specific configuration.
        - If `$Enabled` is `$false`, Sticky Keys is disabled with a different configuration.
        - Note: Enabling Sticky Keys may require restarting Windows Explorer.

        .PARAMETER Enabled
        A boolean value that determines whether Sticky Keys should be enabled (`$true`) or disabled (`$false`).

        .EXAMPLE
            Invoke-StickyKeys -Enabled $true
        This example enables Sticky Keys with the specified configuration and prompts for a restart of Windows Explorer.

        .EXAMPLE
            Invoke-StickyKeys -Enabled $false
        This example disables Sticky Keys with the specified configuration and prompts for a restart of Windows Explorer.

        .NOTES
        - The function requires restarting Windows Explorer to apply the changes.
        - Administrative privileges might be required depending on system configuration.
    #>

    Param($Enabled)
    Try {
        if ($Enabled -eq $false){
            $value = 510
            $value2 = 510
        }
        else {
            $value = 58
            $value2 = 122
        }
        $Path = "HKCU:\Control Panel\Accessibility\StickyKeys"
        $Path2 = "HKCU:\Control Panel\Accessibility\Keyboard Response"
        Set-ItemProperty -Path $Path -Name Flags -Value $value
        Set-ItemProperty -Path $Path2 -Name Flags -Value $value2
        Refresh-Explorer
        Add-Log -Message "This Setting require a restart" -Level "INFO"
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
    }

}
function About {
    # Load child window
    [xml]$about = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $about)
    $itt.about = [Windows.Markup.XamlReader]::Load($childWindowReader)
    $itt["about"].Resources.MergedDictionaries.Add($itt["window"].FindResource($itt.CurretTheme))
    # Set version and link handlers
    $itt.about.FindName('ver').Text = "Last update $($itt.lastupdate)"
    $itt.about.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})
    $itt.about.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/itt")})
    $itt.about.FindName("blog").add_MouseLeftButtonDown({Start-Process("https://emadadel4.github.io")})
    $itt.about.FindName("yt").add_MouseLeftButtonDown({Start-Process("https://youtube.com/@emadadel4")})
    $itt.about.FindName("coffee").add_MouseLeftButtonDown({Start-Process("https://buymeacoffee.com/emadadel")})
    # Set data context based on language
    
    $itt.about.DataContext = $itt.database.locales.Controls.en

    $itt.about.ShowDialog() | Out-Null
}
function ITTShortcut {

    <#
        .SYNOPSIS
        Creates a desktop shortcut for launching a PowerShell script with a custom icon.

        .DESCRIPTION
        The `ITTShortcut` function creates a shortcut on the user's desktop that points to a PowerShell executable with a specified command.
        It downloads a custom icon from a specified URL, saves it to the `AppData\Roaming` folder, and sets this icon for the shortcut.
        The PowerShell script specified in the shortcut executes a command to run a script from a provided URL.

        .NOTES
        - Ensure that you have internet access to download the icon.
        - The command executed by the shortcut should be valid and accessible.
    #>

    # URL of the icon file
    $iconUrl = "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico"
    
    # Determine the path in AppData\Roaming
    $appDataPath = [Environment]::GetFolderPath('ApplicationData')
    $localIconPath = Join-Path -Path $appDataPath -ChildPath "ITTIcon.ico"
    
    # Download the icon file
    Invoke-WebRequest -Uri $iconUrl -OutFile $localIconPath
    
    # Create a shortcut object
    $Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$([Environment]::GetFolderPath('Desktop'))\ITT Emad Adel.lnk")
    
    # Set the target path to PowerShell with your command
    $Shortcut.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
    $Shortcut.Arguments = "-ExecutionPolicy Bypass -Command ""irm bit.ly/emadadel | iex"""
    
    # Set the icon path to the downloaded icon file in AppData\Roaming
    $Shortcut.IconLocation = "$localIconPath"
    
    # Save the shortcut
    $Shortcut.Save()
}

function DisplayQuotes  {

    Invoke-ScriptBlock -ScriptBlock {

        # Define the JSON file path
        $jsonFilePath = $itt.database.Quotes

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
        function Show-WelcomeText {
            $itt.Quotes.Dispatcher.Invoke([Action]{

                #$fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                #$shortCulture = $fullCulture.Split('-')[0]
                $itt.Quotes.Text = $itt.database.locales.Controls.$($itt.Language).welcome
               
            })
        }

        # Display welcome text
        Show-WelcomeText

        Start-Sleep -Seconds 20

        # Loop through shuffled names and display them
        do {
            foreach ($name in $shuffledNames) {
                $itt.Quotes.Dispatcher.Invoke([Action]{
                    $itt.Quotes.Text = "`“$name`”"
                })
                # Adjust the sleep time as needed
                Start-Sleep -Seconds 18 
            }
        } while ($true)
    }
}
function Search {

    <#
        .SYNOPSIS
        Filters items in the current list view based on the search input.

        .DESCRIPTION
        The `Search` function retrieves the text from the search input, converts it to lowercase, and removes any non-alphanumeric characters. It then applies a filter to the items in the currently displayed list view based on the search input. The filter checks if the search input matches any checkbox content within stack panels in the list view.

        .EXAMPLE
        Search

        .NOTES
        - The function operates on the `searchInput` property of the `$itt` object, which is expected to be a text input control where users enter their search query.
        - The function uses the `CollectionViewSource` class to get the default view of the items in the current list view and applies a filter to it.
        - The filter logic iterates through the children of each `StackPanel` item, looking for `CheckBox` controls. If the content of a checkbox matches the search input, the item is included in the filtered view.
        - Non-`StackPanel` items are always included in the filtered view.
        - This function relies on the `$itt.currentList` property to determine which list view to filter. Ensure that `$itt.currentList` correctly references the ID of the current list view control.
    #>


    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $itt.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt['window'].FindName($itt.currentList).Items)
    
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

    <#
        .SYNOPSIS
        Filters the items in the Apps list view based on the selected category.

        .DESCRIPTION
        The `FilterByCat` function filters the items displayed in the Apps list view based on a specified category. It updates the view to show only those items that match the selected category. If the selected category is not valid, it clears the filter and displays all items. The function also ensures that the Apps tab is selected and scrolls to the top of the list view after applying the filter.

        .PARAMETER Cat
        The category to filter by. Must be one of the predefined valid categories.

        .EXAMPLE
        FilterByCat -Cat "Media"

        .NOTES
        - The function operates on the `AppsListView` control within the `$itt` object.
        - The `validCategories` array contains the list of categories that the function recognizes as valid. If the provided category does not match one of these, the filter is cleared.
        - The filter predicate is based on checking the `Tag` property of `CheckBox` controls within `StackPanel` items to determine if they match the selected category.
        - If the selected category is valid, the function applies the filter to the `CollectionView` of the `AppsListView`. If not, it removes the filter and shows all items.
        - The `ScrollIntoView` method is used to ensure that the list view scrolls to the top after applying the filter.
    #>


    param ($Cat)

    # Define the list of valid categories
    $validCategories = @(
        "Web Browsers",
        "Media",
        "Media Tools",
        "Documents",
        "Compression",
        "Communication",
        "File Sharing",
        "Imaging",
        "Gaming",
        "Utilities",
        "Disk Tools",
        "Development",
        "Security",
        "Portable",
        "Runtimes",
        "Drivers"
    )

    # Update DataContext
    #$itt["window"].DataContext = $itt.database.locales.Controls.$($itt.Language)

    # if user is on another tab, return to the apps list
    $itt['window'].FindName('apps').IsSelected = $true
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)

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

    if ($validCategories -contains $Cat) {
        # Apply the filter to the collection view
        $itt.AppsListView.Clear()
        $collectionView.Filter = $filterPredicate
    }
    else {
        # Clear the filter if selected category is not in the predefined list
        $itt.AppsListView.Clear()
        $collectionView.Filter = $null
    }
    
    # Scroll to the top
    $itt.AppsListView.ScrollIntoView($itt.AppsListView.Items[0])
}
function ClearFilter {

    <#
        .SYNOPSIS
        Clears the filter applied to the Apps list view.

        .DESCRIPTION
        The `ClearFilter` function removes any filtering that has been applied to the items in the Apps list view. It clears the list view and resets the filter, making all items in the list view visible. This function is typically used when you want to display all items without any filtering constraints.

        .EXAMPLE
        ClearFilter

        .NOTES
        - The function operates on the `AppsListView` control within the `$itt` object.
        - The `Clear()` method is called on the `AppsListView` to remove any items currently displayed. This is followed by resetting the `Filter` property of the `CollectionView` associated with the `AppsListView` to `$null`, effectively removing any applied filter and showing all items.
        - This function is useful for resetting the view to its default state, especially after applying a category filter or other types of filters.
    #>

    $itt.AppsListView.Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)
    $collectionView.Filter = $null
}
$KeyEvents = {

    <#
        .DESCRIPTION
            How to add a new shortcut

        .PARAMETER A
            replace A With you latter you want

        .PARAMETER Ctrl
            replace Ctrl With you latter you want

        .EXAMPLE
            if (($_.Key -eq "A" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {

                # your code here
            }      
    #>

    if ($itt.ProcessRunning -eq $true) {
        return
    }

    if (($_.Key -eq "Enter")) {

        switch ($itt.currentList) {
            "appslist" {
                Invoke-Install                
            }
            "tweakslist" {
                Invoke-ApplyTweaks
            }
        }
    }

    if (($_.Key -eq "S" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {

        switch ($itt.currentList) {
            "appslist" {
                Invoke-Install                
            }
            "tweakslist" {
                Invoke-ApplyTweaks
            }
        }
    }

     # Quit from applaction
     if (($_.Key -eq "G" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {
        $this.Close()
    }

    # Foucs on Search box
    if (($_.Key -eq "F" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {
        $itt.SearchInput.Focus()
    }

    # Lost Foucs on Search box
    if ($_.Key -eq "Escape") {
        $itt.SearchInput.MoveFocus([System.Windows.Input.TraversalRequest]::New([System.Windows.Input.FocusNavigationDirection]::Next))
        $itt.SearchInput.Text = ""
    }

    # Swtich to Apps tap
    if ($_.Key -eq "Q" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "apps" }
    }

    # Swtich to tweaks tap
    if ($_.Key -eq "W" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "tweeksTab" }
    }

    # Swtich to settings tap
    if ($_.Key -eq "E" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "SettingsTab" }
    }

    # Swtich to settings tap
    if ($_.Key -eq "I" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        About
    }

    # SaveItemsToJson
    if ($_.Key -eq "S" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        SaveItemsToJson
    }

    # LoadJson
    if ($_.Key -eq "D" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        LoadJson
    }

    # Mute
    if ($_.Key -eq "M" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        MuteMusic -Value 0

    }

    # Music ON 
    if ($_.Key -eq "F" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        UnmuteMusic -Value 100
    }

    # Choco Folder
    if ($_.Key -eq "P" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        Start-Process explorer.exe "C:\ProgramData\chocolatey\lib"
    }

    # Restore point 
    if ($_.Key -eq "Q" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        RestorePoint
    }

    # ITT Shortcut 
    if ($_.Key -eq "I" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
        ITTShortcut
    }
}


function Message {

  <#
        .SYNOPSIS
            Displays a localized message box to the user with a specified icon.

        .DESCRIPTION
            The `Message` function shows a message box with a localized message based on the provided key and icon type.
            It retrieves the message text from a localization database and displays it using the Windows MessageBox class.
            The icon type determines the visual representation of the message box, which can be "Warning" or "Question".

        .PARAMETER key
            The key used to retrieve the localized message from the `itt.database.locales.Controls` object.
            This key should correspond to a valid entry in the localization database for the current language.

        .PARAMETER icon
            The type of icon to be displayed in the message box. Valid values are:
            - "Warning" for a warning icon
            - "Question" for a question icon

        .EXAMPLE
            Message -key "Welcome" -icon "Warning"
            Displays a message box with the message associated with the "Welcome" key and a warning icon.

        .EXAMPLE
            Message -key "ConfirmAction" -icon "Question"
            Displays a message box with the message associated with the "ConfirmAction" key and a question icon.

        .NOTES
            Ensure that the `itt.database.locales.Controls` object is properly populated with localization data and that the specified keys exist for the current language.

    #>
    
    param($key,$icon)

    $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).$($key)
    $msg = "$localizedMessageTemplate"
    [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::$icon)
}
function Notify {

    <#
        .SYNOPSIS
        Displays a balloon tip notification in the system tray with a customizable title, message, icon, and duration.

        .DESCRIPTION
        The `Notify` function creates a balloon tip notification using the system tray's notification area. 
        This function is useful for displaying temporary alerts or messages to the user. 
        It allows you to specify the notification's title, message, icon type, and how long the balloon tip should be displayed.

        .PARAMETER title
        The title of the notification balloon. This appears as the header of the balloon tip.

        .PARAMETER msg
        The main message text of the notification balloon.

        .PARAMETER icon
        The icon to be displayed in the notification balloon. Should be one of the standard `System.Windows.Forms.NotifyIcon` icon types such as "Information", "Warning", or "Error".

        .PARAMETER time
        The duration (in milliseconds) for which the balloon tip will be displayed.

        .EXAMPLE
        Notify -title "ITT" -msg "Hello world!" -icon "Information" -time 3000
        Displays a notification balloon with the title "ITT" and the message "Hello world!" with an informational icon for 3 seconds.

        .EXAMPLE
        Notify -title "Warning" -msg "Please check your settings." -icon "Warning" -time 5000
        Displays a notification balloon with the title "Warning" and the message "Please check your settings." with a warning icon for 5 seconds.

        .NOTES
        - The `icon` parameter should match one of the standard `System.Windows.Forms.NotifyIcon` types.
        - The `notification` object is disposed of after showing the balloon tip to free up system resources.
    #>

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
# Mute the music by setting the volume to the specified value
function MuteMusic {

    <#
        .SYNOPSIS
        Adjusts the volume of the media player and saves the setting for persistence.

        .DESCRIPTION
        The `MuteMusic` function sets the volume of the media player to a specified level and saves this volume setting to the registry. 
        This ensures that the volume level is persisted even after restarting the application or the system. 
        The function also updates the window's title to indicate the current state.

        .PARAMETER value
        The volume level to set. It should be an integer value between 0 (muted) and 100 (full volume). The function uses this value to adjust the media player's volume and to store the setting in the registry.

        .EXAMPLE
        MuteMusic -value 0
        Sets the media player's volume to 0 (muted) and updates the window title to indicate the volume level.

        .EXAMPLE
        MuteMusic -value 50
        Sets the media player's volume to 50% and updates the window title to indicate the current volume level.

        .NOTES
        - The volume value should be an integer between 0 and 100.
        - The volume setting is saved to the registry at the path specified by `$itt.registryPath` under the "Music" key.
        - Ensure that `$itt.mediaPlayer.settings.volume` and `$itt.registryPath` are properly initialized in your environment.
    #>

    param($value)
    $itt.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "$value" -Force
    $itt["window"].title = "Install Tweak Tool #StandWithPalestine 🔈"

}

# Unmute the music by setting the volume to the specified value
function UnmuteMusic {
    param($value)
    $itt.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "$value" -Force
    $itt["window"].title = "Install Tweak Tool #StandWithPalestine 🔊"

}

# Stop the music and clean up resources
function StopMusic {
    $itt.mediaPlayer.controls.stop()    # Stop the media player
    $itt.mediaPlayer = $null            # Clear the media player object
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $itt.runspace.Dispose()             # Dispose of the runspace
    $itt.runspace.Close()               # Close the runspace
}

# Stop all runspaces, stop the music, and exit the process
function StopAllRunspace {
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $itt.runspace.Dispose()             # Dispose of the runspace
    $itt.runspace.Close()               # Close the runspace
    $script:powershell.Stop()            # Stop the PowerShell script
    StopMusic                            # Stop the music and clean up resources
    $newProcess.exit                     # Exit the process
    # Display a message reminding to pray for the oppressed
    Write-Host "`n` Don't forget to pray for the oppressed people, Stand with Palestine" 
}
function Set-Language {

    <#
        .SYNOPSIS
        Sets the application's language and updates the registry with the selected language.

        .DESCRIPTION
        The `Set-Language` function updates the application's language settings by changing the `DataContext` of the main window to the specified language. 
        It also saves the selected language to the registry to ensure that the language preference is preserved across sessions.

        .PARAMETER lang
        A string representing the language code to set. This code should correspond to a valid language entry in the application's locale database. For example, "en" for English, "fr" for French, etc.

        .EXAMPLE
        Set-Language -lang "en"
        Sets the application's language to English and updates the registry to reflect this choice.

        .EXAMPLE
        Set-Language -lang "fr"
        Changes the application's language to French and saves this preference in the registry.

        .NOTES
        - Ensure that the specified language code exists in `$itt.database.locales.Controls`.
        - The registry path for saving the language setting is defined by `$itt.registryPath`.
    #>

    param (
        [string]$lang  # Parameter for the language to set
    )

    # Set DataContext of the window to the specified language
    $itt["window"].DataContext = $itt.database.locales.Controls.$($lang)

    # Set registry value for the language
    Set-ItemProperty -Path $itt.registryPath  -Name "locales" -Value "$lang" -Force
}
function ToggleTheme {

    <#
        .SYNOPSIS
        Toggles the application's theme between dark and light modes based on the state of the `themeText` checkbox control.

        .DESCRIPTION
        The `ToggleTheme` function checks the state of a UI checkbox named `themeText` to determine whether the application should be switched to dark or light mode. 
        If the checkbox is checked, the function activates dark mode; if unchecked, it activates light mode. 
        The checkbox state is then updated to reflect the new theme setting. Error handling is included to manage and report any issues that occur during the theme switching process.
    #>
    
    try {

        if ($itt.searchInput = $itt['window'].FindName('themeText').IsChecked -eq $true)
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

    $itt['window'].FindName('themeText').IsChecked = -not $itt['window'].FindName('themeText').IsChecked

}
function Switch-ToDarkMode {
    try {

        $theme = $itt['window'].FindResource("Dark")
        Update-Theme $theme "true"
    } catch {
        Write-Host "Error switching to dark mode: $_"
    }
}
function Switch-ToLightMode {
    try {
        $theme = $itt['window'].FindResource("Light")
        Update-Theme $theme "false"
    } catch {
        Write-Host "Error switching to light mode: $_"
    }
}
function Update-Theme ($theme, $mode) {
    $itt['window'].Resources.MergedDictionaries.Clear()
    $itt['window'].Resources.MergedDictionaries.Add($theme)
    Set-ItemProperty -Path $itt.registryPath -Name "DarkMode" -Value $mode -Force

}
function SwitchToSystem {

    try {

        Set-ItemProperty -Path $itt.registryPath  -Name "DarkMode" -Value "none" -Force

        $AppsTheme = (Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme")

        switch ($AppsTheme) {
            "0" {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Dark"))
            }
            "1" {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Light"))
            }
            Default {
                Write-Host "Unknown theme value: $AppsTheme"
            }
        }
    }
    catch {
        Write-Host "Error occurred: $_"
    }
}

# Invoke Event Window WPF
function Show-Event {
    param(
        [string]$image,
        [string]$title,
        [string]$description,
        [string]$day,
        [string]$WindowHeight,
        [string]$WindowWidth,
        [string]$ImageHeight,
        [string]$ImageWidth
    )

    [xml]$event = $EventXaml

    $EventWindowReader = (New-Object System.Xml.XmlNodeReader $event)
    $itt.event = [Windows.Markup.XamlReader]::Load($EventWindowReader)
    $itt["event"].Resources.MergedDictionaries.Add($itt["window"].FindResource($itt.CurretTheme))
    $itt.event.title = "ITT | $title"
    $itt.event.Height = "$WindowHeight"
    $itt.event.Width = "$WindowWidth"

    # Set new values
    $titleTextBlock = $itt.event.FindName('title')
    $subtitleTextBlock = $itt.event.FindName('Subtitle')
    $tutorialImage = $itt.event.FindName('Image')
    #$mainStackPanel = $itt.event.FindName('MainStackPanel')

    $itt.event.FindName('date').Text = $itt.lastupdate

    # Switch-like structure using switch statement
    switch ($day) {

        "Birthday" {
            $titleTextBlock.Text = "$title"
            $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
            $subtitleTextBlock.Text = "$description"
            $itt.event.FindName('DisablePopup').Text = "Happy birthday day Emad"
            $tutorialImage.Height = $ImageHeight
            $subtitleTextBlock.VerticalAlignment = "Center"
            $subtitleTextBlock.HorizontalAlignment = "Center"
            $subtitleTextBlock.FontSize = "20"

            $itt.event.FindName("DisablePopup").add_MouseLeftButtonDown({
                $itt.event.FindName("DisablePopup").Text = "Thank you :)"
            })
        }
        Default {

            # Check RTL & LTR
            if($itt.Language -ne "ar")
            {
                $titleTextBlock.Text = "$title $env:USERNAME" 
                $subtitleTextBlock.Text = "$description"

            }else
            {
                $titleTextBlock.Text = "$env:USERNAME $title " 
                $subtitleTextBlock.Text = "$description"
            }

            # Lazy loading image event handler
            $tutorialImage.add_IsVisibleChanged({
                if ($_.IsVisible) {
                    $tutorialImage.Source = [System.Windows.Media.Imaging.BitmapImage]::new([Uri]::new($image))
                }
            })
                    
            $tutorialImage.add_MouseLeftButtonDown({
                Start-Process("https://youtu.be/QmO82OTsU5c")
            })

            $itt.event.FindName("DisablePopup").add_MouseLeftButtonDown({
                DisablePopup
                $itt.event.Close()
            })
        }
    }

    $itt.event.FindName("closebtn").add_MouseLeftButtonDown({
        $itt.event.Close()
    })

    $KeyEvents = {

        # Close
        if ($_.Key -eq "Escape") {
            $itt.event.Close()
        }
    }
    $itt.event.Add_PreViewKeyDown($KeyEvents)

    # Show dialog
    $itt.event.ShowDialog() | Out-Null
}

# Function to check current date and call Show-Event
function Get-DateStatus {

    $watchdemo = $itt.database.locales.Controls.$($itt.Language).watchdemo
    $happybirthday = $itt.database.locales.Controls.$($itt.Language).happybirthday
    $myplaylist = $itt.database.locales.Controls.$($itt.Language).myplaylist
    $subs = $itt.database.locales.Updates.Keyboard

    if ($itt.Date.Month -eq 9 -and $itt.Date.Day -eq 1) 
    {
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/happy.jpg" -ImageHeight 400 -title "$happybirthday" -description "$myplaylist" -day "Birthday" -WindowHeight 600 -WindowWidth 486
    } 
    else 
    {
        if($itt.PopupWindow -eq "off") {return}   
        Show-Event -image "https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/thumbnail.jpg" -title "$watchdemo" -description "$subs" -day "Default" -WindowHeight 500 -WindowWidth 486
    }
}

# Save Current State event
function DisablePopup {
    Set-ItemProperty -Path $itt.registryPath  -Name "PopupWindow" -Value "off" -Force
}
function UpdateUI {

    <#
        .SYNOPSIS
        Updates the user interface elements, including a button's width, text, and associated icons.

        .DESCRIPTION
        The `UpdateUI` function is designed to modify various UI components within the application. 
        It updates the width and text of a specified button, changes the text of a related text block, and sets the icon for another text block. 
        This function is typically used to reflect different states of the application, such as during installations or other processes.

        .PARAMETER Button
        Specifies the name of the button element to be updated.

        .PARAMETER ButtonText
        Specifies the name of the text block associated with the button whose text will be updated.

        .PARAMETER Icon
        Specifies the icon to be set in the text block.

        .PARAMETER Content
        Specifies the content to be displayed as button text. This content is localized based on the application's current language setting.

        .PARAMETER TextIcon
        Specifies the name of the text block where the icon will be displayed.

        .PARAMETER Width
        Specifies the width to set for the button. The default value is "100".

        .EXAMPLE
            UpdateUI -Button "InstallBtn" -ButtonText "installText" -Content "downloading" -TextIcon "installIcon" -Icon "  " -Width "150"
        This example updates the UI by setting the width of the "InstallBtn" button to 150, changing the text of the "installText" text block to "downloading", 
        and setting the icon for the "installIcon" text block to "  ".
    #>


    param(
        [string]$Button,
        [string]$ButtonText,
        [string]$Icon,
        [string]$Content,
        [string]$TextIcon,
        [string]$Width = "100"
    )

    $applyBtn = $itt.database.locales.Controls.$($itt.Language).$Content

    $itt['window'].Dispatcher.Invoke([Action]{

        # Button and Button Text
        $itt.$Button.Width = $Width
        $itt.$ButtonText.Text = "$applyBtn"

        # Textblock as Icon
        $itt.$TextIcon.Text = "$icon"
    })
}
#===========================================================================
#endregion End Main Functions
#===========================================================================
#===========================================================================
#region Begin WPF Main Window
#===========================================================================
$inputXML = '
<!--Main Window-->
<Window
xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
x:Name="Window" Title="Install Tweak Tool #StandWithPalestine" WindowStartupLocation = "CenterScreen" 
Background="{DynamicResource BGColor}"
Height="700" Width="955" MinHeight="600" MinWidth="800" Topmost="False"  ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico">

<Window.Resources>
    <!--Fade in-->
    <Storyboard x:Key="FadeOutStoryboard">
        <DoubleAnimation
            Storyboard.TargetProperty="Opacity"
            From="0" To="1" Duration="0:0:0.1" />
    </Storyboard>

    <Storyboard x:Key="FadeIn">
        <DoubleAnimation
            Storyboard.TargetProperty="Opacity"
            From="0" To="1" Duration="0:0:1.2" />
    </Storyboard>


    <!-- Define the FadeOut and FadeIn animations with looping -->
    <Storyboard x:Key="FadeOutInLoopStoryboard">
        <!-- Fade Out Animation -->
        <DoubleAnimation
            Storyboard.TargetProperty="Opacity"
            From="1.0"
            To="0.0"
            Duration="0:0:1" />
        <!-- Fade In Animation -->
        <DoubleAnimation
            Storyboard.TargetProperty="Opacity"
            From="0.0"
            To="1.0"
            Duration="0:0:1"
            BeginTime="0:0:1" />
    </Storyboard>

<!--Fade in-->

<!--Image Style-->
    <Style TargetType="Image">
        <Style.Triggers>
            <EventTrigger RoutedEvent="FrameworkElement.Loaded">
                <BeginStoryboard Storyboard="{StaticResource FadeIn}" />
            </EventTrigger>
        </Style.Triggers>
    </Style>
<!--End Image Style-->

<!--Button Style-->
      <Style TargetType="Button">
        <Setter Property="Background" Value="{DynamicResource BGButtonColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor2}"/>
        <Setter Property="BorderBrush" Value="Transparent"/>
        <Setter Property="BorderThickness" Value="1"/>
        
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="Button">
                    <Border CornerRadius="20" BorderBrush="{TemplateBinding BorderBrush}" BorderThickness="{TemplateBinding BorderThickness}" Background="{TemplateBinding Background}">
                        <ContentPresenter HorizontalAlignment="Center"
                                            VerticalAlignment="Center"/>
                        
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
        <Style.Triggers>
            <Trigger Property="IsMouseOver" Value="True">
                <Setter Property="Background" Value="{DynamicResource ButtonHighlightColor}"/>
                <Setter Property="Foreground" Value="{DynamicResource FGButtonColor}"/>
            </Trigger>
        </Style.Triggers>
    </Style>
<!--End Button Style-->

<!--ListViewItem Style-->
    <Style TargetType="ListViewItem">
        <Setter Property="Margin" Value="8"/>
        <Setter Property="BorderThickness" Value="0"/>
        <Setter Property="Padding" Value="0"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="ListViewItem">
                    <Border CornerRadius="0"
                            Padding="{TemplateBinding Padding}" 
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}">
                        <Border.Background>
                            <LinearGradientBrush StartPoint="1,5" EndPoint="5,5">
                                <GradientStop Color="{DynamicResource CardLeft}" Offset="1"/>
                                <GradientStop Color="{DynamicResource CardRight}" Offset="1"/>
                            </LinearGradientBrush>
                        </Border.Background>
                        <ContentPresenter HorizontalAlignment="Left"
                                        VerticalAlignment="Center"
                                        ContentSource="Content"/>
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
        <Style.Triggers>
            <EventTrigger RoutedEvent="FrameworkElement.Loaded">
                <BeginStoryboard Storyboard="{StaticResource FadeOutStoryboard}" />
            </EventTrigger>
        </Style.Triggers>
    </Style>
<!--End ListViewItem Style-->

<!--CheckBox Style-->
    <Style TargetType="CheckBox">
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
        <Setter Property="Margin" Value="0"/>
        <Setter Property="Padding" Value="6"/>
        <Setter Property="BorderThickness" Value="1.5"/>
        <Setter Property="BorderBrush" Value="{DynamicResource BGButtonColor}"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="CheckBox">
                    <StackPanel Orientation="Horizontal">
                        <!-- Checkbox box -->
                        <Border Name="CheckRadius" Width="18" Height="18" BorderBrush="{TemplateBinding BorderBrush}" CornerRadius="20" BorderThickness="{TemplateBinding BorderThickness}" Background="{TemplateBinding Background}">
                            <!-- Checkmark arrow inside the box -->
                            <Path x:Name="CheckMark" Width="13" Height="13" Stretch="Uniform" Stroke="WhiteSmoke" StrokeThickness="3" Data="M 0 5 L 4 8 L 10 0" Visibility="Collapsed"/>
                        </Border>
                        <!-- Content beside the checkbox -->
                        <ContentPresenter Margin="4,0,0,0" VerticalAlignment="Center"/>
                    </StackPanel>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsChecked" Value="True">
                            <Setter TargetName="CheckMark" Property="Visibility" Value="Visible"/>
                            <Setter Property="Background" Value="{DynamicResource highlight}"/>
                            <Setter Property="BorderBrush" Value="{DynamicResource highlight}"/>

                        </Trigger>
                        <Trigger Property="IsChecked" Value="False">
                            <Setter Property="Background" Value="White"/>
                        </Trigger>
                        <Trigger Property="IsMouseOver" Value="True">
                            <Setter Property="Background" Value="{DynamicResource highlight}"/>
                            <Setter Property="BorderBrush" Value="{DynamicResource highlight}"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End CheckBox Style-->

<!--SearchBox Style-->
    <Style x:Key="SearchBox" TargetType="TextBox">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
        <Setter Property="BorderBrush" Value="{DynamicResource BorderBrush}"/>
        <Setter Property="BorderThickness" Value="0"/>
        <Setter Property="Padding" Value="8"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="TextBox">
                    <Border Margin="0" Background="{TemplateBinding Background}"
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}"
                            CornerRadius="15">
                        <Grid>
                            <ScrollViewer x:Name="PART_ContentHost" />
                        <StackPanel Orientation="Horizontal">

                            <!-- Icon -->
                            <TextBlock x:Name="SearchIcon"
                                Foreground="Gray" 
                                Text=""
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left"
                                Margin="10,0,0,0"
                                FontFamily="Segoe MDL2 Assets"
                                IsHitTestVisible="False"/>

                            <!-- Hint Search Text -->
                            <TextBlock x:Name="SearchHintText"
                                Foreground="Gray" 
                                Text="{Binding search}"
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left"
                                Margin="10,0,0,0"
                                IsHitTestVisible="False"/>
                        </StackPanel>
                        </Grid>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsKeyboardFocusWithin" Value="True">
                            <Setter TargetName="SearchHintText" Property="Visibility" Value="Collapsed"/>
                            <Setter TargetName="SearchIcon" Property="Visibility" Value="Collapsed"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
        <Style.Triggers>
            <Trigger Property="IsKeyboardFocusWithin" Value="True">
                <Setter Property="BorderThickness" Value="2"/>
                <Setter Property="BorderBrush" Value="{DynamicResource BGButtonColor}"/>
                <Setter Property="Background" Value="{DynamicResource FGColor}"/>
            </Trigger>
        </Style.Triggers>
    </Style>
<!--End SearchBox Style-->

<!--Label Style-->
  <Style TargetType="Label">
    <Setter Property="Background" Value="Transparent"/>
    <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
    <Setter Property="Padding" Value="7.5"/>
    <Setter Property="Template">
        <Setter.Value>
            <ControlTemplate TargetType="Label">
                <Border Padding="{TemplateBinding Padding}" Background="{TemplateBinding Background}"
                        BorderBrush="{TemplateBinding BorderBrush}"
                        BorderThickness="{TemplateBinding BorderThickness}"
                        CornerRadius="0">
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

<!--Define the Menu Style -->
    <Style TargetType="Menu">
        <Setter Property="Background" Value="#FFFFFF"/>
        <Setter Property="Foreground" Value="#000000"/>
        <Setter Property="Margin" Value="5"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="Menu">
                    <Border Background="{TemplateBinding Background}" 
                            BorderBrush="{TemplateBinding BorderBrush}" 
                            BorderThickness="0" 
                            CornerRadius="8">
                        <ItemsPresenter />
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
        <Style.Triggers>
            <EventTrigger RoutedEvent="FrameworkElement.Loaded">
                <!-- <BeginStoryboard Storyboard="{StaticResource FadeIn}" /> -->
            </EventTrigger>
        </Style.Triggers>
    </Style>

    <Style TargetType="MenuItem">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="Foreground" Value="#000000"/>
        <Setter Property="Margin" Value="1"/>
        <Setter Property="Padding" Value="0"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="MenuItem">
                    <Border x:Name="Border"
                            HorizontalAlignment="Left"
                            Padding="5"
                            CornerRadius="2">
                        <Grid>
                            <Grid.ColumnDefinitions>
                                <ColumnDefinition Width="Auto"/>
                                <ColumnDefinition Width="*"/>
                                <ColumnDefinition Width="Auto"/>
                            </Grid.ColumnDefinitions>
                            
                            <!-- Icon -->
                            <ContentPresenter Grid.Column="0" 
                                              ContentSource="Icon" 
                                              HorizontalAlignment="Left"
                                              VerticalAlignment="Center"
                                              Margin="0,0,4,0"/>
                            
                            <!-- Text (MenuItem Header) -->
                            <TextBlock x:Name="TextBlock"
                                       Grid.Column="1"
                                       Text="{TemplateBinding Header}"
                                       Foreground="{DynamicResource DefaultTextColor}"
                                       VerticalAlignment="Center"/>
                            
                            <!-- Shortcut Key (InputGestureText) -->
                            <TextBlock x:Name="ShortcutText"
                                       Grid.Column="2"
                                       Text="{TemplateBinding InputGestureText}"
                                       Foreground="{DynamicResource DefaultTextColor}"
                                       VerticalAlignment="Center"
                                       HorizontalAlignment="Right"
                                       Margin="5,0"/>
                            
                            <!-- Arrow Down Indicator -->
                            <Path x:Name="Arrow"
                                  Grid.Column="2"
                                  Data="M0,0 L4,4 L8,0 Z"
                                  Fill="{DynamicResource DefaultTextColor}"
                                  HorizontalAlignment="Center"
                                  VerticalAlignment="Center"
                                  Margin="4,0,0,0"
                                  Visibility="Collapsed"/>
                            
                            <!-- Popup for Submenu -->
                            <Popup Name="PART_Popup" 
                                   Placement="Bottom" 
                                   IsOpen="{TemplateBinding IsSubmenuOpen}" 
                                   AllowsTransparency="True" 
                                   Focusable="False"
                                   PopupAnimation="Fade">
                                <Border Background="{TemplateBinding Background}" 
                                        BorderBrush="{DynamicResource BorderBrush}"     
                                        BorderThickness="2"
                                        CornerRadius="5">
                                    <StackPanel IsItemsHost="True" 
                                                KeyboardNavigation.DirectionalNavigation="Cycle"/>
                                </Border>
                            </Popup>
                        </Grid>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsMouseOver" Value="True">
                            <!-- Adjust appearance on hover if needed -->
                        </Trigger>
                        <Trigger Property="HasItems" Value="True">
                            <Setter TargetName="Arrow" Property="Visibility" Value="Visible"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

<!-- End Define the Menu Style -->

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
                    <Border Name="Border" CornerRadius="5" BorderThickness="0,0,0,0" Padding="8" BorderBrush="Transparent"  Margin="5,5">
                        <ContentPresenter x:Name="ContentSite"
                        VerticalAlignment="Center"
                        HorizontalAlignment="Center"
                        ContentSource="Header"
                        />
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
    <Style TargetType="ComboBox">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="BorderBrush" Value="{DynamicResource FGColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="Padding" Value="6,3"/>
        <Setter Property="HorizontalContentAlignment" Value="Left"/>
        <Setter Property="VerticalContentAlignment" Value="Center"/>
        <Setter Property="ScrollViewer.HorizontalScrollBarVisibility" Value="Disabled"/>
        <Setter Property="ScrollViewer.VerticalScrollBarVisibility" Value="Auto"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="ComboBox">
                    <Grid>
                        <ToggleButton 
                            Name="ToggleButton"
                            Grid.Column="2" 
                            Focusable="false"
                            IsChecked="{Binding Path=IsDropDownOpen, Mode=TwoWay, RelativeSource={RelativeSource TemplatedParent}}"
                            ClickMode="Press"
                            Background="Transparent"
                            BorderBrush="Transparent">
                            <ToggleButton.Template>
                                <ControlTemplate TargetType="ToggleButton">
                                    <Border Name="Border" Background="{TemplateBinding Background}" BorderBrush="{TemplateBinding BorderBrush}" BorderThickness="{TemplateBinding BorderThickness}">
                                        <Grid>
                                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            <Path x:Name="Arrow" Data="M 0 0 L 4 4 L 8 0 Z" Fill="{DynamicResource DefaultTextColor}" HorizontalAlignment="Right" Margin="5" VerticalAlignment="Center"/>
                                        </Grid>
                                    </Border>
                                </ControlTemplate>
                            </ToggleButton.Template>
                        </ToggleButton>
                        <ContentPresenter
                            Name="ContentSite"
                            IsHitTestVisible="False"
                            Content="{TemplateBinding SelectionBoxItem}"
                            ContentTemplate="{TemplateBinding SelectionBoxItemTemplate}"
                            ContentTemplateSelector="{TemplateBinding ItemTemplateSelector}"
                            Margin="3,3,23,3"
                            VerticalAlignment="Center"
                            HorizontalAlignment="Left"/>
                        <TextBox 
                            x:Name="PART_EditableTextBox"
                            Style="{x:Null}" 
                            HorizontalAlignment="Left" 
                            VerticalAlignment="Center"
                            Margin="3,3,23,3"
                            Focusable="True"
                            Background="Transparent"
                            Visibility="Hidden"
                            IsReadOnly="{TemplateBinding IsReadOnly}"/>
                        <Popup 
                            Name="Popup"
                            Placement="Bottom"
                            IsOpen="{TemplateBinding IsDropDownOpen}"
                            AllowsTransparency="True" 
                            Focusable="False"
                            PopupAnimation="Slide">
                            <Grid 
                                Name="DropDown"
                                SnapsToDevicePixels="True"
                                MinWidth="{TemplateBinding ActualWidth}"
                                MaxHeight="{TemplateBinding MaxDropDownHeight}">
                                <Border 
                                    x:Name="DropDownBorder"
                                    Background="{DynamicResource FGColor}" 
                                    BorderBrush="Gray" 
                                    BorderThickness="1"/>
                                <ScrollViewer Margin="4,6,4,6" SnapsToDevicePixels="True">
                                    <StackPanel IsItemsHost="True" KeyboardNavigation.DirectionalNavigation="Contained"/>
                                </ScrollViewer>
                            </Grid>
                        </Popup>
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger Property="HasItems" Value="false">
                            <Setter TargetName="DropDownBorder" Property="MinHeight" Value="95"/>
                        </Trigger>
                        <Trigger Property="IsEnabled" Value="false">
                            <Setter Property="Foreground" Value="Gray"/>
                        </Trigger>
                        <Trigger Property="IsGrouping" Value="true">
                            <Setter Property="ScrollViewer.CanContentScroll" Value="false"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End ComboBox Style-->

<!--ToggleSwitchStyle Style-->
    <Style x:Key="ToggleSwitchStyle" TargetType="CheckBox">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="CheckBox">
                    <StackPanel Orientation="Horizontal">
                        <TextBlock Text="{TemplateBinding Content}" VerticalAlignment="Center" Margin="8"/>
                        <Grid>
                            <Border Name="emad" Width="40"
                                    Height="20"
                                    Background="{DynamicResource Label}"
                                    CornerRadius="10"
                                    Margin="1"
                            />
                            <Border Name="ToggleSwitchButton"
                                    Width="12"
                                    Height="12"
                                    Background="Black"
                                    CornerRadius="50"
                                    Margin="5"
                                    HorizontalAlignment="Left"
                            />
                        </Grid>
                        <TextBlock>
                            <TextBlock.Style>
                                <Style TargetType="TextBlock">
                                    <Setter Property="Text" Value="Off"/>
                                    <Setter Property="Margin" Value="7"/>
                                    <Style.Triggers>
                                        <DataTrigger Binding="{Binding RelativeSource={RelativeSource TemplatedParent}, Path=IsChecked}" Value="True">
                                            <Setter Property="Text" Value="On"/>
                                        </DataTrigger>
                                    </Style.Triggers>
                                </Style>
                            </TextBlock.Style>
                        </TextBlock>
                    </StackPanel>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsChecked" Value="false">
                            <Trigger.ExitActions>
                                <RemoveStoryboard BeginStoryboardName="WPFToggleSwitchLeft" />
                                <BeginStoryboard x:Name="WPFToggleSwitchRight">
                                    <Storyboard>
                                        <ThicknessAnimation Storyboard.TargetProperty="Margin"
                                                Storyboard.TargetName="ToggleSwitchButton"
                                                Duration="0:0:0:0.10"
                                                From="0,0,0,0"
                                                To="22,0,0,0">
                                        </ThicknessAnimation>
                                    </Storyboard>
                                </BeginStoryboard>
                            </Trigger.ExitActions>
                            <Setter TargetName="ToggleSwitchButton" Property="Background" Value="{DynamicResource ToggleSwitchDisable}"/>
                            <Setter TargetName="emad" Property="BorderBrush" Value="{DynamicResource ToggleSwitchBorderBrush}"/>
                            <Setter TargetName="emad" Property="BorderThickness" Value="1"/>
                        </Trigger>
                        <Trigger Property="IsChecked" Value="true">
                            <Trigger.ExitActions>
                                <RemoveStoryboard BeginStoryboardName="WPFToggleSwitchRight" />
                                <BeginStoryboard x:Name="WPFToggleSwitchLeft">
                                    <Storyboard>
                                        <ThicknessAnimation Storyboard.TargetProperty="Margin"
                                                Storyboard.TargetName="ToggleSwitchButton"
                                                Duration="0:0:0:0.10"
                                                From="22,0,0,0"
                                                To="5,0,0,0">
                                        </ThicknessAnimation>
                                    </Storyboard>
                                </BeginStoryboard>
                            </Trigger.ExitActions>
                            <Setter TargetName="ToggleSwitchButton" Property="Background" Value="{DynamicResource ToggleSwitchEnable}"/>
                            <Setter TargetName="emad" Property="Background" Value="{DynamicResource highlight}"/>

                        </Trigger>
                        <Trigger Property="IsMouseOver" Value="True">
                            <Setter TargetName="ToggleSwitchButton" Property="Width" Value="13"/>
                            <Setter TargetName="ToggleSwitchButton" Property="Height" Value="13"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>

    </Style>
<!--End ToggleSwitchStyle Style-->
    <!--Theme styles colors-->
        <!--Light mode -->
                <ResourceDictionary x:Key="Light">
                        <SolidColorBrush x:Key="BGColor" Color="White"/>
                        <SolidColorBrush x:Key="FGColor" Color="WhiteSmoke"/>
                        <SolidColorBrush x:Key="BGButtonColor" Color="#1976d2" />
                        <SolidColorBrush x:Key="ButtonHighlightColor" Color="#FF6C76E0" />
                        <SolidColorBrush x:Key="FGButtonColor" Color="White" />
                        <SolidColorBrush x:Key="FGTextColor" Color="Black" />
                        <SolidColorBrush x:Key="DefaultTextColor" Color="Black"/>
                        <SolidColorBrush x:Key="DefaultTextColor2" Color="Black"/>
                        <SolidColorBrush x:Key="BorderBrush" Color="#FFB3B3B3"/>
                        <SolidColorBrush x:Key="ButtonBorder" Color="#525FE1"/>
                        <SolidColorBrush x:Key="Label" Color="LightBlue"/>
                        <SolidColorBrush x:Key="checkboxBG" Color="Transparent"/>
                        <SolidColorBrush x:Key="highlight" Color="#098fd4"/>
                        <SolidColorBrush x:Key="ToggleSwitchBG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchFG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchEnable" Color="white"/>
                        <SolidColorBrush x:Key="ToggleSwitchDisable" Color="black"/>
                        <SolidColorBrush x:Key="ToggleSwitchBorderBrush" Color="black"/>
                        <Color x:Key="CardLeft">#f0f0f0</Color>
                        <Color x:Key="Card2Right">#ffffff</Color>
                </ResourceDictionary>
        <!--Light mode -->
        <!--Dark mode-->
                <ResourceDictionary x:Key="Dark">
                        <SolidColorBrush x:Key="BGColor" Color="#2b2d31"/>
                        <SolidColorBrush x:Key="FGColor" Color="#3c3f44"/>
                        <SolidColorBrush x:Key="BGButtonColor" Color="#098fd4" />
                        <SolidColorBrush x:Key="FGButtonColor" Color="White" />
                        <SolidColorBrush x:Key="ButtonHighlightColor" Color="#066ca1" />
                        <SolidColorBrush x:Key="FGTextColor" Color="WhiteSmoke" />
                        <SolidColorBrush x:Key="DefaultTextColor" Color="White"/>
                        <SolidColorBrush x:Key="DefaultTextColor2" Color="#bbbbbb"/>
                        <SolidColorBrush x:Key="BorderBrush" Color="#2b2d31" />
                        <SolidColorBrush x:Key="ButtonBorder" Color="#1DB954"/>
                        <SolidColorBrush x:Key="Label" Color="#3f3f3f"/>
                        <SolidColorBrush x:Key="checkboxBG" Color="Transparent"/>
                        <SolidColorBrush x:Key="highlight" Color="#098fd4"/>
                        <SolidColorBrush x:Key="ToggleSwitchBG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchFG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchEnable" Color="white"/>
                        <SolidColorBrush x:Key="ToggleSwitchDisable" Color="#c9c9c7"/>
                        <SolidColorBrush x:Key="ToggleSwitchBorderBrush" Color="#c9c9c7"/>
                        <Color x:Key="CardLeft">#3c3f44</Color> 
                        <Color x:Key="Card2Right">#2b2d31</Color>
                </ResourceDictionary>
        <!--Dark mode -->
<!--End Theme styles colors-->

</Window.Resources>

<Grid>
    <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="Auto"/>
    </Grid.RowDefinitions>

    <!--Header Section-->
        <Grid>
            <Grid.ColumnDefinitions>
                <ColumnDefinition Width="Auto"/>
                <ColumnDefinition Width="*"/>
            </Grid.ColumnDefinitions>

                 <!--Menu-->
    <Menu Grid.Row="0" Grid.Column="0" Background="Transparent" BorderBrush="Transparent" HorizontalAlignment="Left" BorderThickness="0">
                                    
        <MenuItem IsEnabled="False" ToolTip="Emad Adel">
            <MenuItem.Icon>
                <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/logo.png" Width="70" Height="Auto" Margin="5,5,0,0"/>
            </MenuItem.Icon>
        </MenuItem>


        <MenuItem Header="{Binding management}" FontFamily="arial" FontSize="13"  Margin="10,0,0,0" BorderBrush="Transparent" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Left">
            <MenuItem.Icon>
                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
            </MenuItem.Icon>
            <MenuItem Name="sysinfo" Header="{Binding sysinfo}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="poweroption" Header="{Binding poweroptions}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="deviceManager" Header="{Binding devicemgr}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="services" Header="{Binding services}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="network" Header="{Binding networks}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="appsfeatures" Header="{Binding appsfeatures}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="taskmgr" Header="{Binding taskmgr}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="diskmgmt" Header="{Binding diskmgr}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
        </MenuItem>

        <MenuItem Header="{Binding preferences}" FontFamily="arial" FontSize="13"  BorderBrush="Transparent" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Left">
            <MenuItem.Icon>
                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" HorizontalAlignment="Center" VerticalAlignment="Center" Text=""/>
            </MenuItem.Icon>

            <MenuItem Name="restorepoint" InputGestureText="Shift+Q" Header="{Binding restorepoint}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="chocoloc" Header="{Binding chocoloc}" InputGestureText="Shift+P">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="save" InputGestureText="Shift+S" Header="{Binding saveapps}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="load" InputGestureText="Shift+D" Header="{Binding loadapps}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Header="{Binding theme}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
                <MenuItem Name="systheme" Header="{Binding defaultTheme}"/>
                <MenuItem Name="Dark" Header="{Binding Dark}"/>
                <MenuItem Name="Light" Header="{Binding Light}"/>
            </MenuItem>

            <MenuItem Header="{Binding music}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
                <MenuItem Name="moff" Header="{Binding off}" InputGestureText="Shift+N">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                </MenuItem>
                <MenuItem Name="mon" Header="{Binding on}" InputGestureText="Shift+F">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                </MenuItem>
            </MenuItem>

            <MenuItem Header="{Binding language}">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                    <MenuItem Name="ar" Header="عربي" />
                    <MenuItem Name="en" Header="English" />
                    <MenuItem Name="fr" Header="Français" />
                    <MenuItem Name="tr" Header="Türkçe" />
                    <MenuItem Name="zh" Header="中文" />
                    <MenuItem Name="ko" Header="한국어" />
                    <MenuItem Name="de" Header="Deutsch" />
                    <MenuItem Name="ru" Header="Русский" />
                    <MenuItem Name="es" Header="Español" />
            </MenuItem>


            <MenuItem Name="ittshortcut" Header="{Binding ittlink}" InputGestureText="Shift+I">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

             <MenuItem Name="reset" Header="{Binding reset}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
                </MenuItem.Icon>
            </MenuItem>



        </MenuItem>


        <MenuItem Header="{Binding thirdparty}" FontFamily="arial" FontSize="13"  BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Center">
            <MenuItem.Icon>
                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
            </MenuItem.Icon>


            <MenuItem Name="mas" Header="{Binding mas}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            <MenuItem Name="idm" Header="{Binding idm}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="winoffice" Header="{Binding winoffice}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>


            <MenuItem Header="{Binding extensions}">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
                
                <MenuItem Name="uBlock" Header="uBlock Origin"/>
                <MenuItem Name="unhook" Header="Unhook: Customize youtube"/>
                <MenuItem Name="neat" Header="Neat Download Manager"/>
            </MenuItem>

            <MenuItem Name="sordum" Header="Sordum tools">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="majorgeeks" Header="Major Geeks">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>

            <MenuItem Name="shelltube" Header="ShellTube">
                <MenuItem.Icon>
                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                </MenuItem.Icon>
            </MenuItem>
            
        </MenuItem>


        <MenuItem Name="dev" Header="{Binding about}" FontFamily="arial" FontSize="13"  BorderBrush="Transparent" BorderThickness="1" VerticalAlignment="Center" HorizontalAlignment="Center">
            <MenuItem.Icon>
                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
            </MenuItem.Icon>
        </MenuItem>


    </Menu>
<!--End Menu-->

            <Grid Grid.Column="1"  HorizontalAlignment="Right" Margin="0,0,20,0">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="Auto"/>
                    <ColumnDefinition Width="Auto"/>
            </Grid.ColumnDefinitions>
                    
                 <!--Catagory-->
  <ComboBox SelectedIndex="0" Name="category" Grid.Column="0" VerticalAlignment="Center" HorizontalAlignment="Left" Width="auto">
    <ComboBoxItem Content="{Binding all}"></ComboBoxItem>
    <ComboBoxItem Content="Web Browsers"></ComboBoxItem>
    <ComboBoxItem Content="Media"></ComboBoxItem>
    <ComboBoxItem Content="Media Tools"></ComboBoxItem>
    <ComboBoxItem Content="Documents"></ComboBoxItem>
    <ComboBoxItem Content="Compression"></ComboBoxItem>
    <ComboBoxItem Content="Communication"></ComboBoxItem>
    <ComboBoxItem Content="File Sharing"></ComboBoxItem>
    <ComboBoxItem Content="Imaging"></ComboBoxItem>
    <ComboBoxItem Content="Gaming"></ComboBoxItem>
    <ComboBoxItem Content="Utilities"></ComboBoxItem>
    <ComboBoxItem Content="Disk Tools"></ComboBoxItem>
    <ComboBoxItem Content="Development"></ComboBoxItem>
    <ComboBoxItem Content="Security"></ComboBoxItem>
    <ComboBoxItem Content="Portable"></ComboBoxItem>
    <ComboBoxItem Content="Runtimes"></ComboBoxItem>
    <ComboBoxItem Content="Drivers"></ComboBoxItem>
  </ComboBox>
<!--End Catagory-->

                <!--Search -->
<Grid HorizontalAlignment="Right" Grid.Column="1" VerticalAlignment="Center">
    <TextBox Padding="8"
            Width="100"
            VerticalAlignment="Center"
            HorizontalAlignment="Left"
            Style="{StaticResource SearchBox}"
            Name="searchInput" />
</Grid>
<!--End Search-->


            </Grid>
        </Grid>
    <!--Header Section-->

        <!--TabControl-->
    <TabControl Name="taps" TabStripPlacement="Left" Grid.Row="1"  BorderBrush="Transparent" Height="Auto" Width="Auto" Foreground="White" Background="Transparent">
            <TabItem Name="apps" Header="{Binding apps}" BorderBrush="{x:Null}" >
                <TabItem.HeaderTemplate>
                    <DataTemplate>
                        <StackPanel Orientation="Horizontal">
                            <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                            <TextBlock Text="{Binding}"  FontSize="15"  Margin="0,0,5,0"/>
                        </StackPanel>
                    </DataTemplate>
            </TabItem.HeaderTemplate>
                <TabItem.Content>
                    <ListView Name="appslist" Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" Width="Auto" Height="Auto" BorderBrush="{x:Null}" Background="{x:Null}" >
                        
        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mozilla Firefox" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A widelyused opensource web browser known for its speed privacy features and customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mozilla Firefox ESR" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A widelyused opensource web browser known for its speed privacy features and customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thorium SSE3" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser designed for smooth and secure browsing experiences"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thorium AVX" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser designed for smooth and secure browsing experiences"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Edge" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsofts web browser built for fast and secure internet surfing integrating seamlessly with Windows ecosystem"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Chrome" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular web browser known for its speed simplicity and vast ecosystem of extensions"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Chromium" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource web browser project that serves as the foundation for many browsers including Google Chrome"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Brave" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A privacyfocused web browser that blocks ads and trackers offering faster and safer browsing experiences"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Tor Browser" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser that prioritizes user privacy by routing internet traffic through a global network of servers enabling anonymous browsing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Opera" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Opera web browser makes the Web fast and fun giving you a better web browser experience on any computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Internet Download Manager" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular download manager tool that accelerates downloads and allows users to organize and schedule downloads efficiently"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="JDownloader" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="JDownloader is an internet download manager"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="KLite Mega Codec Full Pack" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Comprehensive collection of audio and video codecs filters and tools enabling playback of various media formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PotPlayer" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A multimedia player with a sleek interface and advanced features supporting a wide range of audio and video formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VLC" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A versatile media player capable of playing almost any multimedia file format with support for various streaming protocols"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kodi" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful opensource media center software that allows users to organize and stream their media collections"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Jellyfin Server" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource media server software that enables users to stream their media libraries across devices providing a selfhosted alternative to commercial services"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winamp" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A classic media player known for its customizable interface and extensive plugin support providing a nostalgic music playback experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Aimp" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and featurerich audio player with support for various audio formats and customizable interface themes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Spotify" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Spotify is a new way to listen to music"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FastStone Image Viewer" Tag="Imaging" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="FastStone Image Viewer is a fast stable userfriendly image browser converter and editor "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OpenOffice" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource office productivity suite offering word processing spreadsheet presentation and other office tools compatible with Microsoft Office formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FoxitReader" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and featurerich PDF reader with annotation form filling and document signing capabilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LibreOffice" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful opensource office suite providing word processing spreadsheet presentation and other office tools compatible with Microsoft Office formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SumatraPDF" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and fast PDF reader with minimalistic design and focus on simplicity and speed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WinRAR" Tag="Compression" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular file compression and archiving utility that supports various archive formats and offers advanced features such as encryption and selfextracting archives"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="7Zip" Tag="Compression" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource file archiver with a high compression ratio supporting various archive formats and providing a powerful commandline interface"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PeaZip" Tag="Compression" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text=" PeaZip is a free crossplatform file archiver"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Telegram Desktop" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A crossplatform messaging app with a focus on speed and security offering endtoend encryption and a wide range of features such as group chats file sharing and stickers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Signal" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fast simple secure Privacy that fits in your pocket"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Meta Messenger" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A messaging app that allows users to connect with friends and family through text messages voice calls and video calls offering various multimedia sharing features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Zoom" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A video conferencing app that facilitates online meetings webinars and virtual events allowing participants to interact through video audio and chat"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Teams" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A collaboration platform that combines workplace chat video meetings file storage and application integration enhancing teamwork and productivity within organizations"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Discord" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A VoIP application and digital distribution platform designed for creating communities and connecting gamers providing text voice and video communication features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TeamViewer" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote access and support software that enables users to remotely control computers transfer files and collaborate online facilitating remote work and IT support"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GIMP" Tag="Imaging" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource raster graphics editor used for image retouching and editing drawing and painting and converting between different image formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ Runtime - all versions" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft Visual C Redistributable installs runtime components of Visual C libraries These components are required to run C applications that are developed using Visual Studio and link dynamically to Visual C libraries"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="DirectX" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="DirectX is a collection of APIs for handling tasks related to games and videos"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2005 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2005 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2005 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2005 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2008 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2008 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2008 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2008 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2010 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2010 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2010 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2010 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2012 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2012 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2012 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2012 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2013 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 2013 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2013 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 2013 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2015-2022 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64bit applications developed with Microsoft Visual C 20152022 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2015-2022  (x86) Redistributable" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C 20152022 providing libraries DLLs and other resources"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Framework All Versions" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A comprehensive and consistent programming model for building applications that have visually stunning user experiences seamless and secure communication and the ability to model a range of business processes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AMD Ryzen Chipset Drivers" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Supports AMD Ryzen Threadripper PRO Processor AMD Ryzen 800070407000 Series Desktop  Mobile Processors AMD Ryzen 50003rd Gen2nd Gen Desktop  Threadripper Processors AMD Ryzen Desktop Processor with Radeon Graphics  Mobile Processor with Radeon Graphics 7thGen AMD ASeries Processors AMD X670EX670B650EB650B350A320X370X399B450X470X570B550A520A620TRX40TRX50WRX80WRX90 Chipsets"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVidia Display Driver" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The software component that allows the operating system and installed software to communicate with and control the NVIDIA graphics processing unit GPU"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVIDIA GeForce Experience" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A cloudbased gaming service provided by NVIDIA that allows users to play video games on supported devices via a remote gaming PC hosted on NVIDIAs servers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Msi Afterburner" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="MSI Afterburner is the ultimate graphics card utility codeveloped by MSI and RivaTuner teams"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVIDIA PhysX" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A physics processing unit PPU software development kit SDK offered by NVIDIA for realtime physics simulations in video games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Steam" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A digital distribution platform developed by Valve Corporation for purchasing and playing video games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ubisoft Connect" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A digital distribution digital rights management multiplayer and communications service developed by Ubisoft providing access to Ubisofts games rewards and social features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Origin" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Game store launcher"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rockstar Games Launcher" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Download and play the latest Rockstar Games PC titles"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GameSave Manager" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A utility tool that allows users to backup restore and transfer their game saves between different gaming platforms and directories"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StreamlabsOBS" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource streaming software built on top of OBS Studio with additional features tailored for streamers such as builtin alerts overlays and chat integration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OBS Studio" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource software for video recording and live streaming It offers high performance realtime videoaudio capturing and mixing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Logitech Gaming Software" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Logitech Gaming Software lets you customize Logitech G gaming mice keyboards headsets and select wheels"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Lively Wallpaper" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A software that allows users to set animated and interactive wallpapers on their Windows desktop providing various customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Playnite" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Open source video game library manager and launcher with support for 3rd party libraries like Steam GOG Origin Battlenet and Uplay"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Easy" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A driver update tool that automatically detects downloads and installs device drivers for the users computer hardware"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Graphics Windows DCH" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Graphics Driver for Windows 10"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Driver Support Assistant" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Driver  Support Assistant enables you to scan computing devices for the latest drivers available from Intel"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Network Adapter" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Network Adapter Drivers for Windows 10"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Snappy Driver Installer" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource tool for updating and installing device drivers on Windows offering offline driver updates and wide hardware support"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver booster" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Scans and identifies outdated drivers automatically and downloads and installs the right update for you with just ONE click"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Genius" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Professional driver management tool and hardware diagnostics"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Display Driver Uninstaller" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Utility to completely remove system drivers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Store Explorer" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Windows driver store utility"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="1Password" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A password manager that securely stores login credentials credit card information and other sensitive data in an encrypted vault accessible with a single master password"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AOMEI Partition Assistant Standard" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="AOMEI Partition Assistant Standard allows you to realize disk upgradereplacement partition style conversion OS migration and other disk managements without any difficulties"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AOMEI Backupper Standard" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A backup and recovery software that enables users to create system backups disk backups partition backups and file backups to protect data against system failures and data loss"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Recuva recover" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A data recovery software that helps users retrieve accidentally deleted files including photos documents videos and more from various storage devices such as hard drives USB drives and memory cards"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CCleaner" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system optimization privacy and cleaning tool that helps users remove unused files clean up temporary files and optimize their Windows PCs for better performance"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="BCUninstaller" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful uninstaller tool for Windows that allows users to remove unwanted programs plugins and Windows Store apps along with leftover files and registry entries"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Easy Context Menu" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="To install Easy Context Menu run the following command from the command line or from PowerShell"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HWiNFO" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A hardware information and diagnostic tool that provides detailed information about the hardware components of a computer system including sensors temperature voltage and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Speccy" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system information tool that provides detailed information about the hardware and operating system of a computer including CPU RAM motherboard graphics card and storage devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FurMark" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A graphics card stress testing and benchmarking utility that helps users test the stability cooling and performance of their GPU by rendering a highly intensive 3D graphics scene"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hard Disk Sentinel" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A hard disk monitoring and analysis software that helps users monitor the health performance and temperature of their hard drives SSDs and other storage devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CPU-Z" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system monitoring utility that provides detailed information about the CPU motherboard memory and other hardware components of a computer system"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mem Reduct" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Lightweight realtime memory management application to monitor and clean system memory on your computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HandBrake" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource video transcoder tool that converts video files from one format to another supporting a wide range of input and output formats"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rufus Portable" Tag="Portable" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A utility tool for creating bootable USB drives from ISO images helping users to install or run operating systems such as Windows Linux or other utilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ImgBurn" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Lightweight CD  DVD burning application "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Virtual CloneDrive" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free software that allows users to mount disc images as virtual drives enabling them to access the content of ISO BIN and CCD files without the need for physical discs"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ultra ISO" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful ISO image management tool that enables users to create edit extract and burn ISO files providing a comprehensive solution for managing disk image files"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ventoy" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource tool for creating bootable USB drives with multiple ISO files allowing users to boot various operating systems or utilities directly from a single USB drive"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="iVentoy" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="With iVentoy you can boot and install OS on multiple machines at the same time through the network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AutoHotkey" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A scripting language for automating repetitive tasks and creating macros on Windows allowing users to customize keyboard shortcuts remap keys and automate mouse actions"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rainmeter" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A customizable desktop customization tool that displays customizable skins widgets and applets on the Windows desktop providing users with realtime system monitoring and information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FxSound" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An audio enhancer software that improves the sound quality of music videos and games on Windows PCs by providing advanced audio processing and customization options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vysor" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A screen mirroring and remote control software that enables users to view and control Android devices from Windows PCs allowing for easy screen sharing app testing and troubleshooting"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unified Remote" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote control app that turns smartphones into universal remote controls for Windows macOS and Linux computers allowing users to control media playback presentations and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AnyDesk" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote desktop software that allows users to access and control Windows macOS Linux Android and iOS devices from anywhere providing secure and reliable remote access"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Airdroid" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="AirDroid is a free and fast Android device manager app that allows you to access Android phonetablet from computer remotely and securely Manage SMS files photos and videos WhatsApp Line WeChat and more on computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UltraViewer" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remote control to support your clients  partners from everywhere"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wireless Network Watcher Portable" Tag="Portable" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WifiInfoView" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="qBittorrent" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and opensource BitTorrent client for downloading and uploading files via the BitTorrent protocol providing users with a lightweight and featurerich torrenting experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Earth Pro" Tag="Imaging" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Google Earth Pro on desktop is free for users with advanced feature needs Import and export GIS data and go back in time with historical imagery"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="XAMPP" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="XAMPP is a free and opensource crossplatform web server solution stack package developed by Apache Friends consisting mainly of the Apache HTTP Server MariaDB database and interpreters for scripts written in the PHP and Perl programming languages"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Professional 2022" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Professional 2022 is an integrated development environment IDE from Microsoft It is used to develop computer programs websites web apps web services and mobile apps"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Community 2022" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Community 2022 is a free fullyfeatured and extensible IDE for individual developers open source projects academic research education and small professional teams"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unity Hub" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Unity is a crossplatform game creation system developed by Unity Technologies and used to develop video games for PC consoles mobile"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Godot Engine" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Godot is a featurepacked crossplatform game engine for creating 2D and 3D games It provides a comprehensive set of tools and features to develop games efficiently and quickly"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unity3D Engine" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Unity is a crossplatform game creation system developed by Unity Technologies and used to develop video games for PC consoles mobile"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Blender" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Blender is a free and opensource professionalgrade 3D computer graphics and video compositing program"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VSCode" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Code is a free sourcecode editor developed by Microsoft for Windows Linux and macOS It includes support for debugging embedded Git control syntax highlighting intelligent code completion snippets and code refactoring"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vim" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Vim is an advanced text editor that seeks to provide the power of the defacto Unix editor Vi with a more complete feature set Its us Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Sublime Text 4" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Sublime Text 4  The sophisticated text editor for code markup and prose "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Atom" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Atom is a text editor thats modern approachable yet hackable to the corea tool you can customize to do anything but also use productively without ever touching a config file"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="InnoSetup" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Inno Setup is a free installer for Windows programs First introduced in 1997 Inno Setup today rivals and even surpasses many commercial installers in feature set and stability"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PyCharm Community Edition" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="PyCharm Community Edition is a free and opensource IDE for Python development It provides smart code completion code inspections onthefly error highlighting and quickfixes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PyCharm Professional Edition" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="PyCharm Professional Edition is a powerful IDE for professional Python development It includes advanced features such as database tools web development support and scientific tools integration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Jetbrains Rider" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Rider is a crossplatform NET IDE developed by JetBrains It supports C VBNET F ASPNET JavaScript TypeScript HTML CSS and SQL languages and frameworks"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Node.js LTS" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nodejs is a JavaScript runtime built on Chromes V8 JavaScript engine LTS Long Term Support releases are supported for an extended period and provide stability for production environments"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Electrum-LTS" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Electrum is a lightweight Bitcoin wallet focused on speed and simplicity with support for hardware wallets and multisig functionality LTS Long Term Support releases provide stability and security updates for an extended period"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hugo" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hugo is one of the most popular opensource static site generators With its amazing speed and flexibility Hugo makes building websites f Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hugo Extended" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hugo is one of the most popular opensource static site generators With its amazing speed and flexibility Hugo makes building websites f Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Notepad++" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Notepad is a free source code editor and Notepad replacement that supports several languages It offers syntax highlighting code folding autocompletion and other features for efficient code editing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Terminal" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Windows Terminal is a modern terminal application for users of commandline tools and shells like Command Prompt PowerShell and Windows Subsystem for Linux WSL It provides multiple tabs custom themes and GPUaccelerated text rendering"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Powershell 7" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="PowerShell Core is a crossplatform Windows Linux and macOS automation and configuration toolframework that works well with your existing tools and is optimized for dealing with structured data eg JSON CSV XML etc REST APIs and object models"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x64dbg Portable" Tag="Portable" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An opensource x64x32 debugger for windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="dnSpy" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="dnSpy is a tool to reverse engineer NET assemblies It includes a decompiler a debugger and an assembly editor and more and can be easily extended by writing your own extension It uses dnlib to read and write assemblies so it can handle obfuscated assemblies eg malware without crashing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Cheat Engine" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Cheat Engine is an open source tool designed to help you modify single player games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Python 3.12.6" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Python is a popular highlevel programming language known for its simplicity and versatility It is used in various fields such as web development data science machine learning and automation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Git" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Git is a free and opensource distributed version control system designed to handle everything from small to very large projects with speed and efficiency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GitHub Desktop" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="GitHub Desktop is a seamless way to contribute to projects on GitHub and GitHub Enterprise It provides an intuitive interface for managing repositories branching committing and merging code changes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Docker Desktop" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Docker Desktop is an easytoinstall application for Windows and macOS that enables developers to build share and run containerized applications and microservices locally"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Docker Compose" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Docker Compose is a tool for defining and running multicontainer Docker applications It allows you to use a YAML file to configure your applications services networks and volumes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PowerToys" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity It includes tools like FancyZones for window management PowerRename for batch renaming files and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Notion" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The allinone workspace for your notes tasks wikis and databases"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FL Studio" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="FL Studio is a digital audio workstation DAW developed by ImageLine It allows you to compose arrange record edit mix and master professionalquality music"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Android Debug Bridge" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Android Debug Bridge ADB is a commandline tool that allows you to communicate with an Android device It is used for various debugging tasks such as installing and debugging apps"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Universal ADB Drivers" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Universal ADB Drivers are drivers that provide compatibility with a wide range of Android devices for debugging purposes They allow you to connect your Android device to a computer and use ADB commands"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Scrcpy" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Scrcpy is a free and opensource tool that allows you to display and control your Android device from a computer It provides highperformance screen mirroring and supports various input methods"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VirtualBox" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="VirtualBox is a crossplatform virtualization application It installs on existing Intel or AMDbased computers whether they are running Windows Mac Linux or Solaris operating systems It extends the capabilities of your existing computer so that it can run multiple operating systems inside multiple virtual machines at the same time"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Oh My Posh" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Oh my Posh is a custom prompt engine for any shell that has the ability to adjust the prompt string with a function or variable"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Malwarebytes" Tag="Security" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Multiple layers of malwarecrushing tech including virus protection Thorough malware and spyware removal Specialized ransomware protection"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Avast Free Antivirus" Tag="Security" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Avast Free Antivirus"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Nerd Fonts - CascadiaCode" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs icons"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Java SE Runtime Environment 8.0.411" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Java allows you to play online games chat with people around the world calculate your mortgage interest and view images in 3D just to name a few Its also integral to the intranet applications and other ebusiness solutions that are the foundation of corporate computing Please note you now need a Java License from Oracle to use unless installed for Personal Use and Development Use"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Audacity" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Audacity is free open source crossplatform software for recording and editing sounds"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MusicBee" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="MusicBee makes it easy to organize find and play music files on your computer on portable devices and on the web"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Format Factory" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="multifunctional media processing tools"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winaero Tweaker" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Customize the appearance and behavior of the Windows operating system"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Subsystem for Linux WSL2" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="To install Windows Subsystem for Linux 2 run the following command from the command line or from PowerShell"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wamp Server 3.3.5" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="WampServer is a Windows web development environment It allows you to create web applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MongoDB" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="MongoDB stores data using a flexible document data model that is similar to JSON Documents contain one or more fields including arrays binary data and subdocuments Fields can vary from document to document This flexibility allows development teams to evolve the data model rapidly as their application requirements change"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MPC-BE" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Media Player Classic  BE is a free and open source audio and video player for Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kdenlive" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful nonlinear video editor"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TablePlus" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Modern native and friendly GUI tool for relational databases MySQL PostgreSQL SQLite MongoDB Redis and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hosts File Editor" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hosts File Editor makes it easy to change your hosts file as well as archive multiple versions for easy retrieval"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Subtitle Edit" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="With SE you can easily adjust a subtitle if it is out of sync with the video in several different ways You can also use SE for making new subtitles from scratch do use the timelinewaveformspectrogram or translating subtitles"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Skype" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Skype  Install Skype add your friends as contacts then call video call and instant message with them for free Call people who arent on Skype too at really low rates"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FileZilla" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="FileZilla Client is a fast and reliable crossplatform FTP FTPS and SFTP client with lots of useful features and an intuitive graphical user interface"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Everything" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Everything Search Engine  locate files and folders by name instantly"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Yarn" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Yarn is a package manager for the npm and bower registries with a few specific focuses"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VMware Workstation Player" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="VMware Workstation Player is a streamlined desktop virtualization application that runs another operating system on the same computer without rebooting VMware Workstation Player provides a simple user interface unmatched operating system support and portability across the VMware ecosystem"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HDD Low Level Format Tool" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Will erase LowLevel Format and recertify a SATA IDE or SCSI hard disk drive with any size of up to 281 474 976 710 655 bytes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="BlueStacks" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Play Android Games on PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Wireless Bluetooth for Windows 10 and Windows 11" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Bluetooth for Windows 10 and Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Office 365 Business" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft 365 formerly Office 365 is a line of subscription services offered by Microsoft as part of the Microsoft Office product line The brand encompasses plans that allow use of the Microsoft Office software suite over the life of the subscription as well as cloudbased software as a service products for business environments such as hosted Exchange Server Skype for Business Server and SharePoint among others All Microsoft 365 plans include automatic updates to their respective software at no additional charge as opposed to conventional licenses for these programswhere new versions require purchase of a new license"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Bandicam" Tag="Imaging" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Bandicam is a closedsource screen capture and screen recording software originally developed by Bandisoft and later by Bandicam Company that can take screenshots or record screen changes Bandicam consists of three main modes One is the Screen Recording mode which can be used for recording a certain area on the PC screen"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="QQPlayer" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="QQPlayer media player"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="4K Video Downloader" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="4K Video Downloader allows downloading videos playlists channels and subtitles from YouTube Facebook Vimeo and other video sites in high quality"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Active@ Partition Recovery" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Active Partition Recovery is a freeware toolkit that helps to recover deleted and damaged logical drives and partitions within Windows WinPE recovery boot disk and Linux recovery LiveCD environments"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HiSuite" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="HUAWEI HiSuite is the official Android Smart Device Manager toolHiSuite helps users to connect their HUAWEI smartphones and tablets to PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Android Studio" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Android Studio is the official integrated development environment for Googles Android operating system built on JetBrains IntelliJ IDEA software and designed specifically for Android development"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LibreWolf" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="LibreWolf is designed to increase protection against tracking and fingerprinting techniques while also including a few security improvements This is achieved through our privacy and security oriented settings and patches LibreWolf also aims to remove all the telemetry data collection and annoyances as well as disabling antifreedom features like DRM"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flow Launcher" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dedicated to making your workflow flow more seamless Search everything from applications files bookmarks YouTube Twitter and more Flow will continue to evolve designed to be open and built with the community at heart"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="IconsExtract" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The IconsExtract utility scans the files and folders on your computer and extract the icons and cursors stored in EXE DLL OCX CPL and in other file types"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AdGuard Home" Tag="Security" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="AdGuard Home is a networkwide software for blocking ads and tracking After you set it up itll cover ALL your home devices and you dont need any clientside software for that"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Burp Suite Community Edition" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Burp Suite is an integrated platform for performing security testing of web applications Its various tools work seamlessly together to support the entire testing process from initial mapping and analysis of an applications attack surface through to finding and exploiting security vulnerabilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CoreTemp" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Core Temp is a compact no fuss small footprint yet powerful program to monitor processor temperature and other vital information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ShareX" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Screen capture file sharing and productivity tool"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ONLY OFFICE" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="ONLYOFFICE is a project developed by experienced IT experts from Ascensio System SIA leading IT company with headquarters in Riga Latvia Originally ONLYOFFICE was designed for internal team collaboration An attempt to introduce it to a wider audience proved to be successful ONLYOFFICE received very positive feedback from the Internet community As a result its functionality was considerably revised and expanded that brought about a high and stable growth of users from different countries"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ESET Internet Security" Tag="Security" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ideal for modern users concerned about their privacy who actively use internet for shopping banking work and communication"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WinDirStat" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="WinDirStat is a disk usage statistics viewer and cleanup tool for Microsoft Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winmerge" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="WinMerge is an Open Source differencing and merging tool for Windows WinMerge can compare both  folders and files presenting differences in a visual text format that is easy to understand and handle"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wireshark" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireshark is the worlds foremost and widelyused network protocol analyzer It lets you see whats happening on your network at a microscopic level and is the de facto and often de jure standard across many commercial and nonprofit enterprises government agencies and educational institutions Wireshark development thrives thanks to the volunteer contributions of networking experts around the globe and is the continuation of a project started by Gerald Combs in 1998"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TeraCopy" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="TeraCopy is designed to copy and move files at the maximum possible speed It skips bad files during the copying process and then displays them at the end of the transfer so that you can see which ones need attention TeraCopy can automatically check the copied files for errors by calculating their CRC checksum values It also provides a lot more information about the files being copied than its Windows counterpart TeraCopy integrates with Windows Explorers rightclick menu and can be set as the default copy handler"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="QuickLook" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Quick Look is among the few features I missed from Mac OS X It enables very quick preview of file by pressing Space key while highlighting it without opening its associated application Then I decide to add this feature to Windows by myself which results this QuickLook project"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="RepoZ" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="RepoZ provides a quick overview of the git repositories on your development machine including their current branch and a short status information It uses the repositories on your machine to create an efficient navigation widget and makes sure youll never loose track of your work along the way"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Graphics Command Center" Tag="Drivers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dont have time to mess around with settings The Intel Graphics Command Center easily finds and tunes your games complete with recommended settings for your computer Use oneclick optimization for many popular titles and instantly get the most out of your system Windows 10 version 1709 or higher6th Gen Intel Core Platforms or newer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Go Programming Language" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Go is expressive concise clean and efficient Its concurrency mechanisms make it easy to write programs that get the most out of multicore and networked machines while its novel type system enables flexible and modular program construction Go compiles quickly to machine code yet has the convenience of garbage collection and the power of runtime reflection Its a fast statically typed compiled language that feels like a dynamically typed interpreted language"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rust" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Rust is a curlybrace blockstructured expression language It visually resembles the C language family but differs significantly in syntactic and semantic details Its design is oriented toward concerns of programming in the large that is of creating and maintaining boundaries  both abstract and operational  that preserve largesystem integrity availability and concurrency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Inkscape" Tag="Imaging" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Inkscape is an opensource vector graphics editor similar to Adobe Illustrator Corel Draw Freehand or Xara X What sets Inkscape apart is its use of Scalable Vector Graphics SVG an open XMLbased W3C standard as the native format"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Youtube dl" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="outubedl is a small commandline program to download videos from YouTubecom and a few more sites It is written in Python and its not platform specific It should work in your Unix box in Windows or in Mac OS X It is released to the public domain which means you can modify it redistribute it or use it however you like"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Postman" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Postman helps you be more efficient while working with APIs Using Postman you can construct complex HTTP requests quickly organize them in collections and share them with your coworkers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Azure CLI" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Azure CLI is available across Azure services and is designed to get you working quickly with Azure with an emphasis on automation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GameMaker Studio" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="GameMaker Studio has everything you need for games development no matter what your level or expertise"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Charles" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Charles is an HTTP proxy  HTTP monitor  Reverse Proxy that enables a developer to view all of the HTTP and SSL  HTTPS traffic between their machine and the Internet This includes requests responses and the HTTP headers which contain the cookies and caching information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Media Player" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Media Player is designed to make listening to and watching your multimedia content more enjoyable At the heart of Media Player is a fullfeatured music library that allows you to quickly browse and play music as well as create and manage playlists All your content in the music and video folders on your PC will appear automatically in your library"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="espanso" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A crossplatform Text Expander written in Rust"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ability Office" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ability Office Standard offers 3 core applications essential for home and business Word Processor Spreadsheet and Presentation in one affordable office suite It also includes a Photoalbum and quick application Launcher Just perfect for working from home allowing files to be edited and exchanged with those back in the office and absolutely ideal for students and school children"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winbox" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Small utility that allows administration of MikroTik RouterOS using a fast and simple GUI"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SearchMyFiles" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="SearchMyFiles allows you to make a very accurate search that cannot be done with Windows search For Example You can search all files created in the last 10 minutes with size between 500 and 700 bytes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="iTunes" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="iTunes is the best way to organize and enjoy the music movies and TV shows you already have and shop for the ones you want to get Its home to Apple Music which gives you unlimited access to millions of songs curated playlists1 and Beats 1 radio hosted by Zane Lowe and a team of acclaimed DJs Enjoy all the entertainment iTunes has to offer on your Mac and PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StartIsBack++" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="StartIsBack returns Windows 10 and Windows 8 a real fully featured start menu and start button behaving exactly like the ones in Windows 7"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Advanced SystemCare Free" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Over time your computer may accumulate with large quantities of useless temporary and duplicate files Advanced SystemCare 12 will help clean up these junk files and free up your disk space Also you can use our advanced tools to make registry clean for better use"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Send Anywhere" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Send Anywhere is a multiplatform file sharing service where users can directly share digital content in real time"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="YUMI Legacy" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="YUMI UEFI" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OP Auto Clicker" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A fullfledged autoclicker with two modes of autoclicking at your dynamic cursor location or at a prespecified location The maximum amounts of clicked can also be set or left as infinite Hotkeys work in the background for convenience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Spotube" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Spotube is a Flutter based lightweight spotify client It utilizes the power of Spotify  Youtubes public API  creates a hazardless performant  resource friendly User Experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Audio Switcher" Tag="Media" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Easily switch the default audio device input or output on any Windows PC Vista and above Using this application you can switch output OR input sound devices at the click of a button or the press of a key I designed this application to be incredibly small and lightweight There is no bloat it does exactly what it should nothing more nothing less"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Teams Classic Desktop" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft Teams is a messaging app for teams where all conversations meetings files and notes can be accessed by everyone all in one place Its a place for collaboration and work to happen in the open"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Windows SDK" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Windows 10 SDK for Windows 10 version 1809 provides the latest headers libraries metadata and tools for building Windows 10 apps NoteWindows 10 development targeting Windows 10 version 1903 or later requires Visual Studio 2017 or later This SDK will not be discovered by previous versions of Visual Studio"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="RunAsDate Portable" Tag="Portable" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="RunAsDate is a small utility that allows you to run a program in the date and time that you specify This utility doesnt change the current system date and time of your computer but it only injects the datetime that you specify into the desired application"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio 2017 Build " Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="These Build Tools allow you to build native and managed MSBuildbased applications without requiring the Visual Studio IDE There are options to install the Visual C compilers and libraries MFC ATL and CCLI support"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MSEdgeRedirect" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="This tool filters and passes the command line arguments of Microsoft Edge processes into your default browser instead of hooking into the microsoftedge handler this should provide resiliency against future changes Additionally an Image File Execution Options mode is available to operate similarly to the Old EdgeDeflector Additional modes are planned for future versions"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 5" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 3" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 6" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 7" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 8" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Viber" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Viber is a mobile application that lets you make free phone calls and send text messages to anyone who also has the application installed You can call or text any Viber user anywhere in the world for free"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StartAllBack" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Introducing  StartAllBack Windows 11 from a better timeline Embrace enhance unsweep classic UI from under the rug"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="DiskGenius Free" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="With powerful capabilities and userfriendly interface DiskGenius Free Edition provides a robust solution for individuals and organizations to seek efficient disk management"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UNFORMAT" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="UNFORMAT is a software utility created to solve almost all data loss scenarios due to logical failure It can recover deleted files on a disk or restore deleted or damaged partitions and volumes As well as recovers data after using the FORMAT command"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Active@ UNDELETE" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Active UNDELETE helps you to recover deleted files and restore deleted partitions from a variety of file systems such as FAT NTFS NTFS  EFS MacOS HFS ApFS Linux ext2 ext3 ext4 ZFS Unix UFS Advanced scan algorithms help to restore files even from severely damaged disks Sophisticated userfriendly UI makes navigation through your data a breeze"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HxD Hex Editor" Tag="Disk Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="HxD is a carefully designed and fast hex editor which additionally to raw disk editing and modifying of main memory RAM handles files of any size"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Epic Games Launcher" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Epic Games Launcher is how you obtain the Unreal Game Engine modding tools and other Epic Games like Fortnite and the new Epic Games Store"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vivaldi" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The new Vivaldi browser protects you from trackers blocks unwanted ads and puts you in control with unique builtin features Get Vivaldi and browse fast"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft PC Manager" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft PC manager a good way to protect your personal computer and optimize performance provides PC cleanup antivirus and Windows update making your computer safe and secure"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Openshot" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="OpenShot Video Editor is an awardwinning opensource video editor available on Linux Mac and Windows OpenShot can create stunning videos films and animations with an easytouse interface and rich set of features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WhatsApp" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="WhatsApp Messenger or simply WhatsApp is an American freeware crossplatform centralized messaging and voiceoverIP VoIP service owned by Facebook Inc It allows users to send text messages and voice messages make voice and video calls and share images documents user locations and other content"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Paint.NET" Tag="Imaging" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="PaintNET is image and photo editing software for PCs that run Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Stretchly" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="stretchly is a crossplatform electron app that reminds you to take breaks when working on your computer By default it runs in your tray and displays a reminder window containing an idea for a microbreak for 20 seconds every 10 minutes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Silverlight" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Silverlight is a powerful development tool for creating engaging interactive user experiences for Web and mobile applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TreeSize" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Every hard disk is too small if you just wait long enough TreeSize Free tells you where precious disk space has gone"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dot Net 3.5" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET is a free crossplatform opensource developer platform for building many different types of applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flash Player ActiveX" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Adobe Flash Player is freeware software for viewing multimedia executing Rich Internet Applications and streaming video and audio content created on the Adobe Flash platform"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Drive" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Google Drive  All your files  everywhere Safely store your files and access them from any device Choose folders on your computer to sync with Google Drive or backup to Google Photos and access all of your content directly from your PC or Mac"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dot Net 4.5.2" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Microsoft NET Framework 452 is a highly compatible inplace update to the Microsoft NET Framework 4 Microsoft NET Framework 45 and Microsoft NET Framework 451"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dropbox" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Organize all your teams content tune out distractions and get everyone coordinated with the worlds first smart workspace"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="cURL" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Command line tool and library for transferring data with URLs"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PDF Creator" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="PDFCreator lets you convert any printable document to PDF"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Autoruns" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="This utility shows you what programs are configured to run during system bootup or login"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft OneDrive" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Save your files and photos to OneDrive and access them from any device anywhere"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Process Explorer" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Process Explorer shows you information about which handles and DLLs processes have opened or loaded"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FFmpeg" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="FFmpeg is a widelyused crossplatform multimedia framework which can process almost all common and many uncommon media formats It has over 1000 internal components to capture decode encode modify combine stream media and it can make use of dozens of external libraries to provide more capabilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OpenVPN Connect" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The official OpenVPN Connect client software developed and maintained by OpenVPN Inc"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Git Large File Storage" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Git Large File Storage LFS replaces large files such as audio samples videos datasets and graphics with text pointers inside Git while storing the file contents on a remote server like GitHubcom or GitHub Enterprise"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Nmap" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nmap Network Mapper is a free and open source utility for network discovery and security auditing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UltraVNC" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="UltraVNC is an open source application that uses the VNC protocol to control another computer remotely over a network connection UltraVNC allows the use of a remote computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Plex" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Plex is a global streaming media service and a clientserver media player platform made by Plex Inc"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Plex Media Server" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Plex Media Server helps you organise your media and stream it to your devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visio Viewer" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="By using Microsoft Visio 2016 Viewer Visio users can freely distribute Visio drawings files with a vsdx vsdm vsd vdx vdw vstx vstm vst or vtx extension to team members partners customers or others even if the recipients do not have Visio installed on their computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Key''n''Stroke" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="KeynStroke makes it easy for your audience to follow your actions on the screen"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ability Office" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ability Office 8 Standard complete office suite"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fing" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fing App is a free network scanner that makes you discover all connected devices run internet speed tests and help troubleshoot network and device issues Get Fingbox for more advanced security and protection for your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ryujinx" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ryujinx is an opensource Nintendo Switch emulator created by gdkchan and written in C This emulator aims at providing excellent accuracy and performance a userfriendly interface and consistent builds"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Omnify Hotspot" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The best virtual router to turn your PC into a WiFi hotspot  repeater WiFi hotspot allows you to create a wireless access point and share your internet Its easy to use and quick to start as you only need to give it a name and password and then connect your smartphone tablet media player ereader printer laptop and other wireless devices The network name can also include Unicode characters and Emojis"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MKVToolNix" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="MKVToolNix is a set of tools to create alter and inspect Matroska files under Linux other Unices and Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Neat Download Manager" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Neat Download Manager is a free Internet Download Manager for Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x630ce for all games" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator allows your controller gamepad joystick steering wheel pedals etc to function on your PC as an Xbox 360 controller It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like Grand Theft Auto or Saints Row  Digitally Signed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x630ce x86" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator allows your controller gamepad joystick steering wheel pedals etc to function on your PC as an Xbox 360 controller It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like Grand Theft Auto or Saints Row  Digitally Signed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x630ce x64" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator allows your controller gamepad joystick steering wheel pedals etc to function on your PC as an Xbox 360 controller It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like Grand Theft Auto or Saints Row  Digitally Signed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft .NET SDK 7" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET is a free crossplatform opensource developer platform for building many different types of applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft .NET SDK 8" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET is a free crossplatform opensource developer platform for building many different types of applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft ASP.NET Core Runtime 7.0" Tag="Runtimes" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET is a free crossplatform opensource developer platform for building many different types of applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HFS HTTP File Server" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="You can use HFS HTTP File Server to send and receive files Its different from classic file sharing because it uses web technology to be more compatible with todays Internet It also differs from classic web servers because its very easy to use and runs right outofthe box"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Cemu" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Cemu is a highly experimental software to emulate Wii U applications on PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Chatterino" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Chatterino is a chat client for Twitch chat that offers a clean and customizable interface for a better streaming experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clementine" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clementine is a modern music player and library organizer supporting various audio formats and online radio services"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clink" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clink is a powerful Bashcompatible commandline interface CLIenhancement for Windows adding features like syntax highlighting and improved history"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CMake" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="CMake is an opensource crossplatform family of tools designed to build test and package software"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CopyQ Clipboard Manager" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="CopyQ is a clipboard manager with advanced features allowing you to store edit and retrieve clipboard history"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Crystal Disk Info" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Crystal Disk Info is a disk health monitoring tool that provides information about the status and performance of hard drives It helps users anticipate potential issues and monitor drive health"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Crystal Disk Mark" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Crystal Disk Mark is a disk benchmarking tool that measures the read and write speeds of storage devices It helps users assess the performance of their hard drives and SSDs"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Darktable" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Opensource photo editing tool offering an intuitive interface advanced editing capabilities and a nondestructive workflow for seamless image enhancement"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="EA App" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="EA App is a platform for accessing and playing Electronic Arts games"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Falkon" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Falkon is a lightweight and fast web browser with a focus on user privacy and efficiency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="File Converter" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="File Converter is a very simple tool which allows you to convert and compress one or several files using the context menu in windows explorer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Files" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Alternative file explorer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flameshot" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Flameshot is a powerful yet simple to use screenshot software offering annotation and editing features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Lightshot" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ligthshot is an Easytouse lightweight screenshot software tool where you can optionally edit your screenshots using different tools share them via Internet andor save to disk and customize the available options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="F.lux" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="flux adjusts the color temperature of your screen to reduce eye strain during nighttime use"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GitHub CLI" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="GitHub CLI is a commandline tool that simplifies working with GitHub directly from the terminal"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GOG Galaxy" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="GOG Galaxy is a gaming client that offers DRMfree games additional content and more"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Greenshot" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Greenshot is a lightweight screenshot software tool with builtin image editor and customizable capture options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hexchat" Tag="Communication" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="HexChat is a free opensource IRC Internet Relay Chat client with a graphical interface for easy communication"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HWMonitor" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="HWMonitor is a hardware monitoring program that reads PC systems main health sensors"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ImageGlass" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="ImageGlass is a versatile image viewer with support for various image formats and a focus on simplicity and speed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Itch.io" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Itchio is a digital distribution platform for indie games and creative projects"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="KDE Connect" Tag="File Sharing" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="KDE Connect allows seamless integration between your KDE desktop and mobile devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="KeePassXC" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="KeePassXC is a crossplatform opensource password manager with strong encryption features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Lazygit" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Simple terminal UI for git commands"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LocalSend" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open source crossplatform alternative to AirDrop"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fork" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fork  a fast and friendly git client"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PulsarEdit" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A Communityled HyperHackable Text Editor"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Shotcut" Tag="Media Tools" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Shotcut is a free open source crossplatform video editor"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PaleMoon" Tag="Web Browsers" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Pale Moon is an Open Source Goannabased web browser available for Microsoft Windows and Linux with other operating systems in development focusing on efficiency and ease of use"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="JoyToKey" Tag="Gaming" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="enables PC game controllers to emulate the keyboard and mouse input"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Auto Dark Mode" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Automatically switches between the dark and light theme of Windows 10 and Windows 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Firewall Control" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Windows Firewall Control is a powerful tool which extends the functionality of Windows Firewall and provides new extra features which makes Windows Firewall better"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TightVNC" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="TightVNC is a free and Open Source remote desktop software that lets you access and control a computer over the network With its intuitive interface you can interact with the remote screen as if you were sitting in front of it You can open files launch applications and perform other actions on the remote desktop almost as if you were physically there"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Python Version Manager" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="pyenv for Windows is a simple python version management tool It lets you easily switch between multiple versions of Python"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Pixi" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Pixi is a fast software package manager built on top of the existing conda ecosystem Spins up development environments quickly on Windows macOS and Linux Pixi supports Python R CC Rust Ruby and many other languages"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VSCodium" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="VSCodium is a communitydriven freelylicensed binary distribution of Microsofts VS Code"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thonny Python IDE" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Python IDE for beginners"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Poedit" Tag="Development" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Poedit translations editor The best way to translate apps and sites"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Adobe Acrobat Reader" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Adobe Acrobat Reader DC software is the free trusted global standard for viewing printing signing sharing and annotating PDFs Its the only PDF viewer that can open and interact"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flash Player Plugin" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Adobe Flash Player is freeware software for viewing multimedia executing Rich Internet Applications and streaming video and audio content created on the Adobe Flash platform"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Sysinternals" Tag="Documents" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Sysinternals Troubleshooting Utilities have been rolled up into a single suite of tools"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SelfishNet" Tag="Utilities" IsChecked="false"   ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Control your internet bandwidth with SelfishNet V3 ARP Spoofing application"/>
        </StackPanel>

                    </ListView>
                </TabItem.Content>
            </TabItem>
            <TabItem x:Name="tweeksTab" Header="{Binding tweaks}" BorderBrush="{x:Null}" Background="{x:Null}">
                <TabItem.HeaderTemplate>
                        <DataTemplate>
                            <StackPanel Orientation="Horizontal">
                                <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                <TextBlock Text="{Binding}"  FontSize="15"  Margin="0,0,5,0"/>
                            </StackPanel>
                        </DataTemplate>
                </TabItem.HeaderTemplate>
                    <ListView Name="tweakslist"  Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" Width="Auto" Height="Auto" BorderBrush="{x:Null}" Background="{x:Null}">
                        
        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disk cleanup"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Cleanup"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clean temporary files that are not necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="System File Checker"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="sfc scannow Use the System File Checker tool to repair missing or corrupted system files"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clear Start Menu Windows 10/11"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clear all pinned apps from the start menu"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clean Taskbar"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable the News and interests and People icon Show Search icon only for Windows 1011"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Windows 10/11 Bloatware"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="BingNews GetHelp Getstarted Messaging Microsoft3DViewer MicrosoftOfficeHub MicrosoftSolitaireCollection News OfficeLens OfficeOneNote OfficeSway OneConnect People Print3D RemoteDesktop SkypeApp StorePurchaseApp OfficeTodoList Whiteboard WindowsAlarms WindowsCamera windowscommunicationsapps WindowsFeedbackHub WindowsMaps WindowsSoundRecorder XboxTCUI XboxApp XboxGameOverlay XboxIdentityProvider XboxSpeechToTextOverlay ZuneMusic ZuneVideo WindowsCortana MSPaint Clipchamp"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore All Windows Services to Default"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you face a problem with some system services you can restore all services to Default"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fix Stutter in Games"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fix Stutter in Games Disable GameBarPresenceWriter for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable the Ultimate Performance Power Plan"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Enable the Ultimate Performance Power Plan"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Reset the TCP/IP Stack"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you have an internet problem Reset network configuration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Setup Auto login"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Setup auto login Windows username"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable  Xbox Services"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables all Xbox Services Game Mode and Optimizations for Windowed Games and fix stutter playing smooth"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Start Menu Ads"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Start menu Ads and Settings"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Windows Web Search"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable web search in Windows by Modify the registry settings related to Windows Search for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Turn off background Apps"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Turn off background apps for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable suggestions on Start Menu"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables suggestions on start menu for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Folder Shortcuts From File Explorer"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remove Documents Videos Pictures Desktop Shortcuts from File Explorer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Optimize Windows Services"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Print Spooler Fax Diagnostic Policy Downloaded Maps Manager Windows Error Reporting Service Remote Registry  Internet Connection Sharing Disables Telemetry and Data "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Hibernate"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hibernate is a powersaving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable OneDrive"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disabling OneDrive for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Activate Windows Old Photo Viewer"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="This tweak enables the classic Windows Photo Viewer for Windows 10"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore Classic Context Menu Windows 11"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Restore the old context menu for Windows 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Copilot in Windows 11"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop Copilot in Windows appears as a side bar docked on the Windows desktop and is designed to help users get things done in Windows Copilot in Windows can perform common tasks in Windows like changing Windows settings which makes it different from the browserbased Copilot in Edge"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Recall Snapshots in Windows 11 24H"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Recall is an upcoming preview experience exclusive to Copilot PCs that will help you easily find and remember things youve seen using natural language"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Delete Thumbnail Cache"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="removing the stored image thumbnails on your computer These thumbnails are small versions of images used by the operating system to display image previews quickly Over time the cache can become large or corrupted causing slowdowns or display issues Deleting it can free up space and resolve such issues as the system will regenerate"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Old Volume Control in Windows 10"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The old volume control in Windows 10 refers to the classic audio mixer interface that was used in earlier versions of Windows before the modern volume control system was introduced This interface allowed users to adjust the volume for individual applications separately providing a more detailed and flexible approach to managing audio levels"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Toggle Key Sounds"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Toggle key sounds in Windows are audio cues that play when you press the Caps Lock Num Lock or Scroll Lock keys These sounds help users identify when these keys are activated or deactivated"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Homegroup"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables HomeGroup  HomeGroup is a passwordprotected home networking service that lets you share your stuff with other PCs that are currently running and connected to your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Home and Gallery from explorer"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Removes the Home and Gallery from explorer and sets This PC as default"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable all Privacy Settings"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable WifiSense  Activity History  ActivityFeed Telemetry  DataCollection"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Autoplay and Autorun"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disabling autoplay in Windows prevents the automatic launch of media or applications when a removable device such as a USB drive or CD is connected to the computer Autoplay is a feature that by default prompts the user to choose an action whenever a new media device is inserted such as playing a video or opening a file"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable SMB Server"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="SMB Server enables file and printer sharing over a network allowing access to resources on remote computers as if they were local"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Set current network profile to public"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Deny file sharing device discovery etc"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable F8 boot menu options"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Enable F8 boot menu options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable display and sleep mode timeouts"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you use your device frequently disable this"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Set Wallpaper desktop Quality to 100%"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Personalization"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Its Microsoft what should I say"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Windows Transparency"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Windows transparency has a significant impact on performance disable it if you want performance"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable scheduled defragmentation task"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Defragmentation in Windows optimizes disk performance by reorganizing fragmented data improving access times and system efficiency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable NET 3.5"     ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content=""/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Some old games and applications require NET Framework 35"/>
        </StackPanel>

                    </ListView>
            </TabItem>
            <TabItem x:Name="SettingsTab" Header="{Binding settings}" BorderBrush="{x:Null}" Background="{x:Null}">
                <TabItem.HeaderTemplate>
                        <DataTemplate>
                            <StackPanel Orientation="Horizontal">
                                <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                <TextBlock Text="{Binding}"  FontSize="15" Margin="0,0,5,0"/>
                            </StackPanel>
                        </DataTemplate>
                </TabItem.HeaderTemplate>
                    <ListView Name="SettingsList"  Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" Width="Auto" Height="Auto" BorderBrush="{x:Null}" Background="{x:Null}">
                        
        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Show file extensions" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleShowExt" ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show file extensions in Windows displays the suffix at the end of file names like txt jpg exe indicating file types and helping users identify which programs can open them simplifying file management and differentiation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Show Super Hidden" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleShowHidden" ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show Super Hidden displays files and folders in Windows that are hidden beyond standard hidden files often system files to prevent accidental changes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dark Mode" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleDarkMode" ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Personalize"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dark Mode is a setting that changes the screen to darker colors reducing eye strain and saving battery life on OLED screens"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NumLook" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleNumLook" ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Toggle the Num Lock key state when your computer starts"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Sticky Keys" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleStickyKeys" ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Accessibility"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Sticky keys is an accessibility feature of some graphical user interfaces which assists users who have physical disabilities or help users reduce repetitive strain injury"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mouse Acceleration" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="MouseAcceleration" ToolTip="Install it again to update" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Accessibility"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Cursor movement is affected by the speed of your physical mouse movements"/>
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
          FontSize="15" 
          HorizontalAlignment="Right"
          VerticalAlignment="Bottom"
          Width="100" Height="40" Margin="20">
          <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" VerticalAlignment="Center">
              <TextBlock Name="applyText" Text="{Binding applyBtn}" Foreground="White" Margin="10,0,0,0" VerticalAlignment="Center"/>
              <TextBlock Name="applyIcon" Text=" &#xE930;" Foreground="White" FontFamily="Segoe MDL2 Assets" FontSize="15" VerticalAlignment="Center"/>
          </StackPanel>
        </Button>
    <!--End applyBtn Button-->
    <!--Install Button-->
      <Button
        Name="installBtn"
        FontSize="15"
        HorizontalAlignment="Right"
        VerticalAlignment="Bottom"
        Width="100" Height="40" Margin="20">
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" VerticalAlignment="Center">
            <TextBlock Name="installText" Text="{Binding installBtn}" Foreground="White" Margin="10,0,0,0" VerticalAlignment="Center"/>
            <TextBlock Name="installIcon" Text=" &#xE930;" Foreground="White" FontFamily="Segoe MDL2 Assets" FontSize="15" VerticalAlignment="Center"/>
        </StackPanel>
      </Button>
    <!--End Install Button-->
  </Grid>
  <!--Quotes-->
    <StackPanel Orientation="Horizontal" Grid.Row="3">
    <TextBlock Name="quotes"
      HorizontalAlignment="Left"
      VerticalAlignment="Center" 
      TextWrapping="Wrap"
      Padding="8"
      FontSize="13"
      Text="#StandWithPalestine"
      FontWeight="SemiBold"
      FlowDirection="LeftToRight"
      Width="700"
      />
    </StackPanel>
  <!--End Quotes-->
<!--End Footer Section-->

</Grid>
</Window>
<!--End Main Window-->


'
#===========================================================================
#endregion End WPF Main Window
#===========================================================================
#===========================================================================
#region Begin WPF About Window
#===========================================================================

$childXaml = '<Window
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Name="Window" Title="About | ITT " WindowStartupLocation = "CenterScreen" 
  Background="{DynamicResource BGColor}"
  WindowStyle="ToolWindow"
  Height="488" Width="350" ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/icon.ico">

    <Grid>
      <Grid.RowDefinitions>
        <RowDefinition Height="auto"/>
        <RowDefinition Height="auto"/>
        <RowDefinition Height="auto"/>
        <RowDefinition Height="*"/>
      </Grid.RowDefinitions>

      <StackPanel Margin="2">

        <!--Header -->
          <Grid Grid.Row="0" HorizontalAlignment="Stretch" VerticalAlignment="Stretch">
            <StackPanel Orientation="Vertical">
              <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/logo.png" Height="130" Width="Auto"/>
              
              <TextBlock Text="Made with ♥ by Emad Adel" 
                Foreground="{DynamicResource DefaultTextColor2}"
                VerticalAlignment="Center" 
                HorizontalAlignment="Center"
                FontSize="15"
                Margin="0,0,0,0"
              />

              <TextBlock Text="{Binding lastupdate}" 
              x:Name="ver"
              Foreground="{DynamicResource DefaultTextColor2}"
              VerticalAlignment="Center" 
              HorizontalAlignment="Center"
              Margin="0,0,0,0"/>
              
            </StackPanel>
          </Grid>
        <!--Header -->

        <!-- Contributors -->
          <Grid Grid.Row="1" HorizontalAlignment="Stretch" VerticalAlignment="Stretch">


              <ScrollViewer VerticalScrollBarVisibility="Auto" Height="150">

                
              <StackPanel x:Name="names" Orientation="Vertical" Margin="15,0,0,0">

                <TextBlock Text="Contributors"
                VerticalAlignment="Center"
                HorizontalAlignment="Left"
                FontSize="15"
                FontWeight="SemiBold" 
                Margin="0,10,0,10"
                Foreground=''{DynamicResource DefaultTextColor2}'' />


                <TextBlock Text=''emadadel4'' Margin=''1'' Foreground=''{DynamicResource DefaultTextColor2}'' />
<TextBlock Text=''yousefmhmd'' Margin=''1'' Foreground=''{DynamicResource DefaultTextColor2}'' />

              </StackPanel>



            </ScrollViewer>
          </Grid>
        <!--End Contributors -->

        <!--Footer -->
          <Grid Grid.Row="2" HorizontalAlignment="Stretch" VerticalAlignment="Stretch"  Margin="0,0,0,10">

            <StackPanel Orientation="Horizontal" VerticalAlignment="Bottom" HorizontalAlignment="Center">
              <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/telegram.png" 
              Name="telegram"
              VerticalAlignment="Bottom" 
              HorizontalAlignment="Center" 
              Margin="10" 
              Height="30"
              Cursor="Hand"
              Width="Auto"/>

              <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/youtube.png"
              Name="yt"
              Margin="10"
              Height="30"
              VerticalAlignment="Bottom"
              HorizontalAlignment="Center"
              Cursor="Hand"
              Width="Auto"/>

              <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/github.png" 
              Name="github"
              Margin="10"
              Height="30" 
              VerticalAlignment="Bottom"
              HorizontalAlignment="Center"
              Cursor="Hand"
              Width="Auto"/>

              <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/blog.png" 
              Name="blog"
              Margin="10" 
              Height="30" 
              VerticalAlignment="Bottom"
              HorizontalAlignment="Center"
              Cursor="Hand"
              Width="Auto"/>


            </StackPanel>
          </Grid>
        <!--End Footer -->

        <Grid Grid.Row="3">
          <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/coffee.png" Cursor="Hand" Name="coffee" Height="50" Width="Auto"/>
        </Grid>

    </StackPanel>

    </Grid>
  </Window>

'
#===========================================================================
#endregion End WPF About Window
#===========================================================================
#===========================================================================
#region Begin WPF Event Window
#===========================================================================

$EventXaml = '<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" Title="ITT | Event" 
    WindowStartupLocation = "CenterScreen" 
    Background="Transparent"
    WindowStyle="None"
    AllowsTransparency="True"
    Height="600" Width="486"
    ShowInTaskbar = "False"
    Topmost="True"
    Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/icon.ico">

    <Window.Resources>
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
    </Window.Resources>

    <Window.Triggers>
        <EventTrigger RoutedEvent="Window.Loaded">
            <BeginStoryboard>
                <Storyboard>
                    <DoubleAnimation Storyboard.TargetProperty="Opacity" From="0" To="1" Duration="0:0:0.5"/>
                </Storyboard>
            </BeginStoryboard>
        </EventTrigger>
    </Window.Triggers>

    

    <Border Background="{DynamicResource BGColor}" BorderBrush="{DynamicResource FGColor}" BorderThickness="4" CornerRadius="10">

            <Grid>
                <Grid.RowDefinitions>
                    <RowDefinition Height="Auto"/>
                    <RowDefinition Height="Auto"/>
                    <RowDefinition Height="Auto"/>
                </Grid.RowDefinitions>

                <StackPanel x:Name="MainStackPanel" Height="Auto" Orientation="Vertical" Margin="8">
                    
                    <!-- Title -->
                        <Grid Row="0" Background="Transparent">
                            
                            <TextBlock Text="&#10006;" 
                            Name="closebtn"
                            HorizontalAlignment="Right" 
                            VerticalAlignment="Top"
                            Margin="8"
                            Cursor="Hand"
                            Foreground="red" />


                            <StackPanel Orientation="Vertical" Margin="10">

                                <TextBlock 
                                Name="title"
                                Height="Auto"
                                Width="Auto"
                                FontSize="20"
                                Text="What''s New"
                                Foreground="{DynamicResource DefaultTextColor}"
                                FontWeight="SemiBold"
                                TextWrapping="Wrap"
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left" />
            
                                <TextBlock
                                Name="date" 
                                Height="Auto"
                                Width="Auto"
                                Text="8/29/2024"
                                Foreground="{DynamicResource DefaultTextColor2}"
                                TextWrapping="Wrap"
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left" />
            
                            </StackPanel>

                        </Grid>
                    <!-- End Title -->

                    <!-- Header -->
                        <Grid Row="1">
                            <ScrollViewer VerticalScrollBarVisibility="Auto" Height="366">
                                <StackPanel Orientation="Vertical">
                                        <!--Image-->
                                        <Image 
                                        Name="Image"
                                        HorizontalAlignment="Center" 
                                        VerticalAlignment="Center"
                                        Height="200"
                                        Margin="1"
                                        Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Images/thumbnail.jpg" 
                                        Cursor="Hand" 
                                        />
                                        <!--End Image-->

                                        <TextBlock 
                                        Name="Subtitle"
                                        Text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet amet obcaecati dolorem, sit iusto consequatur, libero laudantium officia quo ea officiis nulla esse quod ex, mollitia asperiores! Accusantium, labore pariatur."
                                        Height="Auto"
                                        Width="Auto"
                                        Margin="0,10,0,0"
                                        Foreground="{DynamicResource DefaultTextColor2}"
                                        TextWrapping="Wrap"
                                        TextAlignment="Left"
                                        VerticalAlignment="Center"
                                        HorizontalAlignment="Left" />
                                </StackPanel>
                            </ScrollViewer>
                        </Grid>
                    <!-- End Header -->

                    <!-- Footer -->
                        <Grid Row="2">
                            <TextBlock Width="Auto"
                            Name="DisablePopup" 
                            Foreground="{DynamicResource DefaultTextColor2}"
                            Text="Don''t show again"
                            Background="Transparent"
                            TextAlignment="Center"
                            Cursor="Hand"
                            Padding="15"
                            Height="Auto"
                            HorizontalAlignment="Center"
                            VerticalAlignment="Center"
                            />
                        </Grid>
                    <!-- End Footer -->
                </StackPanel>
            </Grid>
    </Border>
</Window>

'
#===========================================================================
#endregion End WPF Event Window
#===========================================================================
#===========================================================================
#region Begin loadXmal
#===========================================================================
# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'itt',$itt,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

$desiredFunctions = @(
'Invoke-Tweaks',
'Invoke-Install' , 
'Install-App' , 
'InvokeCommand' ,
'Add-Log',
'Disable-Service',
'Uninstall-AppxPackage',
'Finish',
'Message',
'Notify',
'UpdateUI',
'Start-DownloadAndInstallExe',
'Start-DownloadAndUnzip',
'Install-Choco',
'ExecuteCommand',
'Set-Registry',
'Remove-Registry',
'Disable-Service',
'Uninstall-AppxPackage',
'Set-Taskbar',
'Refresh-Explorer'
)

$functions = Get-ChildItem function:\ | Where-Object { $_.Name -in $desiredFunctions }
foreach ($function in $functions) {
    $functionDefinition = Get-Content function:\$($function.name)
    $functionEntry = New-Object System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList $($function.name), $functionDefinition
    $initialSessionState.Commands.Add($functionEntry)

    # debug
    #Write-Output "Added function: $($function.Name)"
}

# Create and open the runspace pool
$itt.runspace = [runspacefactory]::CreateRunspacePool(1, $maxthreads, $InitialSessionState, $Host)
$itt.runspace.Open()

[xml]$XAML = $inputXML

# Read the XAML file
$reader = [System.Xml.XmlNodeReader]::new($xaml)

try {
    $itt["window"] = [Windows.Markup.XamlReader]::Load($reader)
}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "Problem with the XAML code. Check syntax."
    Write-Host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*") {
        Write-Warning "Ensure <button> in `$inputXML does NOT have a Click=ButtonClick property. PS can't handle this."
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Check syntax and .NET installation."
}

try {
    
    #===========================================================================
    #region Create default keys 
    #===========================================================================
    
        $appsTheme = Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"
        $fullCulture = Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName"
        $shortCulture = $fullCulture.Split('-')[0]

        # Ensure registry key exists and set defaults if necessary
        if (-not (Test-Path $itt.registryPath)) {
            New-Item -Path $itt.registryPath -Force | Out-Null
            Set-ItemProperty -Path $itt.registryPath -Name "DarkMode" -Value "none" -Force
            Set-ItemProperty -Path $itt.registryPath -Name "locales" -Value $shortCulture -Force
            Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "100" -Force
            Set-ItemProperty -Path $itt.registryPath -Name "PopupWindow" -Value "On" -Force
        }

    #===========================================================================
    #endregion Create default keys 
    #===========================================================================

    #===========================================================================
    #region Set Language based on culture
    #===========================================================================
        
        switch ($shortCulture) {
            "ar" { $locale = "ar" }
            "en" { $locale = "en" }
            "fr" { $locale = "fr" }
            "tr" { $locale = "tr" }
            "zh" { $locale = "zh" }
            "ko" { $locale = "ko" }
            "de" { $locale = "de" }
            "ru" { $locale = "ru" }
            "es" { $locale = "es" }
            default { $locale = "en" }
        }
        $itt["window"].DataContext = $itt.database.locales.Controls.$locale
        $itt.Language = $locale

    #===========================================================================
    #endregion Set Language based on culture
    #===========================================================================

    #===========================================================================
    #region Check theme settings
    #===========================================================================
    
    $itt.isDarkMode = (Get-ItemProperty -Path $itt.registryPath -Name "DarkMode").DarkMode

    $themeResource = if ($itt.isDarkMode -eq "true") { "Dark" }
                     elseif ($itt.isDarkMode -eq "false") { "Light" }
                     else {
                         switch ($appsTheme) {
                             "0" { "Dark" }
                             "1" { "Light" }
                         }
                     }
    $itt["window"].Resources.MergedDictionaries.Add($itt["window"].FindResource($themeResource))
    $itt.CurretTheme = $themeResource
    #===========================================================================
    #endregion Check theme settings
    #===========================================================================

    #===========================================================================
    #region Get user Settings from registry
    #===========================================================================
    $itt.Music = (Get-ItemProperty -Path $itt.registryPath -Name "Music").Music
    $itt.mediaPlayer.settings.volume = "$($itt.Music)"

    switch($itt.Music){
        "100" { $itt["window"].title = "Install Tweak Tool #StandWithPalestine 🔊"}
        "0" {$itt["window"].title = "Install Tweak Tool #StandWithPalestine 🔈"}
    }

    $itt.PopupWindow = (Get-ItemProperty -Path $itt.registryPath -Name "PopupWindow").PopupWindow
    #===========================================================================
    #endregion Get user Settings from registry
    #===========================================================================
    
    # init taskbar icon
    $taskbarItemInfo = New-Object System.Windows.Shell.TaskbarItemInfo
    $itt["window"].TaskbarItemInfo = $taskbarItemInfo
    $taskbarItemInfo.Overlay = $itt.icon
}
catch {
    Write-Host "Error: $_"
    Write-Host "Error: Some keys not created or the key not found"
}

# List Views
$itt.TabControl = $itt["window"].FindName("taps")
$itt.AppsListView = $itt["window"].FindName("appslist")
$itt.TweaksListView = $itt["window"].FindName("tweakslist")
$itt.SettingsListView = $itt["window"].FindName("SettingsList")
$itt.currentList

# Buttons and Inputs
$itt.Description = $itt["window"].FindName("description")
$itt.Quotes = $itt["window"].FindName("quotes")
$itt.InstallBtn = $itt["window"].FindName("installBtn")
$itt.ApplyBtn = $itt["window"].FindName("applyBtn")
$itt.Category = $itt["window"].FindName("category")
$itt.SearchInput = $itt["window"].FindName("searchInput")
$itt.installText = $itt["window"].FindName("installText")
$itt.installIcon = $itt["window"].FindName("installIcon")
$itt.applyText = $itt["window"].FindName("applyText")
$itt.applyIcon = $itt["window"].FindName("applyIcon")
#===========================================================================
#endregion End loadXmal
#===========================================================================
#===========================================================================
#region Begin Main
#===========================================================================
#===========================================================================
#region Select elements with a Name attribute using XPath and iterate over them
#===========================================================================
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {
    $name = $_.Name
    $element = $itt["window"].FindName($name)

    if ($element) {
        $itt[$name] = $element

        # Add event handlers based on element type
        switch ($element.GetType().Name) {
            "Button" {
                $element.Add_Click({ Invoke-Button $args[0].Name })
            }
            "MenuItem" {
                $element.Add_Click({ Invoke-Button $args[0].Name })
            }
            "TextBox" {
                $element.Add_TextChanged({ Invoke-Button $args[0].Name })
                $element.Add_GotFocus({ Invoke-Button $args[0].Name })
            }
            "Ellipse" {
                $element.add_MouseLeftButtonDown({ Invoke-Button $args[0].Name })
            }
            "ComboBox" {
                $element.add_SelectionChanged({ Invoke-Button $args[0].Name })
            }
            "TabControl" {
                $element.add_SelectionChanged({ Invoke-Button $args[0].Name })
            }
            "CheckBox" {
                $element.IsChecked = Get-ToggleStatus -ToggleSwitch $name
                $element.Add_Click({ Invoke-Toogle $args[0].Name })
            }
        }
    }
}
#===========================================================================
#endregion Select elements with a Name attribute using XPath and iterate over them
#===========================================================================

# Define OnClosing event handler
$onClosingEvent = {
    param($s, $c)

    $exitDialog = $itt.database.locales.Controls.$($itt.Language).exit

    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show($exitDialog, "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

    # Check user's choice
    if ($result -eq [System.Windows.MessageBoxResult]::Yes) {
        StopAllRunspace
    } else {
        $c.Cancel = $true
    }
}

# Handle the Loaded event
$itt["window"].Add_Loaded({
    Startup
    Get-DateStatus
})

# Close Event handler
$itt["window"].add_Closing($onClosingEvent)

# Keyboard shortcut
$itt["window"].Add_PreViewKeyDown($KeyEvents)

# Show Window
$itt["window"].ShowDialog() | Out-Null

#===========================================================================
#endregion End Main
#===========================================================================
