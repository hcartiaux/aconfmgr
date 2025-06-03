if lspci | grep -i "3D controller: NVIDIA" > /dev/null; then

    # Nvidia driver support
    AddPackage nvidia
    AddPackage nvidia-lts
    AddPackage nvidia-prime
    AddPackage nvidia-utils
    AddPackage nvidia-prime-rtd3pm

    # OR power off the Nvidia chipset entirely
    # CopyFile /etc/udev/rules.d/80-nvidia-poweroff.rules

fi
