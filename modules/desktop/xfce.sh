# Xorg installation
AddPackageGroup xorg
AddPackageGroup xorg-drivers
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
echo exec startxfce4 > $HOME/.xinitrc

# XFCE4 packages
AddPackageGroup xfce4
AddPackageGroup xfce4-goodies

# XFCE4 optional dependencies
AddPackage gvfs # Virtual filesystem implementation for GIO
AddPackage pavucontrol # PulseAudio Volume Control
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
