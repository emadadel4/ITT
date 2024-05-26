<p align="center" dir="auto">
  <a href="https://techforpalestine.org/learn-more" rel="nofollow">
    <img src="https://raw.githubusercontent.com/Safouene1/support-palestine-banner/master/StandWithPalestine.svg" alt="Ceasefire Now" style="max-width: 100%;">
  </a>
</p>
  
<h1 align="center">ITT (Install and Tweaks Tool) 🛠️ 🖥️ </h1>

<center>
<a target="_blank" rel="noopener noreferrer" href="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/demo.PNG"><img src="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/demo.PNG" alt="screen-install" style="max-width: 100%;"></a>
</center>

## Overview
ITT (Install and Tweak Tool) is a collection of PowerShell scripts designed to automate the installation of programs and apply Windows tweaks. It simplifies the process of setting up a new Windows environment by providing a streamlined method for installing commonly used software and customizing system settings.


## Usage

<p dir="auto"><strong>On Windows 8/8.1/10/11:</strong>
     Right-click on the start menu.
    Choose "PowerShell" or "Terminal" and paste any command of these.
</p>

```sh
irm bit.ly/emadadel | iex
```

or

```sh
 iwr -useb bit.ly/emadadel | iex
```

running it directly from github

```sh
irm https://raw.githubusercontent.com/emadadel4/ITT/main/itt.ps1 | iex
```

## How to add a new App/Tweak/OST/Qoute/
<ul>
  <li><p dir="auto"><strong>Powershell 7 (Recommended) for build</strong></p></li>
  <li><p dir="auto"><strong>Fork the repo</strong></p></li>
  <li><p dir="auto"><strong>Open ITT directory in Powershell</strong></p></li>
</ul>

```sh
Set-Location "C:\Users\$env:USERNAME\Documents\Github\ITT"
```
  <li><p dir="auto"><strong>..and choose what you will add.</strong></p></li>
</ul> 
  
**Use this Command to add new App.**
```sh
newApp.ps1
```

**Use this Command to add a new Tweak.**
Note: you must know what you're doing when you add a new tweak, just be careful and test it before commit

```sh
newTweak.ps1
```

**Use this Command to add a new Soundtrack.**
```sh
newOST.ps1
```

**Use this Command to add a new Quote.**
```sh
newQuote.ps1
```

**Use this Command to build and see your changes**
```sh
build.ps1
```

<li><p dir="auto"><strong>Don't forget to test it before commit it.</strong></p></li>
</ul>

## Developer

👤 **Emad Adel**

- Telegram: [emadadel4](https://t.me/emadadel4)
- Github: [emadadel4](https://github.com/emadadel4)
- Website: https://www.eprojects.orgfree.com

## Show your support

Give a ⭐️ if this project helped you!
