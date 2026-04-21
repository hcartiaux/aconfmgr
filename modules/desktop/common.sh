# mdns and network service discovery
AddPackage nss-mdns # glibc plugin providing host name resolution via mDNS
AddPackage avahi # Service Discovery for Linux using mDNS/DNS-SD (compatible with Bonjour)
f="$(GetPackageOriginalFile filesystem /etc/nsswitch.conf)"
sed -i '/^hosts:/ s/resolve/mdns_minimal [NOTFOUND=return] resolve/' "$f"
SystemdEnable avahi /usr/lib/systemd/system/avahi-daemon.service

# VLC media player (Phonon backend)
AddPackage vlc # Multi-platform MPEG, VCD/DVD, and DivX player
AddPackage vlc-plugins-all # Multi-platform MPEG, VCD/DVD, and DivX player - all plugins
AddPackage libdvdcss # Portable abstraction library for DVD decryption
