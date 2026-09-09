# Zram
AddPackage zram-generator # Systemd unit generator for zram devices
CopyFile /etc/sysctl.d/99-vm-zram-parameters.conf
CopyFile /etc/systemd/zram-generator.conf
systemd_files+=(zram-generator.conf)
