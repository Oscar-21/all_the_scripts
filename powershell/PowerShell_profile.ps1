function prompt { "PS > " }

# Search entire powershell usage history
function AC-PShell-History {
    [CmdletBinding()]
    param (
        [string]$SearchString
    )
    if ($PSBoundParameters.ContainsKey('SearchString')) {
        if ($null -eq $SearchString -or [string]::IsNullOrEmpty($SearchString)) {
            Write-Host "Please provide a value for -SearchString."
        } else {
            Get-Content `
            -Path $env:APPDATA\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt `
            | Select-String -Pattern $SearchString
        }
    } else {
        Get-Content `
        -Path $env:APPDATA\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt `
        -Raw
    }
}

# Get Current Wi-Fi IP Address
function AC-Network-GetPrivateIP {
    (Get-NetIPConfiguration `
     | Where-Object { `
         $_.IPv4DefaultGateway -ne $null -and $_.NetAdapter.Status -eq 'Up' `
     } `
     | Select-Object -First 1).IPv4Address.IPAddress
}