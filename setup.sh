#!/bin/bash
# DISCLAIMER
# This script is provided "as is" without any warranty of any kind, either express or implied,
# including but not limited to the implied warranties of merchantability and fitness for a particular purpose.
# The entire risk as to the quality and performance of the script is with you.
# Should the script prove defective, you assume the cost of all necessary servicing, repair, or correction.

# In no event shall the author or copyright holders be liable for any claim, damages, or other liability,
# whether in an action of contract, tort, or otherwise, arising from, out of, or in connection with the script
# or the use or other dealings in the script.

# By using this script, you agree to the following terms:
# 1. You are solely responsible for any and all direct or indirect damages caused by or associated with
#    the use of this script.
# 2. You acknowledge that the script may modify your system and that you use it at your own risk.
# 3. You agree to review and understand the script's code and functionality before running it.
# 4. You agree to run this script on your system only if you understand and accept its potential effects.


function mac {
    for i in 1 2
    do
        brew -h
        if [ $? -eq 0 ]; then
            # Installing git to clone the git repository.
            brew install git
            # Installing neovim
            brew install neovim
    
            if [[ $? -eq 0 ]]; then
                neo_configuration
            else
                echo "Error while installing NEOVIM"
            fi
            break
        else
            # Downloading and installing Homebrew from the official website.
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            # After installing, add it to the path:
            echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
            eval "$(/opt/homebrew/bin/brew shellenv)"
        fi

    done
}

function linux {
    # This function helps in the installation of neovim on Debian-based Linux
    sudo apt-get update
    
    if [ $? -eq 0 ]; then
        sudo apt install -y neovim
    else
        echo "Please check your connection or update your computer manually."
        return 1
    fi

    if [ $? -eq 0 ]; then
        loc="$(pwd)/nvim"
        sudo cp -r $loc /root/.config/
        neo_configuration
    else
        echo "Error while installing NEOVIM. Try (sudo apt install neovim)"
    fi
}

function neo_configuration {
    loc="$(pwd)/nvim"
    cp -r $loc ~/.config/

    if [ $? -eq 0 ]; then
        nvim
    else
        echo "Installation Error!"
    fi
}
function print_craft {
    echo "  ____            __ _        _   _         __     ___           "
    echo " / ___|_ __ __ _ / _| |_     | \\ | | ___  __\\ \\   / (_)_ __ ___  "
    echo "| |   | '__/ _\` | |_| __|____|  \\| |/ _ \\/ _ \\ \\ / /| | '_ \` _ \\ "
    echo "| |___| | | (_| |  _| ||_____| |\\  |  __/ (_) \\ V / | | | | | | |"
    echo " \\____|_|  \\__,_|_|  \\__|    |_| \\_|\\___|\\___/ \\_/  |_|_| |_| |_|"
    echo "                                                            By Alok Raj      "
}
print_craft
os_name=$(uname -s)
if [[ "$os_name" == "Darwin" ]]; then
    # Code specific to Mac (macOS)
    mac
elif [[ "$os_name" == "Linux" ]]; then
    # Code specific to Debian (or other Linux distributions)
    linux
else
    echo "Warning: Unknown OS - $os_name"
fi
