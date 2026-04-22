# shellcheck shell=bash
#
# InstallTemplate PATH [MODE [OWNER [GROUP]]]
#
# Replaces all variables with their associated values in the scope
# from from a file in the "files/" subdirectory and write the result
# to the output directory.
#
# The specified path should be relative to the root of the "files" subdirectory.
# Template variables named are contained in double curly braces.
#
# If MODE, OWNER and GROUP are blank or unspecified, they default to
# "644", "root" and "root" respectively for new files.
# Values corresponding to the above defaults must be specified
# as an empty string ('').
#
function InstallTemplate() {
    local file="$1"
    local mode="${2:-}"
    local owner="${3:-}"
    local group="${4:-}"
    local -a vars
    local -a sed_args

    # shellcheck disable=SC2154
    mapfile -t vars < <(grep -oP '(?<={{)[a-zA-Z0-9]*(?=}})' "$config_dir"/files/"$file")
    for varname in "${vars[@]}"; do
        local value="${!varname}"
        if [[ -n "$value" ]]; then
            value="${value//\\/\\\\}" # replaces \ with \\
            value="${value//|/\\|}"   # replaces | with \|
            sed_args+=(-e "s|{{${varname}}}|${value}|g")
        fi
    done

    if [[ ${#sed_args[@]} -gt 0 ]]; then
        local dest
        dest=$(CreateFile "$file" "$mode" "$owner" "$group")
        sed "${sed_args[@]}" "$config_dir"/files/"$file" > "$dest"
    else
        CopyFile "$file" "$mode" "$owner" "$group"
    fi
}
