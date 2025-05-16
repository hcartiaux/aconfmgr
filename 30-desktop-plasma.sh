CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf

# Install plasma-meta
AddPackage noto-fonts
AddPackage pipewire-jack
AddPackage plasma-meta # Meta package to install KDE Plasma

# Install kde-applications-meta
AddPackage pyside6
AddPackage cronie
AddPackage tesseract-data-fra
AddPackage kde-applications-meta

# SSDM manually
AddPackage --foreign sddm-archlinux-theme-git
CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/kde_settings.conf
CopyFile /usr/share/sddm/themes/archlinux/theme.conf.user
SystemdEnable sddm /usr/lib/systemd/system/sddm.service

# Dictionaries
AddPackage aspell-en
AddPackage aspell-fr
AddPackage hunspell-en_us # US English hunspell dictionaries

# Printing
AddPackage cups # OpenPrinting CUPS - daemon package

# Yakuake skin
AddPackage --foreign yakuake-skin-breeze-thin-dark # A Breeze Thin Dark skin for Yakuake (Plasma 5)
