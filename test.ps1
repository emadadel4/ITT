# Define the JSON file path
$jsonFilePath = './js/software.json'

# Read the JSON file
$jsonContent = Get-Content -Path $jsonFilePath | ConvertFrom-Json

# Define the download directory
$downloadDir = 'D:\\Download'

# Create the download directory if it doesn't exist
if (!(Test-Path -Path $downloadDir)) {
    New-Item -ItemType Directory -Path $downloadDir | Out-Null
}

function Download-File {
    param($url, $filePath)

    # Download the file and show a progress bar with percentage
    $webClient = New-Object System.Net.WebClient
    Register-ObjectEvent -InputObject $webClient -EventName DownloadProgressChanged -Action {
        Write-Progress -Activity "Downloading `"$($event.SourceEventArgs.UserState)`"" -PercentComplete $event.SourceEventArgs.ProgressPercentage
    }
    $webClient.DownloadFileAsync($url, $filePath, $filePath)
    while ($webClient.IsBusy) {
        Start-Sleep -Milliseconds 100
    }
}

function Install-And-Exit-Program {
    param($filePath, $processName)

    # Install the program
    #$process = Start-Process 'msiexec.exe' -ArgumentList "/I `"$filePath`" /qn" -PassThru

    $exeArgs = '/verysilent /s /v/qn /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'

    $process = Start-Process -Wait $filePath -ArgumentList $exeArgs -PassThru

    $process.WaitForExit()

    # Exit from the installed program
    Get-Process -Name $processName -ErrorAction SilentlyContinue | Stop-Process -Force
}

# Start downloading files in parallel using jobs
foreach ($item in $jsonContent) {
    $url = $item.url
    $fileName = $item.fileName
    $filePath = Join-Path -Path $downloadDir -ChildPath $fileName

    Start-Job -ScriptBlock ${function:Download-File} -ArgumentList $url, $filePath
}

# Wait for all jobs to complete
while (Get-Job -State 'Running') {
    Start-Sleep -Seconds 1
}

# Clean up the jobs
Get-Job | Remove-Job

# Show a message when all downloads are complete
Write-Host 'All downloads are complete.'

# Install each downloaded file and exit from the program before moving on to the next one
foreach ($item in $jsonContent) {
    $fileName = $item.fileName
    $filePath = Join-Path -Path $downloadDir -ChildPath $fileName
    $processName = $fileName -replace '\..+$'  # Remove the file extension to get the process name

    Install-And-Exit-Program -filePath $filePath -processName $processName
}

Write-Host 'All installations are complete and all programs have been exited.'
