
$session = Connect-AzAccount

Write-Host "[Session] $session"

$tenant_id   = (Get-AzContext).Tenant.Id
$account     = (Get-AzContext).Account
$environment = (Get-AzContext).Environment

Write-Host "
[Tenant]      $tenant_id
[Account]     $account
[Environment] $environment
"