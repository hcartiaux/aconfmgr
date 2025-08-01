# System
AddPackage hdparm # A shell utility for manipulating Linux IDE drive/driver parametersi
AddPackage iotop # View I/O usage of processes
AddPackage inetutils # A collection of common network programs
AddPackage ethtool # Utility for controlling network drivers and hardware
AddPackage lsof # Lists open files for running Unix processes
AddPackage strace # A diagnostic, debugging and instructional userspace tracer
AddPackage htop # Interactive process viewer
AddPackage glances # CLI curses-based monitoring tool
AddPackage ncdu # Disk usage analyzer with an ncurses interface
AddPackage sg3_utils # Generic SCSI utilities

AddPackage plocate # Alternative to locate, faster and compatible with mlocate's database.
CopyFile /etc/updatedb.conf

# Networking
AddPackage nmap # Utility for network discovery and security auditing
AddPackage tcpdump # Powerful command-line packet analyzer
AddPackage iperf3 # TCP, UDP, and SCTP network bandwidth measurement tool
AddPackage wget # Network utility to retrieve files from the web
AddPackage whois # Intelligent WHOIS client
AddPackage openbsd-netcat # TCP/IP swiss army knife. OpenBSD variant.
AddPackage bind # A complete, highly portable implementation of the DNS protocol
AddPackage --foreign netcalc # IP network calculator - Simplified clone of sipcalc with ipcalc looks.
AddPackage openldap # Lightweight Directory Access Protocol (LDAP) client and server
AddPackage rtorrent # Ncurses BitTorrent client based on libTorrent

# Compression
AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage unrar # The RAR uncompression program
AddPackage 7zip # File archiver for extremely high compression

# CLI tools
AddPackage tmux # Terminal multiplexer
AddPackage the_silver_searcher # Code searching tool similar to Ack, but faster
AddPackage yq # Command-line YAML, XML, TOML processor - jq wrapper for YAML/XML/TOML documents
AddPackage jq # Command-line JSON processor
AddPackage txt2man # Converts flat ASCII text to man page format
AddPackage pdftk # Command-line tool for working with PDFs

# Editors
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
AddPackage --foreign vim-puppet # Puppet language syntax highlighting for vim.

# Latex
AddPackage texlive-meta # Metapackage to install Tex Live
AddPackage texmaker # Free cross-platform LaTeX editor

# Calculators
AddPackage bc # An arbitrary precision calculator language

# Image files manipulation
AddPackage jpegoptim # Jpeg optimisation utility
AddPackage optipng # Compresses PNG files to a smaller size, without losing any information.

# Backup
AddPackage --foreign bontmia # Bontmia (Backup Over Network To Multiple Incremental Archives)

# Misc
AddPackage pandoc-cli # Conversion between documentation formats
AddPackage figlet # A program for making large letters out of ordinary text
AddPackage tigervnc # Suite of VNC servers and clients based on the VNC 4 branch of TightVNC


