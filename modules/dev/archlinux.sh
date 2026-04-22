# Archlinux packaging
AddPackage devtools # Tools for Arch Linux package maintainers
AddPackage arch-signoff # Sign off Arch Linux testing packages
AddPackage nvchecker # New version checker for software releases
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
SystemdEnable pacman-contrib /usr/lib/systemd/system/paccache.timer
AddPackage namcap # A Pacman package analyzer
AddPackage fakechroot # Gives a fake chroot environment
