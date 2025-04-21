echo -e "\n[titanium]\nSigLevel = Optional TrustAll\nServer = https://titanium-linux.github.io/repo/x86_64/" | sudo tee -a /etc/pacman.conf
sudo pacman -Sy
