

################################################################################
### Head: Model demo
##

mod_demo_install () {
	util_error_echo
	## mod_demo_repo_clone "$1" 'https://github.com/conformal/spectrwm.git'
	spectrwmrc_repo_clone 'demo' 'https://github.com/conformal/spectrwm.git'
	util_error_echo
}

##
### Tail: Model demo
################################################################################
