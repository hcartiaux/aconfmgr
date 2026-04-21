# shellcheck shell=bash

# Source <file1> <file2> ...
#   source files in $config_dir
#
function Source() {
    for file in "$@"; do
        # shellcheck disable=SC2154
        if [[ -f "$config_dir/$file" ]]; then
            LogEnter 'Sourcing %s...\n' "$(Color C "%q" "$config_dir/$file")"
            # shellcheck disable=SC1090
            source "$config_dir/$file"
            LogLeave ''
        else
            ConfigWarning "Missing file %s\n" "$(Color C "%q" "$config_dir/$file")" >&2
        fi
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


#
# CopyFile PATH [MODE [OWNER [GROUP]]]
#
# Copies a file from the "files/profiles/$HOSTNAME" subdirectory to the output.
#
# The specified path should be relative to the root of the "files" subdirectory.
#
# If MODE, OWNER and GROUP are blank or unspecified, they default to
# "644", "root" and "root" respectively for new files.
# Values corresponding to the above defaults must be specified
# as an empty string ('').
#
function CopyProfileFile() {
    local file="$1"
    local mode="${2:-}"
    local owner="${3:-}"
    local group="${4:-}"

    CopyFileTo "/profiles/${HOSTNAME}${file}" "$file" "$mode" "$owner" "$group"
}
