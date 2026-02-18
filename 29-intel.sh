AddPackage intel-ucode # Microcode update files for Intel CPUs
AddPackage intel-gpu-tools # Tools for development and testing of the Intel DRM driver

# Video acceleration
AddPackage intel-media-driver # Intel Media Driver for VAAPI — Broadwell+ iGPUs
AddPackage libva-utils # Intel VA-API Media Applications and Scripts for libva

# NPU driver
# AddPackage --foreign intel-npu-driver # Intel Neural Processing Unit (NPU) driver

# GPU vulkan backend
AddPackage vulkan-intel # Open-source Vulkan driver for Intel GPUs

# GPU sycl backend
# AddPackage intel-compute-runtime # Intel(R) Graphics Compute Runtime for oneAPI Level Zero and OpenCL(TM) Driver
# AddPackage intel-oneapi-basekit # Intel oneAPI Base Toolkit for Linux

# # Verify that the sycl backend is functional
# source /opt/intel/oneapi/setvars.sh
#
# :: initializing oneAPI environment ...
#    zsh: ZSH_VERSION = 5.9
#    args: Using "$@" for setvars.sh arguments:
# :: advisor -- latest
# :: ccl -- latest
# :: compiler -- latest
# :: dal -- latest
# :: debugger -- latest
# :: dev-utilities -- latest
# :: dnnl -- latest
# :: dpcpp-ct -- latest
# :: dpl -- latest
# :: ipp -- latest
# :: ippcp -- latest
# :: mkl -- latest
# :: mpi -- latest
# :: pti -- latest
# :: tbb -- latest
# :: umf -- latest
# :: vtune -- latest
# :: oneAPI environment initialized ::
#
# $ sycl-ls
# [level_zero:gpu][level_zero:0] Intel(R) oneAPI Unified Runtime over Level-Zero, Intel(R) Arc(TM) Graphics 12.74.4 [1.14.37020]
# [opencl:fpga][opencl:0] Intel(R) FPGA Emulation Platform for OpenCL(TM), Intel(R) FPGA Emulation Device OpenCL 1.2  [2024.18.12.0.05_160000]
# [opencl:cpu][opencl:1] Intel(R) OpenCL, Intel(R) Core(TM) Ultra 7 265H OpenCL 3.0 (Build 0) [2024.18.12.0.05_160000]
# [opencl:gpu][opencl:2] Intel(R) OpenCL Graphics, Intel(R) Arc(TM) Graphics OpenCL 3.0 NEO  [26.05.37020]

# AddPackage clinfo # Simple OpenCL application that enumerates all available platform and device properties

# clinfo -l
# Platform #0: Intel(R) FPGA Emulation Platform for OpenCL(TM)
#  `-- Device #0: Intel(R) FPGA Emulation Device
# Platform #1: Intel(R) OpenCL
#  `-- Device #0: Intel(R) Core(TM) Ultra 7 265H
# Platform #2: Intel(R) OpenCL Graphics
#  `-- Device #0: Intel(R) Arc(TM) Graphics
