if lspci | grep -i "3D controller: NVIDIA" > /dev/null; then

    # Nvidia driver support
    AddPackage nvidiai # NVIDIA kernel modules
    AddPackage nvidia-lts # NVIDIA drivers for linux-lts
    AddPackage nvidia-prime # NVIDIA Prime Render Offload configuration and utilities
    AddPackage nvidia-utils # NVIDIA drivers utilities
    AddPackage --foreign nvidia-prime-rtd3pm # Configure your discrete NVIDIA GPU to power down when not in use.

    # OR power off the Nvidia chipset entirely
    # CopyFile /etc/udev/rules.d/80-nvidia-poweroff.rules

fi
