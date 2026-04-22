# mdns and network service discovery
AddPackage nss-mdns # glibc plugin providing host name resolution via mDNS
AddPackage avahi # Service Discovery for Linux using mDNS/DNS-SD (compatible with Bonjour)
f="$(GetPackageOriginalFile filesystem /etc/nsswitch.conf)"
sed -i '/^hosts:/ s/resolve/mdns_minimal [NOTFOUND=return] resolve/' "$f"
SystemdEnable avahi /usr/lib/systemd/system/avahi-daemon.service
