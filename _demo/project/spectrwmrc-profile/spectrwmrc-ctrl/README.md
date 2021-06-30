
# spectrwmrc-ctrl

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-spectrwm/gh-pages/_demo/project/spectrwmrc-profile/spectrwmrc-ctrl/spectrwmrc-ctrl' -O "$HOME/.local/bin/spectrwmrc-ctrl"

chmod 755 "$HOME/.local/bin/spectrwmrc-ctrl"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-spectrwm/gh-pages/_demo/project/spectrwmrc-profile/spectrwmrc-ctrl/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-spectrwm/gh-pages/_demo/project/spectrwmrc-profile/spectrwmrc-ctrl/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ spectrwmrc-ctrl
```

or

``` sh
$ spectrwmrc-ctrl help
```


### Debug

``` sh
$ export DEBUG_SPECTRWMRC_CTRL=true
```
