

################################################################################
### Head: Model mod_spectrwmrc_profile_list
##



mod_spectrwmrc_profile_list () {
	#echo "mod_spectrwmrc_profile_list"
	#echo "$@"

	# spectrwmrc-ctrl list

	local name=''
	local dir_path=''

	spectrwmrc_profile_init_dir

	cd "$THE_SPECTRWMRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_SPECTRWMRC_PROFILE_DIR_PATH/$name" ## ~/.local/share/spectrwmrc-profile/demo
		if is_not_spectrwmrc_dir "$dir_path"; then ## check ~/.local/share/spectrwmrc-profile/demo/spectrwm.conf
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_spectrwmrc_profile_list
################################################################################
