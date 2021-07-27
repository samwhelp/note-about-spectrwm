

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
		util_error_echo
		util_error_echo "## Not Valid Spectrwmrc Dir: "
		util_error_echo
		util_error_echo "$source_dir_path"
		util_error_echo
		util_error_echo '## Please Run:'
		util_error_echo
		util_error_echo '$ spectrwmrc-ctrl list'
		util_error_echo
		util_error_echo '# to find valid spectrwmrc dir.'
		util_error_echo
		return 1
	fi

	spectrwmrc_check_spectrwmrc_dir_exists


	if [ -h "$target_dir_path" ]; then ## ~/.config/spectrwm is symbolic link
		util_error_echo
		util_error_echo "rm -f $target_dir_path"
		rm -f "$target_dir_path"
	else
		util_error_echo
		util_error_echo "rm -rf $target_dir_path"
		rm -rf "$target_dir_path"
	fi


	util_error_echo
	util_error_echo "ln -sf $source_dir_path $target_dir_path"
	ln -sf "$source_dir_path" "$target_dir_path"


	util_error_echo
	util_error_echo "file $target_dir_path"
	file "$target_dir_path"

}


##
### Tail: Model mod_spectrwmrc_profile_set
################################################################################
