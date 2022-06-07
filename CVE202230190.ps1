# Delete Ms diagnostic tool registry key (vulnerability CVE2022-30190)

# New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
$testdatei =  "C:\*.reg"       # "C:\ms-msdt_ps_reg_ex.reg_$(get-date -f yyyyMMdd).reg"

If (Test-Path $testdatei)
{
     # Write-Host -BackGroundColor Green "Die Datei $($testdatei) existiert."
     Exit
}

else
{

    
    # Write-Host -BackGroundColor red "Die Datei $($testdatei) existiert nicht und wird angelegt."
    
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT  # mount HKEY_CLASSES_ROOT key
    
    # Export reg key
    $strExportRegKey = „HKCR\ms-msdt\shell\open\command“
    $strExportPath = „C:\“
    $strExportFileName = „ms-msdt_ps_reg_ex.reg_$(get-date -f yyyyMMdd).reg“
    reg export $strExportRegKey $strExportPath\$strExportFileName
    
}
# delete reg key
Remove-Item -Path HKCR:\ms-msdt -Recurse
Exit
