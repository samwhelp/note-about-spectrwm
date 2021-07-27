

################################################################################
### Head: Model spectrwmrc_profile_install
##

spectrwmrc_profile_install () {

	## $ spectrwmrc-ctrl install demo https://github.com/conformal/spectrwm.git

	local name="$1"
	local repo_url="$2"

	util_error_echo "mkdir -p $THE_SPECTRWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_SPECTRWMRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_SPECTRWMRC_PROFILE_DIR_PATH"
	cd "$THE_SPECTRWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/spectrwmrc-profile


	util_error_echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone https://github.com/conformal/spectrwm.git demo

	cd "$OLDPWD"

}

##
### Tail: Model spectrwmrc_profile_install
################################################################################
