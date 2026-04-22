# SSH tools
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage sshuttle # Transparent proxy server that forwards all TCP packets over ssh
AddPackage sshpass # Fool ssh into accepting an interactive password non-interactively
AddPackage --foreign clustershell # Python framework for efficient cluster administration

## Enable ssh-agent
CopyFile "/etc/systemd/user/ssh-agent.service"
SystemdEnable --type user --from-file "/etc/systemd/user/ssh-agent.service"
systemd_files+=(user/ssh-agent.service)
