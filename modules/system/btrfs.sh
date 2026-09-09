# Btrfs tools and configuration
AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage compsize # Calculate compression ratio of a set of files on Btrfs
AddPackage duperemove # Btrfs extent deduplication utility
AddPackage snapper # A tool for managing BTRFS and LVM snapshots
AddPackage snap-pac # Pacman hooks that use snapper to create pre/post btrfs snapshots like openSUSE's YaST
CopyFile /etc/conf.d/snapper
CopyFile /etc/snapper/configs/root 640
CopyFile /etc/snapper/configs/home 640
SystemdEnable snapper /usr/lib/systemd/system/snapper-cleanup.timer
SystemdEnable snapper /usr/lib/systemd/system/snapper-timeline.timer
