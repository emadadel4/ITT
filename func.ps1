#region Load and ConvertFrom-Json  json file
function Apps {

	#region Online
	    #$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/software.json"
	    #$result = Invoke-WebRequest -Uri $url -UseBasicParsing
	    #$json = $result.Content | ConvertFrom-Json 
    #endregion

	#region Offline for local test
	    $json = Get-Content -Path './js/software.json' | ConvertFrom-Json
        return $json 
    #endregion
  
}
#endregion


