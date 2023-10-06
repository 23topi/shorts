$SID = "SID"

$objSID = New-Object System.Security.Principal.SecurityIdentifier($SID)
$objUser = $objSID.Translate([System.Security.Principal.NTAccount])
$objUser.Value



# S-1-12-1-...
