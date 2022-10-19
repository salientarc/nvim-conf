# My Neovim Setup

### Startup
![image](https://user-images.githubusercontent.com/78542800/196750533-6e675bf2-b82a-4626-ac67-a53030d4a47b.png)

## File Search
![image](https://user-images.githubusercontent.com/78542800/196750794-d03b344e-4abd-4b14-a559-8dd8ca774efb.png)

### Workflow
![image](https://user-images.githubusercontent.com/78542800/196750985-b7b7e5aa-4d68-436a-ad7e-479ee5c35282.png)

## Features

- Packge managerment system: Packer
- Config written in LUA
- Code Completion: `cmp`
- Debugging and formating: `Null-ls`
- Multiple and native language support (lsp)
- Better syntax highlighting with tree-sitter

## Keymaps

- All keymaps are listed in `lua/settings/keymaps.lua`

## Windows Installation

### 1. Installation

- Install LUA on windows from [HERE](http://winlua.net/)
- Setup `git` (necessary for tree-sitter and git plugins)
- Choco / Scoop for installation of `llvm` compiler & lazygit
- Fira Code Nerd Font

### 2. Setup Neovim

- If you're on windows then `choco install neovim` or `winget install Neovim.Neovim`
  - If you're on mac / linux check the installation instruction [HERE](https://github.com/neovim/neovim/wiki/Installing-Neovim)

- Before installation you have to setup packer. For installation process consider following docs on github [HERE](https://github.com/wbthomason/packer.nvim#quickstart)

- After that clone these config files

  - **Windows** `git clone https://github.com/salientarc/nvim-conf.git ~/AppData/Local/nvim`
  - **Linux / MacOS** `git clone https://github.com/salientarc/nvim-conf.git ~/.config/nvim`

### 3. lazygit, tree-sitter and more...

Just simply run this command.

`choco install lazygit llvm zig fzf ripgrep`

**(If you're on linux/mac, Use the docs that I've linked below :D)**

**Lazygit Installation**: [HERE](https://github.com/jesseduffield/lazygit#installation)

**Ziglang Installation**: [HERE](https://github.com/ziglang/zig/wiki/Install-Zig-from-a-Package-Manager)

**Fzf Installation**: [HERE](https://github.com/junegunn/fzf#installation)

**Ripgrep Installation** [HERE](https://github.com/BurntSushi/ripgrep#installation)

Now you're almost done! Open terminal and type `nvim` to open NeoVim then  type`:PackerSync` to update and compile all plugins.

> All installed plugins are there in `lua/plugins.lua` feel free to update it. `C-s` or `:w` to save file.

# TO-DOs
- Improve Bindings
