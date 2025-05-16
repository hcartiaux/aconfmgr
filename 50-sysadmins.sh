AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage sshuttle # Transparent proxy server that forwards all TCP packets over ssh
AddPackage sshpass # Fool ssh into accepting an interactive password non-interactively
AddPackage --foreign clustershell # Python framework for efficient cluster administration

# Enable ssh-agent
CopyFile "/etc/systemd/user/ssh-agent.service"
SystemdEnable --type user --from-file "/etc/systemd/user/ssh-agent.service"
systemd_files+=(user/ssh-agent.service)

# Git packages
AddPackage git # the fast distributed version control system
AddPackage git-crypt # Transparent file encryption in Git
AddPackage git-filter-repo # Quickly rewrite git repository history (filter-branch replacement)
AddPackage git-lfs # Git extension for versioning large files
AddPackage tig # Text-mode interface for Git.
AddPackage --foreign gitflow-cjs # CJS Edition of the git extensions to provide high-level repository operations for Vincent Driessen's branching model.
AddPackage --foreign gitflow-zshcompletion-avh # ZSH completion support for gitflow (AVH-Edition).

# File transfers
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage open-iscsi # iSCSI userland tools

# Password management
AddPackage pwgen # Password generator for creating easily memorable passwords
AddPackage pass # Stores, retrieves, generates, and synchronizes passwords securely
AddPackage wl-clipboard # Command-line copy/paste utilities for Wayland

# Virtualization
AddPackage qemu-desktop # A QEMU setup for desktop environments
AddPackage --foreign vagrant # Build and distribute virtualized development environments
AddPackage virtualbox # Powerful x86 virtualization for enterprise as well as home use
AddPackage virtualbox-host-dkms # VirtualBox Host kernel modules sources
AddPackage virtualbox-guest-iso # The official VirtualBox Guest Additions ISO image

# Languages

## Python
AddPackage python-virtualenv # Virtual Python Environment builder
AddPackage python-rich # Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal
AddPackage --foreign python-gitchangelog # Creates a changelog from git log history.
AddPackage --foreign python-pssh # Parallel versions of the openssh tools ssh, scp, rsync, nuke, slurp

## Puppet
AddPackage --foreign pdk # Puppet Development Kit bundles tools and helpers to create high quality puppet modules
AddPackage --foreign python-pypuppetdb # Library for working with the PuppetDB REST API
AddPackage --foreign puppet-lint # Check that your Puppet manifests conform to the style guide.

## Java
AddPackage jre-openjdk # OpenJDK Java 24 full runtime environment

## Ruby
AddPackage ruby # An object-oriented language for quick and easy programming
AddPackage ruby-bundler # Manages an application's dependencies through its entire life, across many machines, systematically and repeatably

## Build dependencies
AddPackage cmake # A cross-platform open-source make system
AddPackage openssl-1.1 # The Open Source toolkit for Secure Sockets Layer and Transport Layer Security

# Misc
AddPackage parallel # A shell tool for executing jobs in parallel

