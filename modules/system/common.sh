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
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Luxembourg
CopyFile /etc/vconsole.conf
echo "LANG=$lang" > "$(CreateFile /etc/locale.conf)"

# issue file displayed in ttys
CPU=$(awk -F': ' '/^model name/ {print $2; exit}'              /proc/cpuinfo)
MEM=$(awk        '/^MemTotal/   {printf "%.0f", $2/1024/1024}' /proc/meminfo)
MODEL=$(cat /sys/class/dmi/id/product_name)
InstallTemplate /etc/issue

# Specify locales
f="$(GetPackageOriginalFile glibc /etc/locale.gen)"
sed -i "s/^#\(en_US.UTF-8\|${lang}\)/\1/g" "$f"

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

# Sudo configuration
CopyFile /etc/sudoers
CopyFile /etc/sudoers.d/session 440
