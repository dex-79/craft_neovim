
# Craft-NeoVim

Craft-NeoVim is a setup script designed to automate the installation and configuration of the NeoVim text editor on both macOS and Debian-based Linux systems (Ubantu,Kali, Parrot OS, etc). This script ensures a smooth and consistent setup process for developers who want to quickly get started with a powerful and customizable text editor environment. like this-

## Logo

![Logo](https://github.com/dex-79/craft_neovim/blob/main/logo/logo.png)

## Screenshots

![App Screenshot](https://github.com/dex-79/craft_neovim/blob/main/Preview/preview01.png)


## Features

Automated Installation:

On macOS: Installs Homebrew if not already installed, and then uses it to install Git and NeoVim.
On Debian-based Linux: Updates the package list and installs NeoVim using apt.

Custom Configuration:

After installing NeoVim, the script copies a predefined configuration from the current directory to the user's NeoVim configuration directory (~/.config/nvim).

Error Handling:

Provides basic error handling to ensure that users are informed if there are issues during installation or configuration.

## Installation

Clone the Repository:

Ensure you have Git installed, then clone the repository containing this script and the NeoVim configuration files.

```bash
  git clone***
```
Open Folder
```bash
  cd craft_NeoVim
``` 
Provide executable permissions,
```bash
  chmod +x setup.sh
```
Executing script.sh file,
```bash
  bash ./setup.sh
```
To run manually after installation,
```bash
  nvim
```
## Lessons Learned

After the script completes, open NeoVim to start using your newly configured text editor
Here is the Key map you are gonna to use for work properly.

ESC = Exit insert mode with jk

␣nh = Clear search highlights

␣+ =Increment number

␣- =Decrement number␣

␣sv =Split window vertically

␣sh =Split window Horizontally 

␣se =Make splits equal size

␣sx =Close current split

␣to =Open new tab

␣tx =Close new tab

␣tn =Go to next tab

␣tp =Go to previous tab

␣tf =Open current buffer in new tab

␣ee =Toggle file explorer

␣ef =Toggle file explorer on current file

␣ec =Collapse file explorer

␣er =Refresh file explorer

␣ff =Fuzzy find files in cwd

␣fr =Fuzzy find recent files

␣fs =Find string in cwd

␣fc =Find string under cursor in cwd

␣wr =Restore session for cwd

␣ws =Save session for auto session root dir

␣sm =Maximize/minimize a split

␣rn =Smart Rename

␣D =show  diagnostics for file

␣rs =mapping to restart lsp if necessary

␣xw =Open trouble workspace diagnostics

␣xd =Open trouble document diagnostics

␣xq =Open trouble quickfix list

␣xl =Open trouble location list

␣xt =Open todos in trouble

␣hS =Stage buffer

␣hR =Reset buffer

␣hd/hD =Diff this


## License

[MIT](https://choosealicense.com/licenses/mit/)


# Disclaimer 
This script is provided "as is" without any warranty of any kind, either express or implied,

The entire risk as to the quality and performance of the script is with you.

Should the script prove defective, you assume the cost of all necessary servicing, repair, or correction.

## Some Known Error or Issues

While getting error like this.

Error: Failed to fetch http://mirror.kku.ac.th/kali/pool/main/n/neovim/neovim_0.9.5-7+b1_amd64.deb  Cannot initiate the connection to mirror.kku.ac.th:80 (2001:3c8:c108:2895::2). - connect (101: Network is unreachable) Could not connect to mirror.kku.ac.th:80 (202.28.95.174), connection timed out
Error: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
Error while installing NEOVIM. Try (sudo apt install neovim)

then try,
```bash
bash ./setup.sh
```
