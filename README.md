# My `aconfmgr` configuration management repository

This is my [`aconfmgr`](https://github.com/CyberShadow/aconfmgr) source configuration.
`aconfmgr` is a configuration management system for Arch Linux which tracks,
manages and restores the system configuration.
This repository should be cloned into `~/.config/aconfmgr`.

* `aconfmgr save`: calculates the difference between the current system's
configuration and the configuration described by the configuration directory,
and writes it back to the configuration directory in `99-unsorted.sh`

* `aconfmgr apply`: applies the difference between the configuration described
by the configuration directory and the current system's configuration,
installing/removing packages and creating/editing configuration files.

* `aconfmgr diff <file>`: displays the changes that would be applied
to `<file>` by `aconfmgr apply`

* `find files | sed 's_^files__g' | xargs -I{} sh -c 'grep -q "{}" *.sh || echo {}'`:
[find unreferenced entries in the files directory](https://github.com/CyberShadow/aconfmgr/wiki/Find-unreferenced-entries-in-the-files--directory)
