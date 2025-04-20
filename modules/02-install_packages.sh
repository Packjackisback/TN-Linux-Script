if [[ $EUID -ne 0 ]]; then
  echo "not root (???)"
  exit 1
fi

sudo pacman -S base-devel linux-headers plasma kde-applications sddm --noconfirm

