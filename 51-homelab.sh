############################
# Infrastructure management
############################
AddPackage terraform # HashiCorp tool for building and updating infrastructure as code idempotently
AddPackage tflint # A linter for Terraform code
AddPackage scaleway-cli # Command line interface for Scaleway Cloud

# This is used for generating cloud-init iso files
AddPackage cdrtools # Highly portable CD/DVD/BluRay command line recording software

AddPackage ansible # Official assortment of Ansible collections
AddPackage ansible-lint # Checks playbooks for practices and behaviour that could potentially be improved.

###########
# Homepage
###########
AddPackage hugo # Fast and Flexible Static Site Generator in Go

############
# Github CI
############
AddPackage act # Run your GitHub Actions locally

##############################################
# OpenBSD cloud image build script dependency
##############################################
AddPackage signify # OpenBSD tool to cryptographically sign and verify files

#########
# 1kl-os
#########
AddPackage qemu-system-riscv # QEMU system emulator for RISC-V
AddPackage qemu-system-riscv-firmware # Firmware for QEMU system emulator for RISC-V
AddPackage lld # Linker from the LLVM project
