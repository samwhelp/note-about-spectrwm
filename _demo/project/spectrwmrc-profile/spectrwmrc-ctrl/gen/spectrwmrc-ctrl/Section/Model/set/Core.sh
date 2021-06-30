

################################################################################
### Head: Model mod_spectrwmrc_profile_set
##

mod_spectrwmrc_profile_set () {
	#echo "mod_spectrwmrc_profile_set"
	#echo "$@"


	## $ spectrwmrc-ctrl set demo

	local name="$1"
	local source_dir_path="$THE_SPECTRWMRC_PROFILE_DIR_PATH/$name"
	local target_dir_path="$THE_SPECTRWMRC_DIR_PATH"

	#echo "target_dir_path=$target_dir_path"
	#echo "source_dir_path=$source_dir_path"

	if is_not_spectrwmrc_dir "$source_dir_path"; then ## check ~/.config/spectrwmrc-profile/demo/spectrwm.conf
		echo "Not valid spectrwmrc dir: $source_dir_path"
		echo
		echo 'Please run:'
		echo '	$ spectrwmrc-ctrl list'
		echo 'to find valid spectrwmrc dir.'
		return 1
	fi

	spectrwmrc_check_spectrwmrc_dir_exists


	if [ -h "$target_dir_path" ]; then ## ~/.config/spectrwm is symbolic link
		echo
		echo rm -f "$target_dir_path"
		rm -f "$target_dir_path"
	else
		echo
		echo rm -rf "$target_dir_path"
		rm -rf "$target_dir_path"
	fi




	echo
	echo ln -sf "$source_dir_path" "$target_dir_path"
	ln -sf "$source_dir_path" "$target_dir_path"


	echo
	file "$target_dir_path"

}


##
### Tail: Model mod_spectrwmrc_profile_set
################################################################################
