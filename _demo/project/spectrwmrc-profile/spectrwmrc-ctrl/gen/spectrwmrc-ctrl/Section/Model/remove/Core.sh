

################################################################################
### Head: Model mod_spectrwmrc_profile_remove
##

mod_spectrwmrc_profile_remove () {

	## $ spectrwmrc-ctrl remove demo

	local name="$1"
	#echo $name

	spectrwmrc_profile_init_dir

	echo "cd $THE_SPECTRWMRC_PROFILE_DIR_PATH"
	cd "$THE_SPECTRWMRC_PROFILE_DIR_PATH" ## cd ~/.spectrwmrc-profile

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.spectrwmrc-profile/demo
		echo "Dir not exists: $name"
		return 1
	fi

	##mod_spectrwmrc_profile_default

	echo "rm -rf $dir_path"
	rm -rf "$dir_path"

	cd "$OLDPWD"

}

##
### Tail: Model mod_spectrwmrc_profile_remove
################################################################################
