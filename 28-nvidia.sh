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

    # # Verify that the Nvidia GPU can switch to D3Cold state
    #
    # $ cat /proc/driver/nvidia/gpus/0000\:01\:00.0/power
    # Runtime D3 status:          Enabled (fine-grained)
    # Video Memory:               Active
    #
    # GPU Hardware Support:
    #  Video Memory Self Refresh: Supported
    #  Video Memory Off:          Supported
    #
    # S0ix Power Management:
    #  Platform Support:          Supported
    #  Status:                    Disabled
    #
    # Notebook Dynamic Boost:     Not Supported
    #
    # $ cat /sys/class/drm/card0/device/power_state
    # D3cold
    #

fi
