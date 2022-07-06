<h1 align="center">dmenu_shot</h1>
<p align="center">
  <a href="https://codeberg.org/mehrad/dmenu_shot">
    <img alt="dmenu_shot screenshot" src="https://codeberg.org/mehrad/dmenu_shot/raw/branch/main/assets/menu_screenshot.png"/>
  </a>
</p>


The idea is to have a clean and easy to use dmenu menu to do some basic image manupulation using ImageMagic on the output of [Flameshot](https://flameshot.org).

The actions it can do:

- <a href="https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md#trim"><span style="background-color:Orange;color:Black;"><strong>Trim</strong></span></a> the extra white space from around the screenshot
- <a href="https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md#remove_white"><span style="background-color:Orange;color:Black;"><strong>Remove_white</strong></span></a> background and make it transparent
- <a href="https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md#negative"><span style="background-color:Orange;color:Black;"><strong>Negative</strong></span></a> the colors
- <a href="https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md#bordered"><span style="background-color:Orange;color:Black;"><strong>Bordered</strong></span></a> the screenshot with 3 pixel-wide read line
- <a href="https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md#scaled"><span style="background-color:Orange;color:Black;"><strong>Scaled</strong></span></a> the screenshot based on the provided percentage (e.g 75%) or to specific dimension (e.g 200x300)
- <span style="background-color:Orange;color:Black;"><strong>Select_Window</strong></span> let the user choose a window, and then it will take screenshot specifically of that window.

All the outputs are copied to clipboard by default.

To see what it does, check out **the [actions](https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md).**

-------

## Table of Content
- [How to use](#how-to-use)
- [Dependencies](#dependencies)
- [Installation](#installation)
    - [Automatic Installation](#automatic-installation)
    - [Manual installation](#manual-installation)
- [Configuration](#configuration)
- [Uninstall](#uninstall)
- [Commands](#commands)
- [Contribution](#contribution)
- [Getting help](#getting-help)

-------

## How to use

After installation (which is basically copying [a shell file](https://codeberg.org/mehrad/dmenu_shot/src/branch/main/dmenu_shot.sh) to your PATH), you can either use the `dmenu_shot` command in terminal or bind this command to a keyboard shortcut. If you don't know how, click on your Desktop Environment:

- [KDE](https://userbase.kde.org/Tutorials/hotkeys)
- [Xfce](https://docs.xfce.org/xfce/xfce4-settings/keyboard)
- [Gnome](https://help.gnome.org/users/gnome-help/stable/keyboard-shortcuts-set.html.en)

-------

## Dependencies

This script expects the user to have the following softwares installed:
- [Flameshot](https://flameshot.org/): The screenshotting tool.
- [dmenu](https://tools.suckless.org/dmenu/): The menu system itself. It can be custom built but should be available in the PATH.
- [ImageMagic](https://imagemagick.org/): A software for image manupulation. This is specifically used in `dmenu_shot` for the `convert` command.
- [xclip](https://github.com/astrand/xclip): Clipboard manager
- [xdotool](https://github.com/jordansissel/xdotool) a command-line X11 automation tool. It is used for letting us selecting the window with mouse.
- [make](https://www.gnu.org/software/make/): This is only a dependency for automatic installation and dependency checking.
- [bash](https://www.gnu.org/software/bash/): The `dmenu_shot` is written in bash.

If you have the `make` installed, you can check what dependencies are installed and which ones are missing using:

```sh
make check
```

-------

## Installation

### Automatic Installation

When you have installed all the dependencies, simply do:

1. Clone this repo or download and extract the zip file

```sh
# To clone the repo
git clone https://codeberg.org/mehrad/dmenu_shot.git 
```

OR

```sh
# To download the ZIP file
wget https://codeberg.org/mehrad/dmenu_shot/archive/master.tar.gz
gunzip --keep dmenu_shot-master.tar.gz
```

2. Install using the Makefile:

```sh
cd dmenu_shot
make install
```

This will install the dmenu_shot to `~/.local/bin` (so it will NOT install it system-wise and will be only installed for the current user). This makes the command `dmenu_shot` be usable in your terminal. All you need to do is to close your terminal and open it again and run `dmenu_shot`. 

### Manual Installation

1. Clone this repo or download and extract the zip file

```sh
# To clone the repo
git clone https://codeberg.org/mehrad/dmenu_shot.git 
```

OR

```sh
# To download the ZIP file
wget https://codeberg.org/mehrad/dmenu_shot/archive/master.tar.gz
gunzip --keep dmenu_shot-master.tar.gz
```

2. Copy the file to the location you want. I suggest `~/.local/bin`:

```sh
cd dmenu_shot
cp dmenu_shot.sh ~/.local/bin/dmenu_shot
```

-------

## Configuration

`dmenu_shot` can be configured using a simple TOML file. The default path would be `~/.config/dmenu_shot/config.toml` but you can set a environment variable named `DMENU_SHOT_CONF_PATH` to overwrite the default path and point the `dmenu_shot` to a custom file.

Until this version we accept a section named `[colors]` which can have the custom color values of the dmenu as shown below. You do not need to define all of them. You can also use comments and empty lines in the config file.

``` toml
# Anything after # is considered comment

[colors]
normal_foreground = "#ff6600"
normal_background = "#8501a7"
selection_foreground = "#ffcc00"
selection_background = "#fa0164"
```

If there is something unexpected in the config file, you will see some error messages to help you fix the issue.

For some tools you can configure some of the default settings through the same config file. For every configurable action, you can create a section with the name format `[action_{action_name}]`. For instance, for the "Bordered" you can have:

``` toml
[action_bordered]
line_color = "#ff0066"
line_thickness = 2
corner_radius = 7
```

List of configurable actions:

- Bordered

-------

## Uninstall

If you have automatically installed `dmenu_shot`, you can easily remove/uninstall it automatically as well:

```sh
make remove
```

-------

## Commands

This is a dmenu script and user does not need to insteract with it using the command line, but just in case, a very short help is available using `--help` or `-h`.

There is also a small `help` available for the `make` which can be seen using `make help` and will output the following:

```
Available arguments:
- "make install" to install
- "make remove"  to uninstall (remove)
- "make check"   to check if you have all dependencies installed
- "make help"    to show this help
```

-------

## Contribution

To prevent this page to get lengthy, I moved the content of this part to [contribute page](https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/contribute.md).

-------

# Getting help

If you have any questions or need help, feel free to [open a new issue](https://codeberg.org/mehrad/dmenu_shot/issues/new). Just make sure you give me as much information as you can so that I can help you easier and give you exactly what you need. 
