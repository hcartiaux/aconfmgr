CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf

# Install plasma-meta
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage plasma-meta # Meta package to install KDE Plasma

# Install kde-applications-meta
AddPackage pyside6 # Enables the use of Qt6 APIs in Python applications
AddPackage cronie # Daemon that runs specified programs at scheduled times and related tools
AddPackage tesseract-data-fra # Tesseract OCR data (fra)
AddPackage kde-applications-meta # Meta package for KDE Applications

# SSDM manually
AddPackage --foreign sddm-archlinux-theme-git # Archlinux Theme for SDDM
CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/kde_settings.conf
CopyFile /usr/share/sddm/themes/archlinux/theme.conf.user
SystemdEnable sddm /usr/lib/systemd/system/sddm.service

# Dictionaries
AddPackage aspell-en # English dictionary for aspell
AddPackage aspell-fr # French dictionary for aspell
AddPackage hunspell-en_us # US English hunspell dictionaries

# Yakuake skin
AddPackage --foreign yakuake-skin-breeze-thin-dark # A Breeze Thin Dark skin for Yakuake (Plasma 5)
