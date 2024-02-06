function ProcessingAnimation($scriptBlock) {
    $cursorTop = [Console]::CursorTop
    
    try {
        [Console]::CursorVisible = $false
        
        $counter = 0
        $frames = '|', '/', '-', '\' 
        $jobName = Start-Job -ScriptBlock $scriptBlock
    
        while($jobName.JobStateInfo.State -eq "Running") {
            $frame = $frames[$counter % $frames.Length]
            
            Write-Host "$frame" -NoNewLine
            [Console]::SetCursorPosition(0, $cursorTop)
            
            $counter += 1
            Start-Sleep -Milliseconds 125
        }
        
        # Only needed if you use a multiline frames
        Write-Host ($frames[0] -replace '[^\s+]', ' ')
    }
    finally {
        [Console]::SetCursorPosition(0, $cursorTop)
        [Console]::CursorVisible = $true
    }
}

# Example:
ProcessingAnimation { Start-Sleep 5 }