$OU = "OU=ToDelete,OU=foo,OU=foo,OU=foo,DC=foo,DC=local"
$users = Get-ADUser -Filter * -SearchBase $OU
foreach($user in $users){Set-ADUSer -Identity $user -Replace @{msExchHideFromAddressLists=$true}}

