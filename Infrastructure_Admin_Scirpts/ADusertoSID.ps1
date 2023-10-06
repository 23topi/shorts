$DOMAIN = "Domain"
$USERNAME = "Name"

$objUser = New-Object System.Security.Principal.NTAccount($DOMAIN, $USERNAME)
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSID.Value