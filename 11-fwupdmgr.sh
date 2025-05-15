AddPackage fwupd
AddPackage shim # EFI preloader (unsigned EFI binaries)
CopyFile /etc/fwupd/fwupd.conf
IgnorePath /var/lib/fwupd/\*
IgnorePath /var/lib/passim/\*
