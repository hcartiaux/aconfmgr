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
    MODULE=$1; shift 1
    FLAVORS=$@
    LogEnter 'Loading %s...\n' "$(Color Y "%q" "$MODULE")"
    Source "modules/$MODULE/common.sh"
    for flavor in $FLAVORS; do 
        Source "modules/$MODULE/$flavor.sh"
    done
    LogLeave
}
