AddPackage grub # GNU GRand Unified Bootloader

# This configuration assumes that apparmor is enabled
CopyFile /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

IgnorePath /etc/mkinitcpio.d/linux.preset
IgnorePath /etc/mkinitcpio.d/linux-lts.preset
