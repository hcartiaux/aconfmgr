# Base
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel
AddPackage linux-lts # The LTS Linux kernel and modules
AddPackage linux-lts-headers # Headers and scripts for building modules for the LTS Linux kernel
AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage man-db # A utility for reading man pages

CopyFile /etc/fstab
CopyFile /etc/hostname
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Luxembourg
CopyFile /etc/cmdline.d/root.conf
CopyFile /etc/cmdline.d/default.conf
CopyFile /etc/vconsole.conf
CopyFile /etc/issue

# Btrfs tools
AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage compsize # Calculate compression ratio of a set of files on Btrfs
AddPackage snapper # A tool for managing BTRFS and LVM snapshots
AddPackage snap-pac # Pacman hooks that use snapper to create pre/post btrfs snapshots like openSUSE's YaST
CopyFile /etc/conf.d/snapper
CopyFile /etc/snapper/configs/root 640

# UEFI and Secure Boot
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage efitools # Tools for manipulating UEFI secure boot platforms
AddPackage systemd-ukify # Combine kernel and initrd into a signed Unified Kernel Image
AddPackage sbctl # Secure Boot key manager
AddPackage sbsigntools # Tools to add signatures to EFI binaries and Drivers
AddPackage --foreign systemd-boot-pacman-hook # Pacman hook to upgrade systemd-boot after systemd upgrade.

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

# Networking
AddPackage --foreign r8152-dkms # A kernel module for Realtek RTL8152/RTL8153/RTL8154/RTL8156 Based USB Ethernet Adapters
AddPackage networkmanager # Network connection manager and user applications
AddPackage networkmanager-openconnect # NetworkManager VPN plugin for OpenConnect
SystemdEnable networkmanager /usr/lib/systemd/system/NetworkManager.service

# Archlinux packaging
CopyFile /etc/makepkg.conf
CopyFile /etc/pacman.conf
AddPackage devtools # Tools for Arch Linux package maintainers
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign yay # Yet another yogurt. Pacman wrapper and AUR helper written in go.

# Security
CopyFile /etc/sudoers
CopyFile /etc/sudoers.d/session 440

AddPackage apparmor # Mandatory Access Control (MAC) using Linux Security Module (LSM)
CopyFile /etc/apparmor/parser.conf
CopyFile /etc/cmdline.d/apparmor.conf
SystemdEnable apparmor /usr/lib/systemd/system/apparmor.service
