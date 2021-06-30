

################################################################################
### Head: Sys
##

is_spectrwmrc_dir () {
	local dir_path="$1"
	local spectrwmrc_file_path="$dir_path/spectrwm.conf" ## ~/.config/spectrwmrc-profile/demo/spectrwm.conf

	if [ ! -f "$spectrwmrc_file_path" ]; then ## check ~/.config/spectrwmrc-profile/demo/spectrwm.conf
		return 1
	fi

	return 0
}

is_not_spectrwmrc_dir () {
	local dir_path="$1"
	local spectrwmrc_file_path="$dir_path/spectrwm.conf" ## ~/.config/spectrwmrc-profile/demo/spectrwm.conf

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

	local spectrwmrc_dir_name="spectrwm"
	local spectrwmrc_dir_path="$HOME/.config/$spectrwmrc_dir_name"

	if ! [ -a "$spectrwmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$spectrwmrc_dir_path" ]; then ## ~/.config/spectrwm is symbolic link
		return 0
	fi



	echo "Dir is exists:" "$spectrwmrc_dir_path"
	echo

	echo "Try to backup:"
	echo

	local now=$(date +%Y%m%d_%s)
	local bak_dir_path="${HOME}/.backup/spectrwmrc.bak"
	local bak_target_path="${bak_dir_path}/${spectrwmrc_dir_name}.bak.${now}"

	echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	echo "cp -a ${spectrwmrc_dir_path} ${bak_target_path}"
	cp -a "${spectrwmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		echo
		echo 'Backup Failure!'
		#exit 1
		return 1
	fi

	echo







	return 0
}


spectrwmrc_profile_init_dir () {

	if ! [ -d "$THE_SPECTRWMRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_SPECTRWMRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_SPECTRWMRC_PROFILE_DIR_PATH"
	fi

	return 0
}


spectrwmrc_repo_clone () {

	## $ spectrwmrc-get demo

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	echo "mkdir -p $THE_SPECTRWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_SPECTRWMRC_PROFILE_DIR_PATH"

	echo "cd $THE_SPECTRWMRC_PROFILE_DIR_PATH"
	cd "$THE_SPECTRWMRC_PROFILE_DIR_PATH" ## cd ~/.spectrwmrc-profile


	if [ -d "$name" ]; then
		echo "## Is Exists:" "$THE_SPECTRWMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/conformal/spectrwm.git demo

	cd "$OLDPWD"

}

##
### Tail: Sys
################################################################################
