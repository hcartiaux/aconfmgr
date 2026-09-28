AddPackage grub
CopyFile /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

CopyProfileFile /etc/mkinitcpio.d/linux.preset
CopyProfileFile /etc/mkinitcpio.d/linux-lts.preset
