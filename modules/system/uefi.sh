# UEFI and Secure Boot
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage efitools # Tools for manipulating UEFI secure boot platforms
AddPackage systemd-ukify # Combine kernel and initrd into a signed Unified Kernel Image
AddPackage sbctl # Secure Boot key manager
AddPackage sbsigntools # Tools to add signatures to EFI binaries and Drivers
CopyFile /etc/pacman.d/hooks/95-systemd-boot.hook # Pacman hook to upgrade systemd-boot after systemd upgrade.

# Kernel configuration
CopyProfileFile /etc/cmdline.d/root.conf
CopyFile /etc/cmdline.d/default.conf

# ESP permissions
CopyFile /efi/loader/loader.conf 700
SetFileProperty /efi/loader/loader.conf mode 700
SetFileProperty /efi/loader mode 700
SetFileProperty /efi mode 700

# UKI configuration
CopyFile /etc/kernel/uki.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux.preset
CopyFile /etc/mkinitcpio.d/linux-lts.preset
