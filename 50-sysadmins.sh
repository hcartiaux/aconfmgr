# SSH tools
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage sshuttle # Transparent proxy server that forwards all TCP packets over ssh
AddPackage sshpass # Fool ssh into accepting an interactive password non-interactively
AddPackage --foreign clustershell # Python framework for efficient cluster administration

## Enable ssh-agent
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
AddPackage tk # A windowing toolkit for use with tcl (git gui dependency)

# File transfers
AddPackage rsync # A fast and versatile file copying tool for remote and local files

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

# Containers
AddPackage podman # Tool and library for running OCI-based containers in pods
AddPackage podman-compose # A script to run docker-compose.yml using podman
CopyFile /etc/containers/registries.conf.d/10-unqualified-search-registries.conf

# Languages

## Ruby
AddPackage ruby # An object-oriented language for quick and easy programming
AddPackage ruby-irb # Interactive Ruby command-line tool for REPL (Read Eval Print Loop).
AddPackage ruby-bundler # Manages an application's dependencies through its entire life, across many machines, systematically and repeatably
AddPackage ruby-erb # An easy to use but powerful templating system for Ruby
AddPackage ruby-rake # Make-like build tool implemented in Ruby
AddPackage ruby-term-ansicolor # A ruby library that colors strings using ANSI escape sequences

## Python
AddPackage python-pip # The PyPA recommended tool for installing Python packages
AddPackage python-virtualenv # Virtual Python Environment builder
AddPackage python-rich # Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal
AddPackage python-xmljson # Converts XML into JSON/Python dicts/arrays and vice-versa.
AddPackage python-flake8 # The modular source code checker: pep8, pyflakes and co
AddPackage python-opengl # The cross platform Python binding to OpenGL and related APIs
AddPackage python-pygame # Python game library
AddPackage --foreign python-gitchangelog # Creates a changelog from git log history.

## Puppet
AddPackage r10k # Provides a general purpose toolset for deploying Puppet environments and modules.
AddPackage --foreign ruby-hiera-eyaml # OpenSSL Encryption backend for Hiera
AddPackage --foreign puppet-lint # Check that your Puppet manifests conform to the style guide.

## Java
AddPackage jdk-openjdk # OpenJDK Java 24 full runtime environment
AddPackage icedtea-web # Additional components for OpenJDK - Browser plug-in and Web Start implementation

## Node
AddPackage nodejs # Evented I/O for V8 javascript ("Current" release)
AddPackage npm # JavaScript package manager

## Build dependencies
AddPackage cmake # A cross-platform open-source make system
AddPackage openssl-1.1 # The Open Source toolkit for Secure Sockets Layer and Transport Layer Security

# Mkdocs
AddPackage mkdocs # Project documentation with Markdown
AddPackage mkdocs-material # Documentation that simply works
AddPackage python-pymdown-extensions # Extensions for Python Markdown
AddPackage --foreign mkdocs-exclude # A mkdocs plugin that lets you exclude files or trees.
AddPackage --foreign mkdocs-git-revision-date-localized-plugin # MkDocs plugin to add a last updated date to your site pages
AddPackage --foreign mkdocs-include-markdown-plugin # Mkdocs Markdown includer plugin.
AddPackage --foreign mkdocs-material-extensions # Markdown extension resources for MkDocs Material
AddPackage --foreign python-markdown-include # Provides syntax for Python-Markdown for the inclusion of other Markdown documents

# Vim
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
AddPackage --foreign vim-puppet # Puppet language syntax highlighting for vim.

# Neovim and its dependencies
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage python-pynvim # Python client for Neovim
AddPackage lua51 # Powerful lightweight programming language designed for extending applications
AddPackage luarocks # Deployment and management system for Lua modules
AddPackage ast-grep # CLI tool for code structural search, lint and rewriting
AddPackage fd # Simple, fast and user-friendly alternative to find

# Zed editor
AddPackage zed # A high-performance, multiplayer code editor from the creators of Atom and Tree-sitter

# Misc
AddPackage parallel # A shell tool for executing jobs in parallel
AddPackage colordiff # A Perl script wrapper for 'diff' that produces the same output but with pretty 'syntax' highlighting
