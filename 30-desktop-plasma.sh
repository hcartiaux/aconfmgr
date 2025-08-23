# X11 keymap configuration
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf

# mdns and network service discovery
AddPackage nss-mdns # glibc plugin providing host name resolution via mDNS
AddPackage avahi # Service Discovery for Linux using mDNS/DNS-SD (compatible with Bonjour)
f="$(GetPackageOriginalFile filesystem /etc/nsswitch.conf)"
sed -i '/^hosts:/ s/resolve/mdns_minimal [NOTFOUND=return] resolve/' "$f"
SystemdEnable avahi /usr/lib/systemd/system/avahi-daemon.service

# VLC media player (Phonon backend)
AddPackage vlc # Multi-platform MPEG, VCD/DVD, and DivX player
AddPackage vlc-plugins-all # Multi-platform MPEG, VCD/DVD, and DivX player - all plugins
AddPackage phonon-qt6-vlc # Phonon VLC backend for Qt6
AddPackage libdvdcss # Portable abstraction library for DVD decryption

# Install plasma-meta
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage plasma-meta # Meta package to install KDE Plasma

# Install kde-applications-meta
AddPackage pyside6 # Enables the use of Qt6 APIs in Python applications
AddPackage cronie # Daemon that runs specified programs at scheduled times and related tools
AddPackage tesseract-data-fra # Tesseract OCR data (fra)
AddPackage kde-applications-meta # Meta package for KDE Applications

# Desktop login manager
AddPackage --foreign solarized-sddm-theme # A solarized SDDM theme
CopyFile /usr/share/sddm/themes/solarized-sddm-theme/theme.conf.user
CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/wayland.conf
CopyFile /etc/sddm.conf.d/kde_settings.conf
SystemdEnable sddm /usr/lib/systemd/system/sddm.service

# Dictionaries
AddPackage aspell-en # English dictionary for aspell
AddPackage aspell-fr # French dictionary for aspell
AddPackage hunspell-en_us # US English hunspell dictionaries

# Yakuake skin
AddPackage --foreign yakuake-skin-breeze-thin-dark # A Breeze Thin Dark skin for Yakuake (Plasma 5)
