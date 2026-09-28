lang=fr_FR.UTF-8

ModuleLoad system     bios btrfs apparmor zram network
ModuleLoad hardware   intel power-mgmt sound bluetooth fw-mgmt
ModuleLoad desktop    apps xfce web
ModuleLoad shell      bash zsh dotfiles utils
ModuleLoad ops        ssh
ModuleLoad dev

AddPackage libreoffice-fresh-fr
AddPackage drawing # Basic image editor for the GNOME desktop
AddPackage gcompris-qt # Educational software suite comprising of numerous activities for children aged 2 to 10
AddPackage gnome-chess # Play the classic two-player boardgame of chess
