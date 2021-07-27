

################################################################################
### Head: Sys
##

is_spectrwmrc_dir () {

	local dir_path="$1"
	local spectrwmrc_file_path="$dir_path/$THE_SPECTRWMRC_FILE_NAME" ## ~/.config/spectrwmrc-profile/demo/spectrwm.conf

	if [ ! -f "$spectrwmrc_file_path" ]; then ## check ~/.config/spectrwmrc-profile/demo/spectrwm.conf
		return 1
	fi

	return 0
}

is_not_spectrwmrc_dir () {

	local dir_path="$1"
	local spectrwmrc_file_path="$dir_path/$THE_SPECTRWMRC_FILE_NAME" ## ~/.config/spectrwmrc-profile/demo/spectrwm.conf

	if [ -f "$spectrwmrc_file_path" ]; then ## check ~/.config/spectrwmrc-profile/demo/spectrwm.conf
		return 1
	fi

	return 0

}

spectrwmrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_SPECTRWMRC_PROFILE_DIR_PATH/$name"
}


spectrwmrc_check_spectrwmrc_dir_exists () {

	local spectrwmrc_dir_name="$THE_SPECTRWMRC_DIR_NAME"
	local spectrwmrc_dir_path="$THE_SPECTRWMRC_DIR_PATH"

	if ! [ -a "$spectrwmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$spectrwmrc_dir_path" ]; then ## ~/.config/spectrwm is symbolic link
		return 0
	fi



	util_error_echo "## Dir is exists:" "$spectrwmrc_dir_path"
	util_error_echo

	util_error_echo "## Try to backup:"
	util_error_echo

	local now="$(date +%Y%m%d_%s)"
	local bak_dir_path="${HOME}/.backup/${spectrwmrc_dir_name}.bak"
	local bak_target_path="${bak_dir_path}/${spectrwmrc_dir_name}.bak.${now}"

	util_error_echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	util_error_echo "cp -a ${spectrwmrc_dir_path} ${bak_target_path}"
	cp -a "${spectrwmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		util_error_echo
		util_error_echo '## Backup Failure!'
		#exit 1
		return 1
	fi

	util_error_echo


	return 0
}


spectrwmrc_profile_init_dir () {

	if ! [ -d "$THE_SPECTRWMRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_SPECTRWMRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_SPECTRWMRC_PROFILE_DIR_PATH"
	fi

	return 0
}

##
### Tail: Sys
################################################################################
