# CernVM-FS and EESSI
AddPackage --foreign autofs # A kernel-based automounter for Linux
AddPackage --foreign cvmfs # A client-server file system implemented in FUSE and developed to deliver software distributions onto virtual machines in a fast, scalable, and reliable way.
AddPackage --foreign cvmfs-config-eessi # CernVM-FS configuration for the EESSI project
AddPackage --foreign lmod # Environment modules system based on Lua that handles MODULEPATH hierarchical problem. Supports also legacy TCL modules

CopyFile /etc/autofs/auto.master.d/cvmfs.autofs
IgnorePath /cvmfs
IgnorePath /misc
IgnorePath /net
