# Enable apparmor
AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
CopyFile /etc/apparmor/parser.conf
CopyFile /etc/cmdline.d/apparmor.conf
SystemdEnable apparmor /usr/lib/systemd/system/apparmor.service
SystemdEnable audit /usr/lib/systemd/system/auditd.service
