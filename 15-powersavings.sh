AddPackage tlp # Linux Advanced Power Management
CreateLink /etc/systemd/system/multi-user.target.wants/tlp.service /usr/lib/systemd/system/tlp.service
IgnorePath /var/lib/tlp/rfkill_saved
