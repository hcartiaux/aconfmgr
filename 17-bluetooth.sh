AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
IgnorePath /var/lib/bluetooth/\*
