
Connect-AzAccount

Get-AzProviderOperation "Microsoft.Support/*" | Select-Object * | Format-Table

Get-AzRoleDefinition -Name "Reader" | ConvertTo-JSON | Out-File  ".\ReaderSupportRole.json"

