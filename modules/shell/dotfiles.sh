# Dotfiles

if [ "$aconfmgr_action" = "apply" ]; then
    DOTFILES_DIR="$HOME/.dotfiles"
    DOTFILES_REPO="https://codeberg.org/hcartiaux/dotfiles.git"

    LogEnter 'Applying dotfiles...\n'
    if [ ! -d "$DOTFILES_DIR" ]; then
        git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
    fi

    {
        cd "$DOTFILES_DIR" || FatalError "Dotfiles directory missing"
        git pull && ./install.sh
    }

    LogLeave
fi
