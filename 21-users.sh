for user in hcartiaux hcartiaux.perso; do
    #AddUser "${user}" "$(GetPassword $user)" 1000 1000 x 'Hyacinthe Cartiaux' "/home/${user}" /usr/bin/zsh ''
    AddUserToGroup "${user}" wheel
    AddUserToGroup "${user}" lp
    CreateFile "/var/lib/systemd/linger/${user}" > /dev/null
done
