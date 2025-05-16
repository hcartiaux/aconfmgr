CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf

AddPackage noto-fonts
AddPackage pipewire-jack
AddPackage plasma-meta # Meta package to install KDE Plasma
AddPackage pyside6
AddPackage cronie
AddPackage tesseract-data-fra
AddPackage kde-applications-meta
AddPackage aspell-en
AddPackage aspell-fr
AddPackage hunspell-en_us # US English hunspell dictionaries
AddPackage cups # OpenPrinting CUPS - daemon package


# Enable SSDM manually
AddPackage --foreign sddm-archlinux-theme-git
CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/kde_settings.conf
CopyFile /usr/share/sddm/themes/archlinux/theme.conf.user
