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
	mkdir -p ~/.config/spectrwm-session/bin
	install -Dm755 ./spectrwm-session-autostart.sh ~/.config/spectrwm-session/bin/spectrwm-session-autostart.sh
	install -Dm755 ./spectrwm-trayer-start.sh ~/.config/spectrwm-session/bin/spectrwm-trayer-start.sh
	install -Dm755 ./spectrwm-trayer-stop.sh ~/.config/spectrwm-session/bin/spectrwm-trayer-stop.sh
.PHONY: install


remove:
	sudo rm -f /usr/share/xsessions/spectrwm-session.desktop
	sudo rm -f /usr/local/bin/spectrwm-session.sh
	rm -f ~/.config/spectrwm-session/bin/spectrwm-session-autostart.sh
	rm -f ~/.config/spectrwm-session/bin/spectrwm-trayer-start.sh
	rm -f ~/.config/spectrwm-session/bin/spectrwm-trayer-stop.sh
.PHONY: remove
