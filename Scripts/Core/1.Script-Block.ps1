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