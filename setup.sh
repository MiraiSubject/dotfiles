!#/bin/bash

if [[ "$1" = "minimal" ]]; then
    ./minimal.sh
elif [[ "$1" = "budgie" ]]; then
    clear
    echo "This installation will run on Ubuntu Budgie!
    echo "This probably runs fine or other Debian-based distros, but those are not supported"
    echo "You can still quit by pressing CTRL+C within the next 5 seconds"
    sleep 5
    apt update && apt upgrade -y;
    apt autoremove -y;
    apt install build-essential git firefox -y;
    apt purge chromium-browser -y;
    apt install python3;
    pip3 install wal;
    ./minimal.sh
else
    echo "This setup will not run without specifying the need for a minimal or full setup."
fi

