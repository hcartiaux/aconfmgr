CopyFile "/etc/systemd/user/ssh-agent.service"
SystemdEnable --type user --from-file "/etc/systemd/user/ssh-agent.service"
systemd_files+=(user/ssh-agent.service)

SystemdEnable networkmanager /usr/lib/systemd/system/NetworkManager.service
SystemdEnable bluez          /usr/lib/systemd/system/bluetooth.service
SystemdEnable apparmor       /usr/lib/systemd/system/apparmor.service
SystemdEnable tlp            /usr/lib/systemd/system/tlp.service
SystemdEnable sddm           /usr/lib/systemd/system/sddm.service

