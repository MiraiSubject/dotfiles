!#/bin/bash

if [[ "$1" = "minimal" ]]; then
    ./minimal.sh
elif [[ "$1" = "budgie" ]]; then
    clear
    echo "This installation will run on Ubuntu Budgie!
    echo "This probably runs fine or other Debian-based distros, but those are not supported"
    echo "You can still quit by pressing CTRL+C within the next 5 seconds"
    sleep 5
    echo "Updating repositories, system and removing unneeded packages";
    apt update && apt upgrade -y;
    apt autoremove -y;
    echo "Installing build-essential, firefox and packages for LaTeX";
    apt install build-essential git firefox texlive --install-recommends -y;
    echo "Removing Chrome YEET";
    apt purge chromium-browser -y;
    echo "Installing the necessary packages for LaTeX";
    apt install texlive-lang-european texlive-latex-recommended -y;
    echo "Installing python 3";
    apt install python3;
    pip3 install wal;
    ./minimal.sh
else
    echo "This setup will not run without specifying the need for a minimal or full setup."
fi

