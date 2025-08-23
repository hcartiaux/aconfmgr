# User management helpers
# Src: https://github.com/CyberShadow/aconfmgr/wiki/User-management


password_directory="${config_dir}/data/passwords/"

rm -rf "$tmp_dir"/usergroups "$tmp_dir"/groups
mkdir "$tmp_dir"/usergroups "$tmp_dir"/groups

# Add user to /etc/{passwd,shadow} and corresponding group.
function AddUser() {
    local username=$1
    local password=$2
    local uid=$3
    local gid=$4
    local gpassword=$5
    local desc=$6
    local home=$7
    local shell=$8
    local groups=$9

    if [[ -z "$password" ]]
    then
        FatalError 'Attempting to create user with blank password\n'
    fi

    AddGroup "$username" "$gpassword" "$gid"

    mkdir -p "$output_dir"/files/etc
    printf '%s:%s:%d:%d:%s:%s:%s\n' "$username" x "$uid" "$gid" "$desc" "$home" "$shell" >> "$output_dir"/files/etc/passwd
    printf '%s:%s:::::::\n' "$username" "$password" >> "$output_dir"/files/etc/shadow

    mkdir -p "$tmp_dir"/usergroups

    local grouparr=()
    IFS=',' read -ra grouparr <<<"$groups"

    local group
    for group in "${grouparr[@]}"
    do
        printf "%s\n" "$username" >> "$tmp_dir"/usergroups/"$group"
    done
}

# Add group to /etc/{group,gshadow}.
function AddGroup() {
    local name=$1
    local password=$2
    local gid=$3

    mkdir -p "$tmp_dir"/groups
    printf '%s:%s:%d:\n' "$name" x "$gid"    >> "$tmp_dir"/groups/group
    printf '%s:%s::\n'   "$name" "$password" >> "$tmp_dir"/groups/gshadow
}

function AddUserToGroup() {
    local user=$1
    local group=$2

    printf "%s\n" "$user" >> "$tmp_dir"/usergroups/"$group"
}

# Read the password from a separate file, which is not under version control.
function GetPassword() {
    local username=$1

    if [[ -f "$config_dir"/data/passwords/"$username" ]]
    then
        cat "$config_dir"/data/passwords/"$username"
    else
        # Get password from current machine
        sudo cat /etc/shadow | grep "^$username:" | cut -d : -f 2
    fi
}
