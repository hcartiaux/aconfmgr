# Printing
AddPackage cups # OpenPrinting CUPS - daemon package
AddPackage --foreign epson-inkjet-printer-escpr # Epson Inkjet Printer Driver (ESC/P-R) for Linux
AddPackage system-config-printer # A CUPS printer configuration tool and status applet

# CopyFile /etc/cups/printers.conf
IgnorePathsExcept /etc/cups ppd/EPSON_ET-2820_Series.ppd
CreateLink /etc/cups/ppd/EPSON_ET-2820_Series.ppd /usr/share/ppd/epson-inkjet-printer-escpr/Epson-ET-2820_Series-epson-escpr-en.ppd
CreateFile /etc/samba/smb.conf > /dev/null

SystemdEnable cups /usr/lib/systemd/system/cups.service
