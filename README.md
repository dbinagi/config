# My personal Dotfiles

## Setup environments

### Windows (With WSL)

1) Install WSL to support Linux terminal
    `wsl --install -d Ubuntu`
1) Install tmux
    `sudo apt install tmux`
1) Install Fish
    `sudo apt install fish`
1) Configure fish as default shell
    `chsh -s $(which fish)`
1) Install NeoVim
    `sudo apt install neovim`
1) Execute install_wsl.bat
1) Open nvim from a command prompt and write `:PlugInstall`

### Windows (Without WSL)

1) Install NeoVim
2) Create folder nvim in `C:\Users\USER-NAME\AppData\Local\nvim`
3) Execute install_windows.bat
4) Open nvim from a command prompt and write `:PlugInstall`

## Troubleshooting

### Error with VCRUNTIME140.DLL

1) Install c++ 2015: https://www.microsoft.com/en-us/download/details.aspx?id=52685

### Error "No C compiler found!"

**On Windows**
1) Install: `choco install mingw`

**On Linux**
1) Install: `sudo apt install build-essential`

### No fonts on MAC

1) Install patched font, complete version: https://www.nerdfonts.com/font-downloads

### NVIM: Grep config for telescope

Install dependency: `https://github.com/BurntSushi/ripgrep`

### NVIM: LSP not working

Run the command: `:LspInstall` in the file not working

### NVIM: Syntax colors not working

Run the command: `:TSUpdate`

### NVIM: LSPInstaller: No directory .cache

Creates the folders `.cache/nvim`

### NVIM: LSPInstaller: No unzip installer

Install: `sudo apt-get install unzip`
