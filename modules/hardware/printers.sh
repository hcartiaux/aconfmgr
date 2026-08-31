# Printing
AddPackage cups # OpenPrinting CUPS - daemon package
AddPackage system-config-printer # A CUPS printer configuration tool and status applet

# CopyFile /etc/cups/printers.conf
IgnorePath /etc/cups/\*
CreateFile /etc/samba/smb.conf > /dev/null

SystemdEnable cups /usr/lib/systemd/system/cups.service
