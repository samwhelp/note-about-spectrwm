#!/usr/bin/env bash


################################################################################
### head: Link
##

## * https://github.com/samwhelp/note-about-xsession

##
### tail: Link
################################################################################


################################################################################
### Head: Xresources
##


#test -f "$HOME/.Xresources" && xrdb -load "$HOME/.Xresources"
#test -f "$HOME/.Xresources" && xrdb -merge "$HOME/.Xresources"
#/usr/local/bin/xresources-load.sh

#xresources-load.sh


##
### Tail: Xresources
################################################################################


################################################################################
### Head: Network /
##

## network manager applet
#sleep 1 &&
#nm-applet &

## Note: use /etc/xdg/autostart/nm-applet.desktop


app_nm_applet_start () {
	nm-applet &
}


##
### Tail: Network /
################################################################################


################################################################################
### Head: Network /
##


## blueman-applet (Package: blueman)
#blueman-applet
## Note: use /etc/xdg/autostart/blueman.desktop

app_blueman_applet_start () {
	blueman-applet &
}

##
### Tail: Network /
################################################################################


################################################################################
### Head: Volume / volumeicon
##

## volumeicon (Package: volumeicon-alsa)

app_volumeicon_start () {
	volumeicon &
}

##
### Tail: Volume / volumeicon
################################################################################


################################################################################
### Head: Volume / mate-volume-control-status-icon
##

## mate-volume-control-status-icon (Package: mate-media)

app_mate_volume_control_status_icon_start () {

	mate-volume-control-status-icon &
}

##
### Tail: Volume / mate-volume-control-status-icon
################################################################################


################################################################################
### Head: Desktop / Wallpaper / feh
##


## move to ~/bin/wallpaper.sh
#wallpaper.sh &

app_feh_start () {

	#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
	#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
	#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/xfce/palm-wave.jpg"
	THE_WALLPAPER_FILE_PATH="$HOME/Pictures/Wallpaper/bg.jpg"
	feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &

}

##
### Tail: Desktop / Wallpaper / feh
################################################################################


################################################################################
### Head: Compositor / compton
##

app_compton_start () {
	#compton &
	#compton --config ~/.config/compton.conf &
	#compton --config ~/.config/compton/compton.conf &

	#compton --config ~/.config/spectrwm/etc/compton/compton.conf &

	compton &
}

##
### Tail: Compositor / compton
################################################################################


################################################################################
### Head: Compositor / picom
##

app_picom_start () {
	picom &
}

##
### Tail: Compositor / picom
################################################################################


################################################################################
### Head: Policykit Agent
##

## [policykit-1-gnome]
## $ dpkg -L policykit-1-gnome | grep desktop
## /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop)
## Exec=/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop) | cut -d '=' -f 2
## /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1

#/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &


## [lxqt-policykit]
## $ dpkg -L lxqt-policykit | grep desktop
## /etc/xdg/autostart/lxqt-policykit-agent.desktop
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop)
## Exec=lxqt-policykit-agent
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop) | cut -d '=' -f 2
## lxqt-policykit-agent

#lxqt-policykit-agent &


##
### Tail: Policykit Agent
################################################################################


################################################################################
### Head: Screen Saver
##


## xscreensaver
## /etc/xdg/autostart/xscreensaver.desktop
#/usr/share/xscreensaver/xscreensaver-wrapper.sh -no-splash &


##
### Tail: Screen Saver
################################################################################


################################################################################
### Head: Im / Fcitx
##

## $ dpkg -L fcitx-data | grep fcitx.desktop
## /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' /usr/share/applications/fcitx.desktop
## $ grep '^Exec=' $(dpkg -L fcitx-data | grep fcitx.desktop)
## Exec=fcitx

app_fcitx_start () {

	fcitx &

}

##
### Tail: Im / Fcitx
################################################################################


################################################################################
### Head: Tray / stalonetray
##

#spectrwm-stalonetray-start.sh &

app_stalonetray_start () {

	stalonetray &

}

##
### Tail: Tray / stalonetray
################################################################################


################################################################################
### Head: Tray / trayer
##

## * https://github.com/sargon/trayer-srg

app_trayer_start () {

	trayer						\
		--monitor primary		\
		--edge top				\
		--widthtype pixel		\
		--width 200				\
		--heighttype pixel		\
		--height 20				\
		--align right			\
		--margin 40				\
		--transparent true		\
		--alpha 0				\
		--tint 0x333333			\
		--iconspacing 4			\
		--distance 3 &

}

##
### Tail: Tray / trayer
################################################################################


################################################################################
### Head: Terminal / Sakura
##

app_sakura_start () {
	sakura -m &
}

##
### Tail: Terminal / Sakura
################################################################################


################################################################################
### Head: Main
##

__main__ () {

## Network
	app_nm_applet_start
	app_blueman_applet_start

## Volumn
	#app_volumeicon_start
	app_mate_volume_control_status_icon_start

## Compositor
	#app_compton_start
	app_picom_start

## Desktop
	app_feh_start

## Im
	app_fcitx_start

## Trayer
	#app_stalonetray_start
	app_trayer_start

## Terminal
	#app_sakura_start


}

__main__

##
### Tail: Main
################################################################################
