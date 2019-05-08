#!/bin/bash

echo Initial Setup!;
sleep 1;
echo Install Xcode first before continuing this setup. Hit ENTER when done.;
pause;
echo (1 - 1/ installing brew);
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
echo Applying autohide Dock mods;
defaults write com.apple.dock autohide-time-modifier -float 0.2; killall Dock;
defaults write com.apple.dock autohide-delay -float 0; killall Dock;
echo Downloading Brew Stuff;
brew install git neofetch node@10 youtube-dl ffmpeg zsh;
brew cask install visual-studio-code
echo Downloading GPU Switcher utility for 2018 MBP;
git clone https://github.com/tam-lam/gpu-switch;
cp ./gpu-switch/gpu-switch /usr/local/bin;
cd ..;
rm -rf ./gpu-switch;


