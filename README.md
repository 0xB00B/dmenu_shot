<h1 align="center">dmenu_shot</h1>
<p align="center">
  <a href="https://codeberg.org/mehrad/dmenu_shot">
    <img alt="dmenu_shot screenshot" src="https://codeberg.org/mehrad/dmenu_shot/raw/branch/main/assets/menu_screenshot.png"/>
  </a>
</p>


The idea is to have a clean and easy to use dmenu menu to do some basic image manupulation using ImageMagic on the output of [Flameshot](https://flameshot.org).

The actions it can do:

- **Trim** the extra white space from around the screenshot
- **Remove_white** background and make it transparent
- **Negative** the colors
- **Bordered** the screenshot with 3 pixel-wide read line

To see what it does, check out **the [actions](https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/actions.md).**

-------

## Table of Content
- [How to use](#how-to-use)
- [Dependencies](#dependencies)
- [Installation](#installation)
    - [Automatic Installation](#automatic-installation)
    - [Manual installation](#manual-installation)
- [Uninstall](#uninstall)
- [Commands](#commands)
- [Contribution](#contribution)

-------

## How to use

After installation (which is basically copying [a shell file](https://codeberg.org/mehrad/dmenu_shot/src/branch/main/dmenu_shot.sh) to your PATH), you can either use the `dmenu_shot` command in terminal or bind this command to a keyboard shortcut. If you don't know how, click on your Desktop Environment:

- [KDE](https://userbase.kde.org/Tutorials/hotkeys)
- [Xfce](https://docs.xfce.org/xfce/xfce4-settings/keyboard)
- [Gnome](https://help.gnome.org/users/gnome-help/stable/keyboard-shortcuts-set.html.en)

-------

## Dependencies

This script expects the user to have the following softwares installed:
- Flameshot
- dmenu (it can be custom built but should be available in the PATH)
- ImageMagic (specifically the `convert` command
- xclip
- make (This is only a dependency for automatic installation)

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

## Uninstall

If you have automatically installed `dmenu_shot`, you can easily remove/uninstall it automatically as well:

```sh
make remove
```

-------

## Commands

This is a dmenu script and user does not need to insteract with it using the command line, but just in case, a very short help is available using `--help` or `-h`.

-------

## Contribution

To prevent this page to get lengthy, I moved the content of this part to [contribute page](https://codeberg.org/mehrad/dmenu_shot/src/branch/main/docs/contribute.md).
