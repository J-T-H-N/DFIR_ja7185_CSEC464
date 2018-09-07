#Time
Get-Date
Get-TimeZone
Get-CimInstance -ClassName win32_operatingsystem | select csname, lastbootuptime

#OS Version
[environment]::OSVersion.Version
(Get-WmiObject Win32_OperatingSystem).Name

#System Hardware Specs
Get-WmiObject win32_processor
Get-WmiObject -Class Win32_ComputerSystem
Get-Disk
gdr -PSProvider 'FileSystem'
Get-WmiObject Win32_Volume | Format-Table Name, Label, FreeSpace, Capacity

#Domain Controller
Get-ADDomainController -Filter * | Select Name, ipv4Address, OperatingSystem, site | Sort-Object -Property Name

#Hostname and domain
hostname
(Get-WmiObject Win32_ComputerSystem).Domain

#List of users

#Start at boot
Get-Service | select -property name,starttype
wmic startup get caption,command

#List Scheduled Tasks
wmic startup get caption,command

#Network
ipconfig /all
arp -a
getmac
Get-NetRoute
Netstat -a -b
Get-DnsClientCache
 
#Network Shares
Get-SMBShare

#Printers
Get-WMIObject -Class Win32_Printer -ComputerName $ComputerName

#Wireless Profiles
NETSH WLAN SHOW PROFILE

#Installed Software
Get-WmiObject -Class Win32_Product

#Process List
Get-Process

#Driver List
Get-WmiObject Win32_PnPSignedDriver| select devicename, driverversion

#3 Unique Artifacts
Get-Certificate
Get-EventLog -List
Get-WindowsImage
