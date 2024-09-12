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
    lastupdate     = "09/12/2024"
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
    "name": "Python 3.9",
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
        "Light": "Clair",
        "defaultTheme": "Système",
        "ittlink": "Créer un raccourci sur le bureau",
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
        "Light": "Açık",
        "defaultTheme": "Sistem",
        "ittlink": "Masaüstü kısayolu oluştur",
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
        "Dark": "深色",
        "Light": "浅色",
        "defaultTheme": "系统",
        "ittlink": "创建桌面快捷方式",
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
        "off": "끄기",
        "Dark": "다크",
        "Light": "라이트",
        "defaultTheme": "시스템",
        "ittlink": "바탕화면 바로 가기 만들기",
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
        "off": "Stummschalten",
        "Dark": "Dunkel ",
        "Light": "Hell",
        "defaultTheme": "System",
        "ittlink": "Desktop-Verknüpfung erstellen",
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
        "off": "Выключить",
        "Dark": "Темная ",
        "Light": "Светлая",
        "defaultTheme": "Системная",
        "ittlink": "Создать ярлык на рабочем столе",
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
    "off": "Desactivado",
    "Dark": "Oscuro ",
    "Light": "Claro",
    "defaultTheme": "Sistema",
    "ittlink": "Crear acceso directo en el escritorio",
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
      "name": "Assassin Creed Theme",
      "url": "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/jgevpclfcr/01.%20Assassin%27s%20Creed%20III%20Main%20Theme.mp3"
    },
    {
      "name": "Ezio''s Family - Møme Remix",
      "url": "https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3"
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
      "name": "Assassin''s creed - Legend of the Eagle Bearer",
      "url": "https://vgmsite.com/soundtracks/assassin-s-creed-odyssey-original-game-soundtrack/kbtrtqrtyf/01.%20Legend%20of%20the%20Eagle%20Bearer%20%28Main%20Theme%29.mp3"
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
      "name": "Hans Zimmer - Organ Variation",
      "url": "https://archive.org/download/interstellar-soundtrack/26%20Organ%20Variation.m4a"
    },
    {
      "name": "Hans Zimmer - Tick Tock",
      "url": "https://archive.org/download/interstellar-soundtrack/25%20Tick%20Tock.m4a"
    },
    {
      "name": "Hans Zimmer - Day One",
      "url": "https://archive.org/download/interstellar-soundtrack/30%20Day%20One%20%28Original%20Demo%29.m4a"
    },
    {
      "name": "Max Richter - November",
      "url": "https://archive.org/download/max-richter-memoryhouse/09%20November.mp3"
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
      "name": "Hans Zimmer - Dream is Collapsing",
      "url": "https://archive.org/download/InceptionSoundtrackDreamIsCollapsingHansZimmer/Inception%20Soundtrack-Dream%20is%20Collapsing%20%28Hans%20Zimmer%29.mp3"
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
    "يا تموت وإنت واقف يا تموت وانت راكع",
    "عايش في أكبر سجن بس من جوايا حر",
    "قلبي نطق بالحقيقة بالخيانة إتوصف",
    "الحقيقة هي، أن الأشياء نادراً ما تسير كما نريدها",
    "الحظ ليس عادلاً، ولكن العالم ليس كذلك أيضًا.",
    "الحرية تأتي بثمن. وأحياناً، تكون الكلفة مرتفعة للغاية",
    "الأشياء التي نحبها أكثر، هي الأشياء التي نفقدها",
    "أصغر الاصوات بإمكانها أن تصبح عظيمة",
    "هل انت 1 ام 0",
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
    "تم تخدير الشعوب بعد أن سرقوا أموالهم, بتوظيف الدين لإقناع الفقراء بإنهم سيدخلون الجنة قبل الغني",
    "اذا كنت لا تستطيع رفع الظلم ، على الأقل أخبر الجميع عنه",
    "If you can''t lift the injustice, at least tell everyone about it.",
    "Live together, die alone",
    "نعيش معًا، او الموت وحيدا"
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
      "cleanmgr.exe /d C: /VERYLOWDISK /sagerun:1 Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase",
      "cleanmgr.exe /d C: /sagerun:1",
      "cleanmgr.exe /sagerun:1",
      "Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase",
      "Dism.exe /online /Cleanup-Image /StartComponentCleanup",
      "Remove-Item -Path \\\"$env:LOCALAPPDATA\\Temp\\*\\\" -Recurse -Force -ErrorAction SilentlyContinue",
      "Remove-Item -Path \\\"C:\\Windows\\Prefetch\\*\\\" -Recurse -Force -ErrorAction SilentlyContinue",
      "Stop-Service -Name \\\"wuauserv\\\" -Force",
      "Remove-Item -Path \\\"C:\\Windows\\SoftwareDistribution\\Download\\*\\\" -Recurse -Force",
      "Start-Service -Name \\\"wuauserv\\"
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
        "Name": "Microsoft.ZuneMusic"
      },
      {
        "Name": "Microsoft.ZuneVideo"
      },
      {
        "Name": "Microsoft.NetworkSpeedTest"
      },
      {
        "Name": "Microsoft.ScreenSketch"
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
    "Name": "Clear Start Menu Windows 11",
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
      "powercfg /X monitor-timeout-ac 0",
      "powercfg /X monitor-timeout-dc 0",
      "powercfg /X standby-timeout-ac 0",
      "powercfg /X standby-timeout-dc 0"
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
  }
]' | ConvertFrom-Json
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
#===========================================================================
#region Begin Main Functions
#===========================================================================
function Invoke-ScriptBlock {
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

    Invoke-ScriptBlock -ScriptBlock {

        Try {
            Add-Log -Message "Creating Restore point..." -Level "INFO"
            Checkpoint-Computer -Description "ITT" -ErrorAction Stop
            Add-Log -Message "Created successfully" -Level "INFO"
        } Catch {
            Write-Host "Failed to create a restore point. Error: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

function Add-Log {

    <#
    .Options
    INFO
    WARNING
    ERROR

    .Example
        Add-Log -Message "ARE YOU 0 OR 1?" -Level "WARNING"
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
    Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
    Write-Host "" -ForegroundColor $color

}
function ExecuteCommand {

    <#
    .Example
        ExecuteCommand -Name "Itemname" -Command "Welcome to itt"
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

    param (
       [string]$ListView,
       [string]$title = "ITT Emad Adel",
       [string]$msg = "Installed successfully",
       [string]$icon = "Info"
    )

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

    Notify -title "$title" -msg "$msg" -icon "Info" -time 30000
}
function Show-Selected {

    <#
    .Options
    AppsListView
    TweaksListView

    .Example
        Show-Selected -ListView "AppsListView"
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
                                            Name    = $app.Name
                                            Choco   = $app.Choco
                                            Scoop   = $app.Scoop
                                            Winget  = $app.Winget
                                            Default = $app.Default
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
}
function Download-And-ExtractZip {
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

function Download-And-Install-Exe {
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

function Install-App {
    param (
        [string]$appName,
        [string]$appChoco,
        [string]$appWinget
    )

    Install-Choco
    
    $chocoResult = $(Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -Wait -NoNewWindow -PassThru).ExitCode

    if ($chocoResult -ne 0) {

        Add-Log -Message "Chocolatey installation failed for $appName." -Level "INFO"
        Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"

        #Install Winget if not install on Device
        Install-Winget

        Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
        $wingetResult = $(Start-Process -FilePath "winget" -ArgumentList "install --accept-source-agreements --accept-package-agreements --id $appWinget --force -e -h --silent --exact" -Wait -NoNewWindow -PassThru).ExitCode

        # Check winget
        if ($wingetResult -ne 0) {
            Add-Log -Message "Winget installation failed for $appName. Please install $appName manually." -Level "ERROR"
            UpdateUI -Button "installBtn" -ButtonText "installText" -Content "Install" -Icon "installIcon" -TextIcon "" -Width "100"
        } 
        else
        {
            Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
            UpdateUI -Button "installBtn" -ButtonText "installText" -Content "Install" -Icon "installIcon" -TextIcon "" -Width "100"
        }
    }
    else
    {
        Add-Log -Message "Installed $appName successfully using Chocolatey." -Level "INFO"
    }
}
function Install-Choco {
    # Check if Chocolatey is installed
    if (-not (Get-Command choco -ErrorAction SilentlyContinue))
    {
        Add-Log -Message "Installing Chocolatey for the first time, It won't take minutes :)" -Level "INFO"
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
        Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"
    }
}

function Install-Winget {

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
function Download-And-ExtractZip {
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

function Download-And-Install-Exe {
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
        } else {
            Add-Log -Message "Registry key '$KeyPath' does not exist." -Level "INFO"
        }
    }
    catch {
        Write-Host "An error occurred: $_" -ForegroundColor red
    }
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
            function Display-WelcomeText {
                $itt.Quotes.Dispatcher.Invoke([Action]{
        
                    $fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                    $shortCulture = $fullCulture.Split('-')[0]
                    $itt.Quotes.Text = $itt.database.locales.Controls.$($itt.Language).welcome
                    
                })
            }
        
            # Display welcome text
            Display-WelcomeText
        
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
    # Define a hash table to map tab names to their button visibility and list values
    $tabSettings = @{
        'apps'        = @{ 'installBtn' = 'Visible'; 'applyBtn' = 'Hidden'; 'currentList' = 'appslist' }
        'tweeksTab'   = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Visible'; 'currentList' = 'tweakslist' }
        'SettingsTab' = @{ 'installBtn' = 'Hidden'; 'applyBtn' = 'Hidden'; 'currentList' = $null }
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
            
            break  # Exit the loop once the matching tab is found
        }
    }
}

function Uninstall-AppxPackage  {
    
    <#
    .Example
        Uninstall-AppxPackage -Name "Microsoft.BingNews"
    #>

    param (
        $Name
    )
       
    try {
        Add-Log -Message "Trying to remove $($Name)" -Level "INFO"
        #Get-AppxPackage "*$Name*" | Remove-AppxPackage -ErrorAction SilentlyContinue
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxPackage '*$Name*' | Remove-AppxPackage -ErrorAction SilentlyContinue" -NoNewWindow -Wait
        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$Name*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" -NoNewWindow -Wait
    } catch {
        
    }
}
