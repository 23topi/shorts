$SID = "SID"

$objSID = New-Object System.Security.Principal.SecurityIdentifier($SID)
$objUser = $objSID.Translate([System.Security.Principal.NTAccount])
$objUser.Value



# SID
# wmic useraccount get sid,name
# Get-ADUser -Identity 'user' | select SID