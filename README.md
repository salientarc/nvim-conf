# My Neovim Setup

## TF is this!

Welp. This is my config files for neovim. This config make it easier to transition from VSCode to vim/neovim. This'll make the development procedure better and efficient. This config is mainly for windows users but can work on multi-platform.

## Features

- Packge managerment system: Packer
- Config written in LUA
- Code Completion: `cmp`
- Debugging and formating: `Null-ls`
- Multiple and native language support (lsp)
- Better syntax highlighting with tree-sitter
- Terminal: Windows Terminal with PS 7.0*

## Keymaps

- All keymaps are listed in `this_repo/lua/settings/keymaps.lua`

## Windows Installation

### 1. Installation
- Install LUA on windows from http://winlua.net/
- Setup `git` (necessary for tree-sitter and git plugins)
- Choco / Scoop for installation of `llvm` compiler & lazygit
- Fira Code Nerd Font

### 2. Open Neovim

Before installation you have to setup packer. For installation process consider following docs on github https://github.com/wbthomason/packer.nvim#quickstart

### 3. lazygit, tree-sitter and more...

Just simply run this command.

`choco install lazygit llvm zig fzf ripgrep`

> All installed plugins are there in `lua/plugins.lua` feel free to update it. `C-s` or `:w` to save file.