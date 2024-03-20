[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')  	 | out-null
[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') 	 | out-null
[System.Reflection.Assembly]::LoadWithPartialName('System.Drawing') 		 | out-null
[System.Reflection.Assembly]::LoadWithPartialName('WindowsFormsIntegration') | out-null

# URL of the file to download
$url = "http://www.zbshareware.com/downloads/setup/USBGuardSetup6.9.exe"

# Destination path for the downloaded file
$destinationPath = "$env:temp/test.exe"

if (Test-Path $destinationPath)
{
    Remove-Item -Verbose -Force $destinationPath
}


# Start a background job to download the file
$job = Start-Job -ScriptBlock {
    param($url, $destinationPath)

    # Download the file
    Invoke-WebRequest -Uri $url -OutFile $destinationPath
} -ArgumentList $url, $destinationPath

# Wait for the job to complete
Wait-Job $job

# Display a message when the download is complete
Write-Host "Download complete!"

# Show a WPF message box
([System.Windows.MessageBox]::Show('Do you want install selected programes', 'ITT', [System.Windows.Forms.MessageBoxButtons]::OK) -eq 'OK')
