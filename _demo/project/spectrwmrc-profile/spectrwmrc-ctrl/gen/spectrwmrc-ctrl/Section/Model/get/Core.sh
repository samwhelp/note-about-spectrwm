

################################################################################
### Head: Model mod_spectrwmrc_profile_get
##

mod_spectrwmrc_profile_get () {

	#echo "mod_spectrwmrc_profile_get"
	#echo "$@"

	# spectrwmrc-ctrl get

	local target_path="$THE_SPECTRWMRC_DIR_PATH" ## ~/.config/spectrwm
	local dir_path="$(LANG=C file "$target_path" | awk -F ' symbolic link to ' '{print $2}')"
	local name="$(basename "$dir_path")"

	echo $name

}

##
### Tail: Model mod_spectrwmrc_profile_get
################################################################################
