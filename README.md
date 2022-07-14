# Dotfiles

Collection of configuration files and scripts to setup a new machine.

## Usage

### Configuration files

The correct process for installing the configuration files, is simply to create a symlink (```$ ln -s <src> <dst>```) to where the configuration file should live.

This process has to be applied for [.bashrc](.bashrc), [.gitconfig](.gitconfig), [.Xresources](.Xresources), [i3 config](i3/config)

### Installing packages with apt (Debian Package Manager)

```console
$ xargs sudo apt-get install <packages.txt
```

Executing this command is installing:
 - git
 - vim
 - rxvt-unicode
 - i3
 - fonts-dejavu-core
 - cmake
 - pavucontrol
 - neofetch
 - htop
 - cmatrix
 - flameshot
 - cloc
 - nasm
 - tree
 - pip
 - feh
 - tmux

 **NOTE**: To install i3-gaps you might also need to run this before installing it
 ```console
$ sudo add-apt-repository ppa:regolith-linux/release\
 ```

Also remember you can sync settings across machines with brave sync chain.

### Installing C++ Tools

```console
$ ./install_cpp_tools.sh 
```

Executing this script is installing:
 - g++-11
 - clang-13
 - build-essential

### Installing NodeJS (with nvm)

```console
$ ./install_nodejs.sh
```

### Installing urxvt resize-font extension

```console
$ ./install_urxvt_resize_font_ext.sh
```

### Installing Brave Browser

```console
$ ./install_brave.sh 
```

### Installing Visual Studio Code

```console
$ ./install_code.sh
```

### Installing CLion 

```console
$ ./install_clion.sh
```

### Installing Discord

```console
$ ./install_discord.sh
```

### Installing Spotify

```console
$ ./install_spotify.sh
```

### Installing Neovim 

```console
$ ./install_nvim.sh
```

### Installing Zsh and Oh-My-Zsh

```console
$ ./install_oh_my_zsh.sh
```

### Installing Rust toolchain and cargo

```console
$ ./install_cargo.sh
```

### Install Alacritty

```console
$ ./install_alacritty.sh
```

You may also need to install:
 - libfontconfig
 - libfontconfig1-dev
 - libxcb-render0
 - libxcb-render0-dev
 - libxcb-shape0
 - libxcb-shape0-dev
 - libxcb-xfixes0
 - libxcb-xfixes0-dev
