AddPackage acpi # Client for battery, power, and thermal readings
AddPackage powertop # A tool to diagnose issues with power consumption and power management

AddPackage tlp # Linux Advanced Power Management
SystemdEnable tlp /usr/lib/systemd/system/tlp.service
AddPackage tlp-pd # Linux Advanced Power Management - Power Profiles Daemon
