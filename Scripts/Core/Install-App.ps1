
function Install-App {
    param (
        [string]$appName,
        [string]$appChoco,
        [string]$appWinget
    )

    Install-Choco

        $chocoApp = Join-Path "C:\ProgramData\chocolatey\lib\$appName"

        if(Test-Path $chocoApp){
            Remove-Item -Path $chocoApp -Force -Recurse
        }
        
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