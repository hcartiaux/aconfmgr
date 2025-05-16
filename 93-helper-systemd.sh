# Ignore all the files under /etc/systemd except the ones created by the Systemd helper
IgnorePathsExcept "/etc/systemd" "${systemd_files[@]}"
