# Base packages
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel
AddPackage linux-lts # The LTS Linux kernel and modules
AddPackage linux-lts-headers # Headers and scripts for building modules for the LTS Linux kernel

# Base system configuration
SetFileProperty / mode 555
CopyProfileFile /etc/fstab
CopyProfileFile /etc/hostname
CopyFile /etc/locale.conf
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Luxembourg
CopyProfileFile /etc/cmdline.d/root.conf
CopyFile /etc/cmdline.d/default.conf
CopyFile /etc/vconsole.conf

# issue file displayed in ttys
CPU=$(awk -F': ' '/^model name/ {print $2; exit}'              /proc/cpuinfo)
MEM=$(awk        '/^MemTotal/   {printf "%.0f", $2/1024/1024}' /proc/meminfo)
MODEL=$(cat /sys/class/dmi/id/product_name)
InstallTemplate /etc/issue

# Specify locales
f="$(GetPackageOriginalFile glibc /etc/locale.gen)"
sed -i 's/^#\(en_US.UTF-8\)/\1/g' "$f"

# Enable Magic SysRq
echo "kernel.sysrq = 1" > "$(CreateFile /etc/sysctl.d/99-sysrq.conf)"

# Systemd
f="$(GetPackageOriginalFile systemd /etc/systemd/journald.conf)"
sed -i 's/^#SystemMaxUse=/SystemMaxUse=512M/g' "$f"

# Archlinux configuration
CopyFile /etc/makepkg.conf
CopyFile /etc/pacman.conf
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign yay # Yet another yogurt. Pacman wrapper and AUR helper written in go.

# UEFI and Secure Boot
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage efitools # Tools for manipulating UEFI secure boot platforms
AddPackage systemd-ukify # Combine kernel and initrd into a signed Unified Kernel Image
AddPackage sbctl # Secure Boot key manager
AddPackage sbsigntools # Tools to add signatures to EFI binaries and Drivers
CopyFile /etc/pacman.d/hooks/95-systemd-boot.hook # Pacman hook to upgrade systemd-boot after systemd upgrade.

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

# Sudo configuration
CopyFile /etc/sudoers
CopyFile /etc/sudoers.d/session 440
