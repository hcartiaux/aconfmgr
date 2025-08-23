pci_id=$(lspci | sed -n 's/\([^ ]*\) 3D controller: NVIDIA.*/\1/p' | xargs)

if [ -n "${pci_id}" ] ; then

    # Nvidia driver support
    AddPackage nvidia # NVIDIA kernel modules
    AddPackage nvidia-lts # NVIDIA drivers for linux-lts
    AddPackage nvidia-prime # NVIDIA Prime Render Offload configuration and utilities
    AddPackage nvidia-utils # NVIDIA drivers utilities

    # Power management (Nvidia GPU D3Cold state support)
    CopyFile /etc/modprobe.d/nvidia-pm.conf
    CopyFile /etc/udev/rules.d/28-nvidia-pm.rules
    # OR power off the Nvidia chipset entirely
    # CopyFile /etc/udev/rules.d/28-nvidia-poweroff.rules

    # TLP configuration (installed in 22-power-mgmt)
    echo "RUNTIME_PM_ENABLE=\"${pci_id}\"" > "$(CreateFile /etc/tlp.d/28-nvidia.conf)"

fi
