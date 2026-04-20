# Source <file1> <file2> ...
#   source files in $config_dir
#
function Source() {
    for file in $@; do
        LogEnter 'Sourcing %s...\n' "$(Color C "%q" "$config_dir/$file")"
        source "$config_dir/$file"
        LogLeave ''
    done;
}

# ModuleLoad <module_name> <flavor1> ...
#   load module <module_name> and the requested flavors
#
function ModuleLoad() {
    local MODULE="${1:-}"
    shift || true

    if [[ -z "$MODULE" ]]; then
        FatalError "ModuleLoad called without module name \n" >&2
        return 1
    fi

    local FLAVORS=("$@")

    LogEnter 'Loading [%s]...\n' "$(Color Y "%q" "$MODULE")"
    if [[ -f "$config_dir/modules/$MODULE/common.sh" ]]; then
        Source "modules/$MODULE/common.sh"
    fi
    for flavor in "${FLAVORS[@]}"; do
        Source "modules/$MODULE/$flavor.sh"
    done
    LogLeave
}
