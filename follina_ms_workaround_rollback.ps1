if(Get-HotFix -Id KB5014699)
{   
    Remove-PSDrive -PSProvider Registry -Name HKCR
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT

        $testvalue = "HKCR:\ms-msdt\shell\open\command"
        If( -Not (Test-Path $testvalue))
        {
    
            $testdatei =  "C:\ms-msdt-reg-ex\*.reg"
            If (Test-Path $testdatei -NewerThan "May 15, 2022")

            {
            New-Item -path HKCR:\ms-msdt
            New-Item -path HKCR:\ms-msdt\shell
            New-Item -path HKCR:\ms-msdt\shell\open
            New-Item -path HKCR:\ms-msdt\shell\open\command
            New-ItemProperty -Type String -path HKCR:\ms-msdt\shell\open\command -Name   Standard -value "%SystemRoot%\system32\msdt.exe"
            }
        
            else
            {
            #Write-Host "schon alles da 0"
            exit
            }
      }
      else
      {
      #Write-Host "schon alles da 1"
      exit
      }
}

else
{
exit
}
