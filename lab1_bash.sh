#Time
date
uptime

#OS Version
uname -a
lsb_release -a

#System Hardware
cat /proc/cpuinfo | grep 'model name' | uniq
lscpu
grep MemTotal /proc/meminfo | awk '{print $2}'
fdisk -l | grep Disk
df -H
$ cat /proc/mounts

#Hostname and domain
hostname
hostname --fqdn

#List of users
cut -d: -f1 /etc/passwd
for x in cut -d: -f1 /etc/passwd
do
  last x
done

#Start at boot
service --status-all
ls /etc/init.d -1

#List of scheduled tasks
for user in $(cut -f1 -d: /etc/passwd); do crontab -u $user -l; done

#Network
arp
ifconfig -a
route -n
netstat -a | more
netstat -at
netstat -au
netstat -l

#Network shares
smbstatus --shares

#Printers
lpstat -p -d

#Wireless Profile
netsh wlan show networks

#Process List
htop

#Driver list
lsmod

