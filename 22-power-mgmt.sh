AddPackage acpi # Client for battery, power, and thermal readings

AddPackage tlp # Linux Advanced Power Management
SystemdEnable tlp /usr/lib/systemd/system/tlp.service
