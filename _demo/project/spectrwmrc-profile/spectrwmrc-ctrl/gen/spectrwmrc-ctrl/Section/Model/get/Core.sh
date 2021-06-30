

################################################################################
### Head: Model mod_spectrwmrc_profile_get
##

mod_spectrwmrc_profile_get () {
	#echo "mod_spectrwmrc_profile_get"
	#echo "$@"

	# spectrwmrc-ctrl get

	local dir_path=$(LANG=C file ~/.config/spectrwm | awk -F ' symbolic link to ' '{print $2}')
	local name=$(basename "$dir_path")

	echo $name

}

##
### Tail: Model mod_spectrwmrc_profile_get
################################################################################
