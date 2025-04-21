if [[ $EUID -ne 0 ]]; then
  echo "not root (???)"
  exit 1
fi
sudo pacman -S reflector --noconfirm
reflector
sudo pacman -S base-devel linux-headers plasma kde-applications sddm --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -r yay
