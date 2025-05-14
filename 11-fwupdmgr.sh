AddPackage fwupd
AddPackage shim # EFI preloader (unsigned EFI binaries)

CopyFile /etc/fwupd/fwupd.conf
IgnorePath /var/lib/fwupd/\*
IgnorePath /var/lib/passim/\*

sudo sbctl sign -s /usr/lib/fwupd/efi/fwupdx64.efi -o /usr/lib/fwupd/efi/fwupdx64.efi.signed
sudo cp /usr/share/shim/shimx64.efi /efi/EFI/systemd
sudo cp /usr/lib/fwupd/efi/fwupdx64.efi /efi/EFI/systemd
sudo sbctl sign --save /efi/EFI/systemd/fwupdx64.efi
sudo sbctl sign --save /efi/EFI/systemd/shimx64.efi
