SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

print_modname() {
    ui_print "============================================"
    ui_print "                 GCC Toolchain              "
    ui_print "--------------------------------------------"
    ui_print "   GCC Toolchain is usable to build many    "
    ui_print " things, such as native modules for Node.js "
    ui_print "--------------------------------------------"
    ui_print "              Googlers-Repo/gcc             "
    ui_print "============================================"
}

on_install() {
    ui_print "- Extracting module files"
    unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

    [ -d "$MODPATH/system/bin/" ] || mkdir -p "$MODPATH/system/bin/"

}

__BASE=$MODPATH/system/usr/share/gcc

set_permissions() {
    # The following is the default rule, DO NOT remove
    set_perm_recursive $MODPATH 0 0 0755 0644

    for folder in $__BASE/bin $__BASE/aarch64-linux-android/bin $__BASE/libexec/gcc/aarch64-linux-android/10.2.0; do
        if [ -d "$folder" ]; then
            find "$folder" -type f | while read -r bin; do
                file_type=$(file "$bin")
                if [[ "$file_type" == *"shell script"* ]]; then
                    set_perm "$bin" 0 2000 0755
                elif [[ "$file_type" == *"ELF"* ]]; then
                    set_perm "$bin" 0 2000 0755
                fi
            done
        fi
    done
}
