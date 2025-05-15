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


CreateLink /etc/systemd/user/default.target.wants/xdg-user-dirs-update.service /usr/lib/systemd/user/xdg-user-dirs-update.service
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket

# Enable SSDM manually
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/sddm.service
AddPackage --foreign sddm-archlinux-theme-git
CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/kde_settings.conf
CopyFile /usr/share/sddm/themes/archlinux/theme.conf.user
