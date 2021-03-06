#Storage and USB
echo -------------STORAGE_DEVICES-------------
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\USBSTOR" |Select-Object Name | Out-String
echo -------------USB_DEVICES-------------
Get-ChildItem -Path "HKLM:\SYSTEM\CurrentControlSet\Control\usbflags" |Select-Object Name | Out-String
#Startup
echo -------------STARTUP-------------
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\" | Out-String
Get-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\" | Out-String
#IE
echo -------------IE_Typed_URLs-------------
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Internet Explorer\TypedURLs" | Out-String
#Network
echo -------------Network_Connections-------------
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Nla\Cache\Intranet\*" |Select-Object PSChildName | Out-String
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles\*"|Select-Object ProfileName, Description | Out-String
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\UnManaged\*" |Select-Object Description, FirstNetwork, DnsSuffix | Out-String
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Managed\*" |Select-Object Description, FirstNetwork, DnsSuffix | Out-String
#MRU
echo -------------Most_Recently_Used-------------
echo -------------Most_Recently_Ran_Commands-------------
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" | Out-String
echo -------------Most_Recently_Typed_Paths-------------
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" | Out-String

#MRU_Office
echo -------------Most_Recently_Opened_Files_with_Microsoft_Office_Products-------------
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Office\*.0\*\File MRU" | Out-String
echo -------------Most_Recent_Save_Locations_used_with_Microsoft_Office_Products-------------
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Office\*.0\*\Place MRU" | Out-String