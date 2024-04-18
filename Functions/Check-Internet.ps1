function Test-InternetConnection {
    try {
        $ping = New-Object System.Net.NetworkInformation.Ping
        $response = $ping.Send("www.google.com")
        if ($response.Status -eq "Success") {
            return $true
        } else {
            return $false
        }
    } catch {
        return $false
    }
}

