AddPackage fwupd # Simple daemon to allow session software to update firmware
AddPackage shim # EFI preloader (unsigned EFI binaries)
CopyFile /etc/fwupd/fwupd.conf
