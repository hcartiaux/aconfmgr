# Printing
AddPackage cups # OpenPrinting CUPS - daemon package
AddPackage --foreign epson-inkjet-printer-escpr # Epson Inkjet Printer Driver (ESC/P-R) for Linux

IgnorePath /etc/cups/\*
#IgnorePathsExcept /etc/cups/ printers.conf ppd/EPSON_ET-2820_Series.ppd
#CreateLink /etc/cups/ppd/EPSON_ET-2820_Series.ppd /usr/share/ppd/epson-inkjet-printer-escpr/Epson-ET-2820_Series-epson-escpr-en.ppd
#CopyFile /etc/cups/printers.conf

SystemdEnable cups /usr/lib/systemd/system/cups.service
