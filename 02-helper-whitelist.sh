# Whitelist files
# Src: https://github.com/CyberShadow/aconfmgr/wiki/Whitelist-files

function IgnorePathsExcept() {
    # Ignore all path in given directory (first parameter)
    # that do not math the given white list (second parameter)

    local search_dir=$1
    shift
    local white_list=("$@")
    local find_args=()
    local ignore_path
    for ignore_path in "${white_list[@]}"; do
        local base="$ignore_path"
        # Add all base paths to the argument list as well otherwise
        # -prune will prevent us from reaching the whitelisted files.
        while [ "$base" != '.' ]; do
            find_args+=(-path "$search_dir/$base" -o)
            base="$(dirname "$base")"
        done
    done
    # Find everything except given whitelist and the directory
    # searched from.
    find "$search_dir" -not \( "${find_args[@]}" -path "$search_dir" \) -prune | \
    while read file; do
        if [[ -d "$file" ]]; then
            IgnorePath "$file/*"
        else
            IgnorePath "$file"
        fi
    done
}
