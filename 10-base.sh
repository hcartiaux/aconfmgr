# Base package installation
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage man-db # A utility for reading man pages
AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage efitools # Tools for manipulating UEFI secure boot platforms
AddPackage systemd-ukify # Combine kernel and initrd into a signed Unified Kernel Image
AddPackage sbctl # Secure Boot key manager
AddPackage sbsigntools # Tools to add signatures to EFI binaries and Drivers
AddPackage networkmanager # Network connection manager and user applications
AddPackage acpi # Client for battery, power, and thermal readings

# Utilities
AddPackage snapper # A tool for managing BTRFS and LVM snapshots
AddPackage snap-pac # Pacman hooks that use snapper to create pre/post btrfs snapshots like openSUSE's YaST
AddPackage git # the fast distributed version control system
AddPackage tig # Text-mode interface for Git.
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
AddPackage plocate # Alternative to locate, faster and compatible with mlocate's database.

# Security
AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)

# AUR packages
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign yay # Yet another yogurt. Pacman wrapper and AUR helper written in go.

# efi permissions

CopyFile /efi/loader/loader.conf 700
SetFileProperty /efi/loader/loader.conf mode 700
SetFileProperty /efi/loader mode 700
SetFileProperty /efi mode 700

# Filesystem
CopyFile /etc/fstab
CopyFile /etc/kernel/uki.conf
CopyFile /etc/hostname
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Luxembourg
CopyFile /etc/apparmor/parser.conf
CopyFile /etc/cmdline.d/apparmor.conf
CopyFile /etc/cmdline.d/root.conf
CopyFile /etc/conf.d/snapper
CopyFile /etc/sudoers
CopyFile /etc/vconsole.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux.preset
CopyFile /etc/pacman.d/mirrorlist
CopyFile /etc/snapper/configs/root 640
CopyFile /etc/pacman.conf
