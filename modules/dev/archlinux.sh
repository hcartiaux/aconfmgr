# Archlinux packaging
AddPackage devtools # Tools for Arch Linux package maintainers
AddPackage arch-rebuild-order # CLI tool to determine the rebuild order of provided package(s)
AddPackage arch-repro-status # Check the reproducibility status of your Arch Linux packages
AddPackage arch-signoff # Sign off Arch Linux testing packages
AddPackage pacquery # A CLI tool to get JSON output of pacman packages from the system's syncdb
AddPackage nvchecker # New version checker for software releases
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
SystemdEnable pacman-contrib /usr/lib/systemd/system/paccache.timer
AddPackage namcap # A Pacman package analyzer
AddPackage fakechroot # Gives a fake chroot environment
