# Install plasma deps
AddPackage phonon-qt6-vlc # Phonon VLC backend for Qt6
AddPackage qt6-multimedia-ffmpeg # FFMpeg backend for qt6-multimedia
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement

# Install plasma-meta
AddPackage plasma-meta # Meta package to install KDE Plasma
AddPackage plasma-workspace-wallpapers # Additional wallpapers for the Plasma Workspace

# Install kde-applications-meta deps
AddPackage pyside6 # Enables the use of Qt6 APIs in Python applications
AddPackage cronie # Daemon that runs specified programs at scheduled times and related tools
AddPackage tesseract-data-fra # Tesseract OCR data (fra)
AddPackage tesseract-data-eng # Tesseract OCR data (eng)

# Install kde-applications-meta
AddPackage kde-applications-meta # Meta package for KDE Applications

# Desktop login manager
CopyFile /etc/plasmalogin.conf
SystemdEnable plasma-login-manager /usr/lib/systemd/system/plasmalogin.service

# Dictionaries
AddPackage aspell-en # English dictionary for aspell
AddPackage aspell-fr # French dictionary for aspell
AddPackage hunspell-en_us # US English hunspell dictionaries

# Yakuake skin
AddPackage --foreign yakuake-skin-breeze-thin-dark # A Breeze Thin Dark skin for Yakuake (Plasma 5)
