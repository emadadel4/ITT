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

        function Add-Log {
            param (
                [string]$Message, # Content of Message
                [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
            )
        
            # Get the current timestamp
            $timestamp = Get-Date -Format "hh:mm tt"
        
            # Determine the color based on the log level
            switch ($Level.ToUpper()) {
                "INFO" { $color = "Green" }
                "WARNING" { $color = "Yellow" }
                "ERROR" { $color = "Red" }
                default { $color = "White" }
            }
        
            # Construct the log message
            $logMessage = "$Message"
            $date =  "[$timestamp $Level]"
        
            # Write the log message to the console with the specified color
            Write-Host "`n` " -ForegroundColor $color
            Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
            Write-Host "" -ForegroundColor $color
        }

        Try {
            Add-Log -Message "Creating Restore point..." -Level "INFO"
            Checkpoint-Computer -Description "ITT" -ErrorAction Stop
            Add-Log -Message "Created successfully" -Level "INFO"
        } Catch {
            Write-Host "Failed to create a restore point. Error: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
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

function Get-SelectedTweaks {
    $items = @()
    
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
    
    return $items
}
function ShowSelectedTweaks {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items)

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
function Invoke-ApplyTweaks {

    try {

        if($itt.ProcessRunning)
        {
            $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).Pleasewait
            $msg = "$localizedMessageTemplate"
            [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
            return
        }
            ShowSelectedTweaks

            $tweaks  = Get-SelectedTweaks

            if($tweaks.Count -gt 0)
            {
                $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).ApplyMessage
                $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($result -eq "Yes")
                {
                    Invoke-ScriptBlock -ArgumentList $tweaks -ScriptBlock{

                        param($tweaks)
        
                        function Add-Log {
                            param (
                                [string]$Message,
                                [string]$Level = "INFO"
                            )
                        
                            # Get the current timestamp
                            $timestamp = Get-Date -Format "hh:mm tt"
                        
                            # Determine the color based on the log level
                            switch ($Level.ToUpper()) {
                                "INFO" { $color = "Green" }
                                "WARNING" { $color = "Yellow" }
                                "ERROR" { $color = "Red" }
                                default { $color = "White" }
                            }
                        
                            # Construct the log message
                            $logMessage = "$Message"
                            $date =  "[$timestamp $Level]"
                        
                            # Write the log message to the console with the specified color
                            Write-Host "`n` " -ForegroundColor $color
                            Write-Host " $date" -ForegroundColor Yellow ; Write-Host " $logMessage" -ForegroundColor $color 
                            Write-Host "" -ForegroundColor $color
            
                        }
        
                        function ExecuteCommand {
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
                        
                        function Set-RegistryValue {
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
        
                        function Remove-RegistryValue {
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
        
                        function Uninstall-AppxPackage  {
        
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
                           
                        
                        function UpdateUI {
        
                            param($ApplyBtn,$icon,$Description,$Width)
                            
                            $itt['window'].Dispatcher.Invoke([Action]{
                                $itt.applyText.Text = "$ApplyBtn"
                                $itt.applyBtn.Width = $Width
                                $itt.applyIcon.Text = $icon
                            })
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
        
                        function Send-Tweaks {
                            param (
                                [string]$FirebaseUrl,
                                [string]$Key,
                                $List
                            )
                        
                            try {
                                # Validate parameters
                                if (-not $FirebaseUrl -or -not $Key) {
                                    throw "FirebaseUrl and Key are mandatory parameters."
                                }
                                
                                # Reuse connection to Firebase URL
                                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                                
                                # Check if the key exists
                                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                        
                                # Function to get content from ListView
                                function GetListViewContent {
                                    # Create an array to store selected item content
                                    $selectedItemContent = @()
                                
                                    # Add the app name to the array
                                    $selectedItemContent += @{
                                        "Tweaks" = $List
                                    }
                                
                                    # Return the selected item content
                                    return $selectedItemContent
                                }
                        
                                # Get content from ListView
                                $selectedItemContent = GetListViewContent
                        
                                if ($existingData) {
                                    # Update PC info with the existing data
                                    $pcInfo = @{
                                        "Domain" = $env:COMPUTERNAME
                                        "Manufacturer" = $existingData.Manufacturer
                                        "OS" = $existingData.OS
                                        "Username" = $existingData.Username
                                        "RAM" = $existingData.RAM
                                        "GPU" = $existingData.GPU
                                        "CPU" = $existingData.CPU
                                        "Cores" = $existingData.Cores 
                                        "Country" = $existingData.Country
                                        "Language" = $existingData.Language 
                                        "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                                        "Runs" = $existingData.Runs
                                        "AppsHistory" = $existingData.AppsHistory
                                        "TweaksHistory" = $selectedItemContent
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
                            }
                            catch {
                                Write-Error "An error occurred: $_"
                                exit 1
                            }
                        }
        
                        function Finish {
        
                            $itt.TweaksListView.Dispatcher.Invoke([Action]{
                                foreach ($item in $itt.TweaksListView.Items)
                                {
                                    foreach ($child in $item.Children) {
                                        if ($child -is [System.Windows.Controls.StackPanel]) {
                                            foreach ($innerChild in $child.Children) {
                                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                
                                                    $innerChild.IsChecked = $false
                                                    $itt.TweaksListView.Clear()
                                                    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items)
                                                    $collectionView.Filter = $null
                                                }
                                            }
                                        }
                                    }
                                }
                            })
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

                            $applyBtn = $itt.database.locales.Controls.$($itt.Language).applyBtn
                            $Applying = $itt.database.locales.Controls.$($itt.Language).Applying
                            UpdateUI -ApplyBtn "$applying" -icon " " -Width "150"

                            $itt.ProcessRunning = $true

                            Add-Log -Message "$($tweaks.name)..." -Level "INFO"


                            foreach ($app in $tweaks) {
                                switch ($app.Type) {

                                    "command" {
                                        $app.Command | ForEach-Object { ExecuteCommand -Name $app.Name -Command $_ }
                                    }

                                    "Registry" {

                                        $app.Modify | ForEach-Object {
                                            Set-RegistryValue -Name $_.Name -Type $_.Type -Path $_.Path -Value $_.Value
                                            #$app.Command | ForEach-Object { ExecuteCommand -Name $app.Name -Command $_ }
                                        }

                                        $app.Delete | ForEach-Object {
                                            Remove-RegistryValue -RegistryPath $_.Path -Folder $_.Name
                                        }

                                        if($app.Refresh -eq "true")
                                        {
                                            Stop-Process -Name explorer -Force
                                            Add-Log -Message "Restarting explorer" -Level "INFO"
                                        }
                                    }
                                    "service" {
                                        $app.Service | ForEach-Object { Disable-Service -ServiceName $_.Name -StartupType $_.StartupType }
                                    }
                                    "AppxPackage" {
                                        $app.removeAppxPackage | ForEach-Object { Uninstall-AppxPackage -Name $_.Name }
                                        $app.Command | ForEach-Object { ExecuteCommand -Command $_ }
                                    }
                                }

                                Add-Log -Message "Finished, Some tweaks require restarting" -Level "INFO"
                            }

                            # Displaying the names of the selected apps
                            $selectedAppNames = $tweaks | ForEach-Object { $_.Name }
                            UpdateUI -ApplyBtn "$applyBtn" -icon " " -Width "100"
                            $itt.ProcessRunning = $False
                            Finish
                            Send-Tweaks -FirebaseUrl $itt.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -List $selectedAppNames
                            Notify -title "ITT Emad Adel" -msg "Applied done" -icon "Info" -time 30000
                    }
                }
                else
                {
                    # Uncheck all checkboxes in $list if user chose [NO]
                    $itt.TweaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $itt.TweaksListView.Items) {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                            $innerChild.IsChecked = $false
                                        }
                                    }
                                }
                            }
                        }
                        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items)
                        $collectionView.Filter = $null
                    })
                }
            }
            else
            {
               # Uncheck all checkboxes in $list
                $itt.category.SelectedIndex = 0
                $itt.TweaksListView.Dispatcher.Invoke({
                    $itt.AppsListView.Clear()
                    [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.TweaksListView.Items).Filter = $null
                })
                $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).chosetweak
                [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
            }
    }
    catch {
        Write-Host "Error: $_"
    }
}
function Get-SelectedApps {
    $items = @()
    
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
    
    return $items
}
function FilteredSelectedItems {
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)

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
function Invoke-Install {
    
    try {
        
        if($itt.ProcessRunning)
        {
            $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).Pleasewait
            $msg = "$localizedMessageTemplate"
            [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
            return
        }

        # Clear Search Input
        $itt.SearchInput.Text = ""

    
        $itt.category.SelectedIndex = 0
        FilteredSelectedItems
        $selectedApps = Get-SelectedApps
    
        if($selectedApps.Count -gt 0)
        {
            # Retrieve localized messages for confirmation dialog and UI elements
            $areyousuremsg = $itt.database.locales.Controls.$($itt.Language).InstallMessage
            $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

            if($result -eq "Yes")
            {
                Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {
    
                    param($selectedApps)
                                
                        #===========================================================================
                        #region Begin function
                        #===========================================================================
                        function Add-Log {
                            param (
                                [string]$Message, # Content of Message
                                [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
                            )
                        
                            # Get the current timestamp
                            $timestamp = Get-Date -Format "hh:mm tt"
                        
                            # Determine the color based on the log level
                            switch ($Level.ToUpper()) {
                                "INFO" { $color = "Green" }
                                "WARNING" { $color = "Yellow" }
                                "ERROR" { $color = "Red" }
                                default { $color = "White" }
                            }
                        
                            # Construct the log message
                            $logMessage = "$Message"
                            $date =  "[$timestamp $Level]"
                        
                            # Write the log message to the console with the specified color
                            Write-Host "`n` " -ForegroundColor $color
                            Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
                            Write-Host "" -ForegroundColor $color
            
                        }
            
                        function UpdateUI {
            
                            param($InstallBtn,$icon,$Description,$Width)
                        
                            $itt['window'].Dispatcher.Invoke([Action]{
                                $itt.installText.Text = "$InstallBtn"
                                $itt.installBtn.Width = $Width
                                $itt.installIcon.Text = $icon
                            })
                        }
            
                        function ClearTemp {
            
                            $chocoTempPath = Join-Path $env:TEMP "chocolatey"
            
                            if (Test-Path $chocoTempPath) {
                                Remove-Item -Path $chocoTempPath -Force -Recurse
                            }
                        }
                        
                        function CustomMsg {
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
            
                        function Send-Apps {
                            param (
                                [string]$FirebaseUrl,
                                [string]$Key,
                                $List
                            )
                        
                            try {
                                # Validate parameters
                                if (-not $FirebaseUrl -or -not $Key) {
                                    throw "FirebaseUrl and Key are mandatory parameters."
                                }
                                
                                # Reuse connection to Firebase URL
                                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                                
                                # Check if the key exists
                                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                        
                                # Function to get content from ListView
                                function GetListViewContent {
                                    # Create an array to store selected item content
                                    $selectedItemContent = @()
                                
                                    # Add the app name to the array
                                    $selectedItemContent += @{
                                        "Apps" = $List
                                    }
                                
                                    # Return the selected item content
                                    return $selectedItemContent
                                }
                        
                                # Get content from ListView
                                $selectedItemContent = GetListViewContent
                        
                                if ($existingData) {
                                    # Update PC info with the existing data
                                    $pcInfo = @{
                                        "Domain" = $env:COMPUTERNAME
                                        "Manufacturer" = $existingData.Manufacturer
                                        "OS" = $existingData.OS
                                        "Username" = $existingData.Username
                                        "RAM" = $existingData.RAM
                                        "GPU" = $existingData.GPU
                                        "CPU" = $existingData.CPU
                                        "Cores" = $existingData.Cores 
                                        "Country" = $existingData.Country
                                        "Language" = $existingData.Language 
                                        "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                                        "Runs" = $existingData.Runs
                                        "AppsHistory" = $selectedItemContent
                                        "TweaksHistory" = $existingData.TweaksHistory
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
                            }
                            catch {
                                Write-Error "An error occurred: $_"
                                exit 1
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
                                # Download the file
                                Write-Output "Downloading file from: $url"
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
            
                        function Install-Choco {
                            # Check if Chocolatey is installed
                            if (-not (Get-Command choco -ErrorAction SilentlyContinue))
                            {
                                Add-Log -Message "Installing Chocolatey for the first time, It won't take minutes :)" -Level "INFO"
                                Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
                                Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"
                            }
                        }
            
                        function Install-App {
                            param (
                                [string]$appName,
                                [string]$appChoco,
                                [string]$appWinget
                            )
                        
                            # Function to check if the app is installed using Chocolatey
                            function Is-AppInstalledChoco {
                                param ([string]$appName)
                                $result = choco list --local-only | Select-String -Pattern $appName
                                return $result
                            }
                        
                            # Function to check if the app is installed using Winget
                            function Is-AppInstalledWinget {
                                param ([string]$appName)
                                $result = winget list | Select-String -Pattern $appName
                                return $result
                            }
                    
            
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
                                } 
                                else
                                {
                                    Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
                                }
                            }
                            else
                            {
                                Add-Log -Message "Installed $appName successfully using Chocolatey." -Level "INFO"
                            }
                        }
            
                        function Finish {
            
                            $itt.AppsListView.Dispatcher.Invoke([Action]{
                                foreach ($item in $itt.AppsListView.Items)
                                {
                                    foreach ($child in $item.Children) {
                                        if ($child -is [System.Windows.Controls.StackPanel]) {
                                            foreach ($innerChild in $child.Children) {
                                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
            
                                                    $innerChild.IsChecked = $false
                                                    $itt.AppsListView.Clear()
                                                    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)
                                                    $collectionView.Filter = $null
                                                }
                                            }
                                        }
                                    }
                                }
                            })
            
                            # Notify user of successful installation
                            UpdateUI -InstallBtn "$installBtn" -icon " " -Width "100"
                            Notify -title "ITT Emad Adel" -msg "Installed successfully" -icon "Info" -time 30000
                            # Store the apps you'v selected
                            Send-Apps -FirebaseUrl $itt.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -List $selectedAppNames
                        }
                        #===========================================================================
                        #endregion End function
                        #===========================================================================

                        # start ProcessRunning
                        $itt.ProcessRunning = $true
                       
                        $installBtn = $itt.database.locales.Controls.$($itt.Language).installBtn
                        $downloading = $itt.database.locales.Controls.$($itt.Language).downloading
            
                        # Chancge Install Content "Downloading.."
                        UpdateUI -InstallBtn "$downloading" -icon " " -Width "150"
            
                        # Clear temporary files
                        ClearTemp
    
                        # Display names of selected apps
                        $selectedAppNames = $selectedApps | ForEach-Object { $_.Name }

                        # Install selected apps
                        $selectedApps | ForEach-Object {

                            if ($_.Choco -ne "none")
                            {
                                Install-App -appName $_.Name -appChoco $_.Choco
                                
                            }elseif ($_.Winget -ne "none") {
                                Install-App -appName $_.Name -appWinget $_.Winget
                            }
                            else
                            {
                                if($_.default.IsExcute -eq "true")
                                {
                                    Download-And-Install-Exe -name "$($_.Name)" -url  $_.default.url -type $_.default.extinction -exeArgs $_.default.exeArgs -outputDir "ITT\Downloads\" -run $_.default.run -shortcut $_.default.shortcut
                                }
                                else
                                {
                                    Download-And-ExtractZip -url $_.default.url -shortcutName "$($_.Name)" -exeFileName $_.default.launcher -run $_.default.run -Createshortcut $_.default.shortcut -exeArgs $_.default.exeArgs
                                }
                            }
                        }
    
                        # End ProcessRunning
                        $itt.ProcessRunning = $false

                        # Notify user of successful installation
                        Finish
                }
            }
            else
            {
                # Uncheck all checkboxes in $list if user chose [NO]
                $itt.AppsListView.Dispatcher.Invoke({
                    foreach ($item in $itt.AppsListView.Items) {
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
                    $itt.AppsListView.Clear()
                    [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items).Filter = $null
                })
            }
        }
        else
        {
            # Uncheck all checkboxes in $list
            $itt.category.SelectedIndex = 0
            $itt.AppsListView.Dispatcher.Invoke({
                $itt.AppsListView.Clear()
                [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items).Filter = $null
            })
            $localizedMessageTemplate = $itt.database.locales.Controls.$($itt.Language).choseapp
            [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
        }
    }
    catch {
        Write-Host "Error: $_"
    }
}
function Invoke-Button {
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

        Default {
            Write-Host "Unknown action: $action"
        }
    }
}
function Invoke-Toogle {

    Param ([string]$debug)

    # debug
    #Write-Host $debug

    Switch -Wildcard ($debug){

        "ToggleShowExt" {Invoke-ShowFile-Extensions $(Get-ToggleStatus ToggleShowExt)}
        "ToggleDarkMode" {Invoke-DarkMode $(Get-ToggleStatus ToggleDarkMode)}
        "ToggleShowHidden" {Invoke-ShowFile $(Get-ToggleStatus ToggleShowHidden)}
        "ToggleNumLook" {Invoke-NumLock $(Get-ToggleStatus ToggleNumLook)}
        "ToggleStickyKeys" {Invoke-StickyKeys $(Get-ToggleStatus ToggleStickyKeys)}
    }
}
Function Invoke-DarkMode {

    Param($DarkMoveEnabled)
    Try{

        $DarkMode = (Get-ItemProperty -Path $itt.registryPath -Name "DarkMode").DarkMode


        if ($DarkMoveEnabled -eq $false){
            $DarkMoveValue = 0

            if($DarkMode -eq "none")
            {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Dark"))
            }
        }
        else {
            $DarkMoveValue = 1

            if($DarkMode -eq "none")
            {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Light"))
            }
        }

        $Path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty -Path $Path -Name AppsUseLightTheme -Value $DarkMoveValue
        Set-ItemProperty -Path $Path -Name SystemUsesLightTheme -Value $DarkMoveValue

        Stop-Process -Name explorer -Force
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
function Invoke-NumLock {

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
    Param($Enabled)
    Try {
        $value = if ($Enabled -eq $false) { 1 } else { 2 }

        $hiddenItemsKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        
        # Set registry values to show or hide hidden items
        Set-ItemProperty -Path $hiddenItemsKey -Name Hidden -Value $value
        Set-ItemProperty -Path $hiddenItemsKey -Name ShowSuperHidden -Value $value

        Stop-Process -Name explorer -Force
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
   
    Param($Enabled)
    Try{
        if ($Enabled -eq $false){
            $value = 0
        }
        else {
            $value = 1
        }
        $Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        Set-ItemProperty -Path $Path -Name HideFileExt -Value $value
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
        Stop-Process -Name explorer -Force
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
}
function Search {

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
    $itt.AppsListView.Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($itt.AppsListView.Items)
    $collectionView.Filter = $null
}
# $KeyEvents = {

#     if ($itt.ProcessRunning -eq $true) {
#         return
#     }

#     if (($_.Key -eq "Enter")) {

#         switch ($itt.currentList) {
#             "appslist" {
#                 Invoke-Install                
#             }
#             "tweakslist" {
#                 Invoke-ApplyTweaks
#             }
#         }
#     }

#     if (($_.Key -eq "S" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {

#         switch ($itt.currentList) {
#             "appslist" {
#                 Invoke-Install                
#             }
#             "tweakslist" {
#                 Invoke-ApplyTweaks
#             }
#         }
#     }

#      # Quit from applaction
#      if (($_.Key -eq "G" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {
#         $this.Close()
#     }

#     # Foucs on Search box
#     if (($_.Key -eq "F" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {
#         $itt.SearchInput.Focus()
#     }

#     # Lost Foucs on Search box
#     if ($_.Key -eq "Escape") {
#         $itt.SearchInput.MoveFocus([System.Windows.Input.TraversalRequest]::New([System.Windows.Input.FocusNavigationDirection]::Next))
#         $itt.SearchInput.Text = ""
#     }

#     # Swtich to Apps tap
#     if ($_.Key -eq "Q" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
#         $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "apps" }
#     }

#     # Swtich to tweaks tap
#     if ($_.Key -eq "W" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
#         $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "tweeksTab" }
#     }

#     # Swtich to settings tap
#     if ($_.Key -eq "E" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
#         $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "SettingsTab" }
#     }

#     # Swtich to settings tap
#     if ($_.Key -eq "I" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
#         About
#     }

#     # SaveItemsToJson
#     if ($_.Key -eq "S" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         SaveItemsToJson
#     }

#     # LoadJson
#     if ($_.Key -eq "D" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         LoadJson
#     }

#     # Mute
#     if ($_.Key -eq "M" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         MuteMusic -Value 0

#     }

#     # Music ON 
#     if ($_.Key -eq "F" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         UnmuteMusic -Value 100
#     }

#     # Choco Folder
#     if ($_.Key -eq "P" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         Start-Process explorer.exe "C:\ProgramData\chocolatey\lib"
#     }

#     # Restore point 
#     if ($_.Key -eq "Q" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         RestorePoint
#     }

#     # ITT Shortcut 
#     if ($_.Key -eq "I" -and $_.KeyboardDevice.Modifiers -eq "Shift") {
#         ITTShortcut
#     }
# }

# $itt["window"].Add_PreViewKeyDown($KeyEvents)

# Mute the music by setting the volume to the specified value
function MuteMusic {
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
    param (
        [string]$lang  # Parameter for the language to set
    )

    # Set DataContext of the window to the specified language
    $itt["window"].DataContext = $itt.database.locales.Controls.$($lang)

    # Set registry value for the language
    Set-ItemProperty -Path $itt.registryPath  -Name "locales" -Value "$lang" -Force
}
function ToggleTheme {
    
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
    $mainStackPanel = $itt.event.FindName('MainStackPanel')

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
function Check-Date {

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
Height="622" Width="900" MinHeight="622" MinWidth="900"  Topmost="False"  ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/Resources/Icons/icon.ico">

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
                    <Border CornerRadius="10"
                            Padding="{TemplateBinding Padding}" 
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}">
                        <Border.Background>
                            <LinearGradientBrush StartPoint="0,0" EndPoint="1,0">
                                <GradientStop Color="{DynamicResource CardLeft}" Offset="0"/>
                                <GradientStop Color="{DynamicResource CardRight}" Offset="1.8"/>
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
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="BorderBrush" Value="black"/>
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

<!--Textbox Style-->
  <Style TargetType="TextBox">
    <Setter Property="Background" Value="{DynamicResource FGColor}"/>
      <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
      <Setter Property="BorderBrush" Value="{DynamicResource BorderBrush}"/>
      <Setter Property="BorderThickness" Value="0"/>
      <Setter Property="Template">
          <Setter.Value>
              <ControlTemplate TargetType="TextBox">
                  <Border Margin="0" Background="{TemplateBinding Background}"
                          BorderBrush="{TemplateBinding BorderBrush}"
                          BorderThickness="{TemplateBinding BorderThickness}"
                          CornerRadius="16">
                      <ScrollViewer x:Name="PART_ContentHost" />
                  </Border>
              </ControlTemplate>
          </Setter.Value>
      </Setter>
      <Style.Triggers>
              <Trigger Property="IsFocused" Value="True">
                  <Setter Property="BorderThickness" Value="2"/>
                  <Setter Property="BorderBrush" Value="{DynamicResource BGButtonColor}"/>
                  <Setter Property="Background" Value="{DynamicResource FGColor}"/>
              </Trigger>
          </Style.Triggers>
  </Style>
<!--End Textbox Style-->

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
                    <Border Name="Border" CornerRadius="4" BorderThickness="0,0,0,0" Padding="8" BorderBrush="Transparent"  Margin="5,5">
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
                <MenuItem Name="moff" Header="{Binding off}" InputGestureText="Shift+F">
                    <MenuItem.Icon>
                        <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                    </MenuItem.Icon>
                </MenuItem>
                <MenuItem Name="mon" Header="{Binding on}" InputGestureText="Shift+N">
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
            Width="120"
            VerticalAlignment="Center"
            HorizontalAlignment="Left"
            Text="{Binding Text_searchInput}"
            Name="searchInput" />

    <TextBlock IsHitTestVisible="False"
            Text=""
            FontFamily="Segoe MDL2 Assets"
            VerticalAlignment="Center"
            HorizontalAlignment="Left"
            Margin="20,0,5,0"
            FontSize="12"
            Foreground="{DynamicResource FGTextColor}">
        <TextBlock.Style>
            <Style TargetType="{x:Type TextBlock}">
                <Setter Property="Visibility" Value="Hidden"/>
                <Style.Triggers>
                    <DataTrigger Binding="{Binding Text, ElementName=searchInput}" Value="">
                        <Setter Property="Visibility" Value="Visible"/>
                    </DataTrigger>
                </Style.Triggers>
            </Style>
        </TextBlock.Style>
    </TextBlock>

    <TextBlock Text="{Binding search}"
            IsHitTestVisible="False"
            VerticalAlignment="Center"
            HorizontalAlignment="Left"
            Margin="38,0,0,0"
            Foreground="{DynamicResource FGTextColor}">
        <TextBlock.Style>
            <Style TargetType="{x:Type TextBlock}">
                <Style.Triggers>
                    <DataTrigger Binding="{Binding IsFocused, ElementName=searchInput}" Value="True">
                        <Setter Property="Visibility" Value="Hidden"/>
                    </DataTrigger>
                    <DataTrigger Binding="{Binding Text, ElementName=searchInput}" Value="">
                        <Setter Property="Visibility" Value="Visible"/>
                    </DataTrigger>
                </Style.Triggers>
            </Style>
        </TextBlock.Style>
    </TextBlock>
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
                <CheckBox Content="Mozilla Firefox" Tag="Web Browsers" IsChecked="false"  Name="MozillaFirefox" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="A widelyused opensource web browser known for its speed privacy features and customization options"/>
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
                <CheckBox Content="Disk cleanup"    Name="Diskcleanup" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Cleanup"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clean temporary files that are not necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore All Windows Services to Default"    Name="RestoreAllWindowsServicestoDefault" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you face a problem with some system services you can restore all services to Default"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fix Stutter in Games"    Name="FixStutterinGames" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fix Stutter in Games Disable GameBarPresenceWriter for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable the Ultimate Performance Power Plan"    Name="EnabletheUltimatePerformancePowerPlan" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Enable the Ultimate Performance Power Plan"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Reset the TCP/IP Stack"    Name="ResettheTCPIPStack" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you have an internet problem Reset network configuration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Setup Auto login"    Name="SetupAutologin" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Setup auto login Windows username"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable  Xbox Services"    Name="DisableXboxServices" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables all Xbox Services Game Mode and Optimizations for Windowed Games and fix stutter playing smooth"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Start Menu Ads"    Name="DisableStartMenuAds" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Start menu Ads and Settings"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Windows Web Search"    Name="DisableWindowsWebSearch" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable web search in Windows by Modify the registry settings related to Windows Search for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Turn off background Apps"    Name="TurnoffbackgroundApps" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Turn off background apps for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable suggestions on Start Menu"    Name="DisablesuggestionsonStartMenu" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables suggestions on start menu for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clean Taskbar"    Name="CleanTaskbar" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable the News and interests and People icon Show Search icon only for Windows 1011"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Folder Shortcuts From File Explorer"    Name="RemoveFolderShortcutsFromFileExplorer" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remove Documents Videos Pictures Desktop Shortcuts from File Explorer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Optimize Windows Services"    Name="OptimizeWindowsServices" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Print Spooler Fax Diagnostic Policy Downloaded Maps Manager Windows Error Reporting Service Remote Registry  Internet Connection Sharing Disables Telemetry and Data "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Windows 10/11 Bloatware"    Name="RemoveWindows1011Bloatware" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="BingNews GetHelp Getstarted Messaging Microsoft3DViewer MicrosoftOfficeHub MicrosoftSolitaireCollection News OfficeLens OfficeOneNote OfficeSway OneConnect People Print3D RemoteDesktop SkypeApp StorePurchaseApp OfficeTodoList Whiteboard WindowsAlarms WindowsCamera windowscommunicationsapps WindowsFeedbackHub WindowsMaps WindowsSoundRecorder XboxTCUI XboxApp XboxGameOverlay XboxIdentityProvider XboxSpeechToTextOverlay ZuneMusic ZuneVideo WindowsCortana MSPaint Clipchamp"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Hibernate"    Name="DisableHibernate" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hibernate is a powersaving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable OneDrive"    Name="DisableOneDrive" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disabling OneDrive for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Activate Windows Old Photo Viewer"    Name="ActivateWindowsOldPhotoViewer" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="This tweak enables the classic Windows Photo Viewer for Windows 10"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore Classic Context Menu Windows 11"    Name="RestoreClassicContextMenuWindows11" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Restore the old context menu for Windows 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Copilot in Windows 11"    Name="RemoveCopilotinWindows11" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop Copilot in Windows appears as a side bar docked on the Windows desktop and is designed to help users get things done in Windows Copilot in Windows can perform common tasks in Windows like changing Windows settings which makes it different from the browserbased Copilot in Edge"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Recall Snapshots in Windows 11 24H"    Name="DisableRecallSnapshotsinWindows1124H" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Recall is an upcoming preview experience exclusive to Copilot PCs that will help you easily find and remember things youve seen using natural language"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Delete Thumbnail Cache"    Name="DeleteThumbnailCache" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="removing the stored image thumbnails on your computer These thumbnails are small versions of images used by the operating system to display image previews quickly Over time the cache can become large or corrupted causing slowdowns or display issues Deleting it can free up space and resolve such issues as the system will regenerate"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Old Volume Control in Windows 10"    Name="OldVolumeControlinWindows10" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="The old volume control in Windows 10 refers to the classic audio mixer interface that was used in earlier versions of Windows before the modern volume control system was introduced This interface allowed users to adjust the volume for individual applications separately providing a more detailed and flexible approach to managing audio levels"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Toggle Key Sounds"    Name="DisableToggleKeySounds" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Toggle key sounds in Windows are audio cues that play when you press the Caps Lock Num Lock or Scroll Lock keys These sounds help users identify when these keys are activated or deactivated"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clear Start Menu Windows 11"    Name="ClearStartMenuWindows11" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clear all pinned apps from the start menu"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Homegroup"    Name="DisableHomegroup" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables HomeGroup  HomeGroup is a passwordprotected home networking service that lets you share your stuff with other PCs that are currently running and connected to your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Home and Gallery from explorer"    Name="RemoveHomeandGalleryfromexplorer" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Removes the Home and Gallery from explorer and sets This PC as default"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable all Privacy Settings"    Name="DisableallPrivacySettings" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable WifiSense  Activity History  ActivityFeed Telemetry  DataCollection"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Autoplay and Autorun"    Name="DisableAutoplayandAutorun" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disabling autoplay in Windows prevents the automatic launch of media or applications when a removable device such as a USB drive or CD is connected to the computer Autoplay is a feature that by default prompts the user to choose an action whenever a new media device is inserted such as playing a video or opening a file"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable SMB Server"    Name="DisableSMBServer" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="SMB Server enables file and printer sharing over a network allowing access to resources on remote computers as if they were local"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Set current network profile to public"    Name="Setcurrentnetworkprofiletopublic" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Deny file sharing device discovery etc"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable F8 boot menu options"    Name="EnableF8bootmenuoptions" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Enable F8 boot menu options"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable display and sleep mode timeouts"    Name="Disabledisplayandsleepmodetimeouts" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you use your device frequently disable this"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Set Wallpaper desktop Quality to 100%"    Name="SetWallpaperdesktopQualityto100" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Personalization"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Its Microsoft what should I say"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Windows Transparency"    Name="DisableWindowsTransparency" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Windows transparency has a significant impact on performance disable it if you want performance"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable scheduled defragmentation task"    Name="Disablescheduleddefragmentationtask" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Defragmentation in Windows optimizes disk performance by reorganizing fragmented data improving access times and system efficiency"/>
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
                <CheckBox Content="Show file extensions" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleShowExt" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show file extensions in Windows displays the suffix at the end of file names like txt jpg exe indicating file types and helping users identify which programs can open them simplifying file management and differentiation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Show Super Hidden" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleShowHidden" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show Super Hidden displays files and folders in Windows that are hidden beyond standard hidden files often system files to prevent accidental changes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dark Mode" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleDarkMode" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Personalize"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dark Mode is a setting that changes the screen to darker colors reducing eye strain and saving battery life on OLED screens"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NumLook" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleNumLook" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Toggle the Num Lock key state when your computer starts"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Sticky Keys" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleStickyKeys" FontWeight="SemiBold" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="Accessibility"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" Foreground="{DynamicResource DefaultTextColor2}"  FontSize="15" FontWeight="SemiBold" VerticalAlignment="Center" TextWrapping="Wrap" Text="Sticky keys is an accessibility feature of some graphical user interfaces which assists users who have physical disabilities or help users reduce repetitive strain injury"/>
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
      Width="766"
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
    Check-Date
})

# Close Event handler
$itt["window"].add_Closing($onClosingEvent)

# Show Window
$itt["window"].ShowDialog() | Out-Null

#===========================================================================
#endregion End Main
#===========================================================================
