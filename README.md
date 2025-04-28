# Reuseable Shell Scripts
A repository of useful shell scripts in powershell, bash, or other scripting languages.

## Powershell
### AC-PShell-History
#### SYNOPSIS
Gets History of PowerShell commands entered into the PowerShell Terminal
#### SYNTAX
```powershell
AC-PShell-History [[-SearchString] <String>]  [<CommonParameters>]
```
#### DESCRIPTION
The AC-PShell-History cmdlet prints all PowerShell commands entered in the terminal.
If the `SearchString` parameter is passed, then it will only display entries matching
the value passed to `SearchString`.
##### EXAMPLES
**Example 1**: Show All PowerShell Terminal Command History
```
powershell
PS C:\> AC-PShell-History
```
**Example 1**: Filter history by `SearchString`
```
powershell
PS C:\> AC-PShell-History -SearchString Get-Item
```
#### PARAMETERS
- `-SearchString [string]`
Specifies the target server name (FQDN or NetBIOS name) for configuration. This parameter is optional.
#### OUTPUTS
None
This cmdlet does not generate any output objects by default. It may write verbose or debug messages if requested via common parameters.

### AC-Network-GetPrivateIP
#### SYNOPSIS
Gets the current Wi-Fi private IP address of device.
#### SYNTAX
```powershell
AC-Network-GetPrivateIP
```
#### DESCRIPTION
#### OUTPUTS
String: The current Wi-Fi private IP address of device.
This cmdlet does not generate any output objects by default. It may write verbose or debug messages if requested via common parameters.