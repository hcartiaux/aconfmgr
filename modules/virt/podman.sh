# Podman
AddPackage podman # Tool and library for running OCI-based containers in pods
AddPackage podman-compose # A script to run docker-compose.yml using podman
CopyFile /etc/containers/registries.conf.d/10-unqualified-search-registries.conf
AddPackage dockerfile-language-server # Language server for Dockerfiles
