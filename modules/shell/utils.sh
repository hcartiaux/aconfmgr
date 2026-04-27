# Default editor
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor

# Interactive shell improvement
AddPackage powerline # Statuslines and prompts for several applications including vim, zsh, bash, tmux, IPython, Awesome, i3 and Qtile
AddPackage powerline-fonts # Patched fonts for powerline
AddPackage fzf # Command-line fuzzy finder

# System monitoring
AddPackage htop # Interactive process viewer
AddPackage iotop # View I/O usage of processes
AddPackage nvtop # GPUs process monitoring for AMD, Intel and NVIDIA
AddPackage glances # CLI curses-based monitoring tool
AddPackage lsof # Lists open files for running Unix processes
AddPackage strace # A diagnostic, debugging and instructional userspace tracer
AddPackage dool # A versatile resource statistics tool

# Storage
AddPackage hdparm # A shell utility for manipulating Linux IDE drive/driver parametersi
AddPackage sg3_utils # Generic SCSI utilities
AddPackage ncdu # Disk usage analyzer with an ncurses interface
AddPackage plocate # Alternative to locate, faster and compatible with mlocate's database.
CopyFile /etc/updatedb.conf

# File transfers
AddPackage rsync # A fast and versatile file copying tool for remote and local files

# Backup
AddPackage --foreign bontmia # Bontmia (Backup Over Network To Multiple Incremental Archives)

# Networking
AddPackage inetutils # A collection of common network programs
AddPackage ethtool # Utility for controlling network drivers and hardware
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

# Calculators
AddPackage bc # An arbitrary precision calculator language

# Image files manipulation
AddPackage jpegoptim # Jpeg optimisation utility
AddPackage optipng # Compresses PNG files to a smaller size, without losing any information.

# Password management
AddPackage pwgen # Password generator for creating easily memorable passwords
AddPackage pass # Stores, retrieves, generates, and synchronizes passwords securely
AddPackage wl-clipboard # Command-line copy/paste utilities for Wayland

# Terminal screencast recording
AddPackage asciinema # Record and share terminal sessions
AddPackage --foreign asciinema-agg # asciinema gif generator

# Misc CLI tools
AddPackage tmux # Terminal multiplexer
AddPackage screen # Full-screen window manager that multiplexes a physical terminal
AddPackage the_silver_searcher # Code searching tool similar to Ack, but faster
AddPackage jq # Command-line JSON processor
AddPackage yq # Command-line YAML, XML, TOML processor - jq wrapper for YAML/XML/TOML documents
AddPackage pdftk # Command-line tool for working with PDFs
AddPackage figlet # A program for making large letters out of ordinary text
AddPackage tigervnc # Suite of VNC servers and clients based on the VNC 4 branch of TightVNC
AddPackage txt2man # Converts flat ASCII text to man page format
AddPackage gnuplot # Plotting package which outputs to X11, PostScript, PNG, GIF, and others
AddPackage parallel # A shell tool for executing jobs in parallel
AddPackage colordiff # A Perl script wrapper for 'diff' that produces the same output but with pretty 'syntax' highlighting
AddPackage signify # OpenBSD tool to cryptographically sign and verify files

# Misc
AddPackage hugo # Fast and Flexible Static Site Generator in Go
AddPackage --foreign ca-certificates-dn42 # dn42 root certificates for *.dn42 and 172.22.0.0/15
