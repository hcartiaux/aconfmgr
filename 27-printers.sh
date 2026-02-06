# Printing
AddPackage cups # OpenPrinting CUPS - daemon package
# CopyFile /etc/cups/printers.conf

CreateFile /etc/samba/smb.conf > /dev/null

SystemdEnable cups /usr/lib/systemd/system/cups.service
