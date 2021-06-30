
# Spectrwm / Keybind


## Subject

* [System](#system)
* [Launch App](#launch-app)
* [Region](#region)
* [Workspace](#workspace)
* [Window](#window)
* [Layout](#layout)
* [Volume](#volume)


## Keys

### Mean

| Key | Description |
| --- | --- |
| `Alt` | 'Mod1' (Meta) |
| `Win` | 'Mod4' (Super) |
| `Shift` | 'Shift' |
| `Ctrl` | 'Control' |


> Using 'Alt' maybe collision occurs on bash emacs mode.
>
> Please read:
> * $ man [bash](http://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#readline) ## Search [^READLINE]
> * $ man 3 [readline](http://manpages.ubuntu.com/manpages/bionic/en/man3/readline.3readline.html) ## Search [Emacs Mode] or [Emacs Meta bindings]


### Tips

| Key | Description |
| --- | --- |
| `Alt` | For Workspace (Region) (Desktop) |
| `Win` | For Window (Client) |
| `Shift` | For Window Move or Swap |
| `Ctrl` | For Window Resize |


## System

| Key | Description |
| --- | --- |
| `Alt + Shift + c` | Reconfigure |
| `Alt + Shift + x` | Logout |
| `Alt + Shift + z` | Shutdown |


## Launch App

### Launch Terminal

| Key | Description |
| --- | --- |
| `Alt + Enter` | Launch Terminal (sakura) |
| `Alt + Shift + a` | Launch Terminal (sakura) |
| `Alt + Ctrl + a` | Launch Terminal (xfce4-terminal) |
| `Alt + Shift + t` | Launch Terminal (xterm) |
| `Alt + Ctrl + t` | Launch Terminal (urxvt) |


### Launch Rofi

| Key | Description |
| --- | --- |
| `Alt + Shift + r` | Launch Rofi (rofi -show run) |
| `Alt + Shift + w` | Launch Rofi (rofi -show window -show-icons) |
| `Alt + Shift + d` | Launch Rofi (rofi -show drun -show-icons) |

### Launch Misc

| Key | Description |
| --- | --- |
| `Alt + Shift + f` | Launch File Manager (pcmanfm-qt) |
| `Alt + Shift + g` | Launch File Manager (thunar) |
| `Alt + Shift + e` | Launch Text Editor (mousepad) |
| `Alt + Shift + b` | Launch Web Browser (firefox) |

### Launch Dmenu

| Key | Description |
| --- | --- |
| `Alt + Shift + i` | Launch Dmenu (dmenu_run) |


## Region

None.

## Workspace

| Workspace | Title |
| --- | --- |
| 1 | Term |
| 2 | Edit |
| 3 | Web |
| 4 | File |
| 5 | Misc |


| Key | Description |
| --- | --- |
| `Alt + [1-5]` | Switch to Specific Workspace |
| `Win + [1-5]` | Move Focused Window to Specific Workspace |


| Key | Description |
| --- | --- |
| `Alt + z` | Switch to Perior Workspace |

| Key | Description |
| --- | --- |
| `Alt + a` | Switch to Previous Workspace |
| `Alt + s` | Switch to Next Workspace |

| Key | Description |
| --- | --- |
| `Alt + h` | Switch to Previous Workspace |
| `Alt + l` | Switch to Next Workspace |

| Key | Description |
| --- | --- |
| `Alt + Left` | Switch to Previous Workspace |
| `Alt + Right` | Switch to Next Workspace |


## Window

### Window Close

| Key | Description |
| --- | --- |
| `Win + q` | Window Close |
| `Win + Shift + q` | Window Kill |

### Window FullScreen

| Key | Description |
| --- | --- |
| `Win + f` | Window FullScreen |

### Window Floating To Tile

| Key | Description |
| --- | --- |
| `Win + v` | Toggle Window Floating To Tile |

### Window Maximize

| Key | Description |
| --- | --- |
| `Win + w` | Window Maximize |

### Window Minimize

| Key | Description |
| --- | --- |
| `Win + x` | Window Iconify |
| `Win + Shift + x` | Window Uniconify |

### Window Raise

| Key | Description |
| --- | --- |
| `Win + g` | Window Raise |


### Window Focus

| Key | Description |
| --- | --- |
| `Win + z` | Focus to Main Window |

| Key | Description |
| --- | --- |
| `Win + a` | Focus to Previous Window |
| `Win + s` | Focus to Next Window |

| Key | Description |
| --- | --- |
| `Win + h` | Focus to Previous Window |
| `Win + l` | Focus to Next Window |

| Key | Description |
| --- | --- |
| `Win + Left` | Focus to Previous Window |
| `Win + Right` | Focus to Next Window |


### Window Swap

| Key | Description |
| --- | --- |
| `Win + Enter` | Swap Focused Window To Top (Stack Order) |
| `Win + b` | Swap Focused Window To Top (Stack Order) |

| Key | Description |
| --- | --- |
| `Win + grave` | Swap Focused Window To Up (Stack Order) |
| `Win + Tab` | Swap Focused Window To Down (Stack Order) |

> grave means `

| Key | Description |
| --- | --- |
| `Win + k` | Swap Focused Window To Up (Stack Order) |
| `Win + j` | Swap Focused Window To Down (Stack Order) |

| Key | Description |
| --- | --- |
| `Win + Up` | Swap Focused Window To Up (Stack Order) |
| `Win + Down` | Swap Focused Window To Down (Stack Order) |

### Window Float Move

| Key | Description |
| --- | --- |
| `Win + Shift + k` | Window Float Move Up |
| `Win + Shift + j` | Window Float Move Down |
| `Win + Shift + h` | Window Float Move Left |
| `Win + Shift + l` | Window Float Move Right |

| Key | Description |
| --- | --- |
| `Win + Shift + Up` | Window Float Move Up |
| `Win + Shift + Down` | Window Float Move Down |
| `Win + Shift + Left` | Window Float Move Left |
| `Win + Shift + Right` | Window Float Move Right |


### Window Float Resize

| Key | Description |
| --- | --- |
| `Win + Ctrl + k` | Window Float Resize |
| `Win + Ctrl + j` | Window Float Resize |
| `Win + Ctrl + h` | Window Float Resize |
| `Win + Ctrl + l` | Window Float Resize |

| Key | Description |
| --- | --- |
| `Win + Ctrl + Up` | Window Float Resize |
| `Win + Ctrl + Down` | Window Float Resize |
| `Win + Ctrl + Left` | Window Float Resize |
| `Win + Ctrl + Right` | Window Float Resize |

## Layout

### Layout Switch

| Key | Description |
| --- | --- |
| `Alt + grave` | Switch To Previous Layout |
| `Alt + Tab` | Switch To Next Layout |

> grave means `

| Key | Description |
| --- | --- |
| `Alt + k` | Switch To Previous Layout |
| `Alt + j` | Switch To Next Layout |

| Key | Description |
| --- | --- |
| `Alt + Up` | Switch To Previous Layout |
| `Alt + Down` | Switch To Next Layout |

### Layout Resize

| Key | Description |
| --- | --- |
| `Alt + Ctrl + Up` | Increase Main Width |
| `Alt + Ctrl + Down` | Decrease Main Width |


## Volume

| Key | Description |
| --- | --- |
| `Alt + Shift + v` | Launch Volume Control (mate-volume-control) |
| `Alt + m` | Volume Toggle Mute |


| Key | Description |
| --- | --- |
| `Alt + Shitf + ,` | Volume Decrease |
| `Alt + Shitf + .` | Volume Increase |
| `Alt + Ctrl + ,` | Volume Decrease Slowly |
| `Alt + Ctrl + .` | Volume Increase Slowly |

> collision occurs on bash emacs mode
> * `Alt + ,`
> * `Alt + .`


| Key | Description |
| --- | --- |
| `XF86AudioMute` | Volume Toggle Mute |
| `XF86AudioLowerVolume` | Volume Decrease |
| `XF86AudioRaiseVolume` | Volume Increase |
