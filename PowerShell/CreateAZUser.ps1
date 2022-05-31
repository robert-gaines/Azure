
function CreateNewAZUser()
{
    Write-Host "[*] Azure AD User Creation Script"

    $display_name        = Read-Host "[+] Display Name-> "

    $mail_nickname       = Read-Host "[+] Mail Nickname-> "

    $user_principle_name = Read-Host "[+] User Principal Name-> "

    $password            = Read-Host -AsSecureString "[+] Password-> " 

    #$password_profile = New-Object -TypeName "Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Models.ApiV10.IMicrosoftGraphPasswordProfile" -Property @{Password=$password} 

    New-AzADUser -DisplayName $display_name -UserPrincipalName $user_principle_name -Password $password -MailNickname $mail_nickname
}

Connect-AzAccount

CreateNewAZUser