AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage rsync
AddPackage vim

## Enable ssh-agent
CopyFile "/etc/systemd/user/ssh-agent.service"
SystemdEnable --type user --from-file "/etc/systemd/user/ssh-agent.service"
systemd_files+=(user/ssh-agent.service)
