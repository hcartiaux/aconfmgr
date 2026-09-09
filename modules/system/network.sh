# Networking
AddPackage networkmanager # Network connection manager and user applications
AddPackage openconnect # Open client for Cisco AnyConnect VPN
AddPackage networkmanager-openconnect # NetworkManager VPN plugin for OpenConnect
SystemdEnable networkmanager /usr/lib/systemd/system/NetworkManager.service

# 802.1x wired interface configuration, started manually with "/usr/bin/wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant-wired-enp46s0u2u4.conf -Dwired -i enp46s0u2u4"
# CopyFile /etc/wpa_supplicant/wpa_supplicant-wired-enp46s0u2u4.conf 700
IgnorePath /etc/wpa_supplicant/\*
