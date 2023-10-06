$SID = "S-1-12-1-2952765392-1128664258-1674567319-1539630735"

$objSID = New-Object System.Security.Principal.SecurityIdentifier($SID)
$objUser = $objSID.Translate([System.Security.Principal.NTAccount])
$objUser.Value



# S-1-12-1-2952765392-1128664258-1674567319-1539630735