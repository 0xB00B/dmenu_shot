<h1 align="center">dmenu_shot</h1>
<p align="center">
  <a href="https://codeberg.org/mehrad/dmenu_shot">
    <img alt="Gitea" src="https://codeberg.org/mehrad/dmenu_shot/src/branch/main/assets/menu_screenshot.png"/>
  </a>
</p>


The idea is to have a clean and easy to use dmenu menu to do some basic image manupulation using ImageMagic on the output of [Flameshot](https://flameshot.org).


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

### Manual installation

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

## Uninstall

If you have automatically installed `dmenu_shot`, you can easily remove/uninstall it automatically as well:

```sh
make remove
```

## Commands

This is a dmenu script and user does not need to insteract with it using the command line, but just in case, a very short help is available using `--help` or `-h`.
