default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo

.PHONY: help


install:
	sudo install -Dm644 ./spectrwm-session.desktop /usr/share/xsessions/spectrwm-session.desktop
	sudo install -Dm755 ./spectrwm-session.sh /usr/local/bin/spectrwm-session.sh
.PHONY: install


remove:
	sudo rm -f /usr/share/xsessions/spectrwm-session.desktop
	sudo rm -f /usr/local/bin/spectrwm-session.sh
.PHONY: remove
