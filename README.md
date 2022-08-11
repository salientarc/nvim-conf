# My Neovim Setup

### Startup

![image](https://user-images.githubusercontent.com/78542800/184152236-e52450ca-7088-414c-ab14-43409dd707ca.png)

### Workflow

![image](https://user-images.githubusercontent.com/78542800/184152467-69173bb0-e63e-4575-b986-153288d2c3da.png)

## TF is this!

Welp. These are my config files for neovim. This config make it easier to transition from VSCode to vim/neovim. This'll make the development procedure better and efficient. This config is mainly for windows users but can work on multi-platform.

## Features

- Packge managerment system: Packer
- Config written in LUA
- Code Completion: `cmp`
- Debugging and formating: `Null-ls`
- Multiple and native language support (lsp)
- Better syntax highlighting with tree-sitter
- Terminal: Windows Terminal with PS 7.0*

## Keymaps

- All keymaps are listed in `lua/settings/keymaps.lua`

## Windows Installation

### 1. Installation

- Install LUA on windows from [HERE](http://winlua.net/)
- Setup `git` (necessary for tree-sitter and git plugins)
- Choco / Scoop for installation of `llvm` compiler & lazygit
- Fira Code Nerd Font

### 2. Open Neovim

Before installation you have to setup packer. For installation process consider following docs on github https://github.com/wbthomason/packer.nvim#quickstart

### 3. lazygit, tree-sitter and more...

Just simply run this command.

`choco install lazygit llvm zig fzf ripgrep`

**(If you're on linux/mac, I've linked docs page of all below:D)**

Lazygit Installation: ![HERE](https://github.com/jesseduffield/lazygit#installation)

Ziglang Installation: ![HERE](https://github.com/ziglang/zig/wiki/Install-Zig-from-a-Package-Manager)

Fzf Installation: ![HERE](https://github.com/junegunn/fzf#installation)

Ripgrep Installation ![HERE](https://github.com/BurntSushi/ripgrep#installation)

> All installed plugins are there in `lua/plugins.lua` feel free to update it. `C-s` or `:w` to save file.

# TO-DOs
- Linux and Mac installation
- Improve Bindings
