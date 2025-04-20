#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Please run as root"
  exit 1
fi

read -p "Enter new username: " username

if id "$username" &>/dev/null; then
  echo "User '$username' already exists."
  exit 1
fi

read -s -p "Enter password: " password
echo
read -s -p "Confirm password: " password2
echo

if [[ "$password" != "$password2" ]]; then
  echo "Passwords do not match."
  exit 1
fi

useradd -m -G wheel -s /bin/bash "$username"

echo "$username:$password" | chpasswd

echo "User '$username' created and added to 'wheel' group."

echo "Enabling sudo for wheel group..."
EDITOR="sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/'" visudo

if grep -qE '^%wheel\s+ALL=\(ALL:ALL\)\s+ALL' /etc/sudoers; then
  echo "Sudo access for wheel group enabled successfully."
else
  echo "Failed to enable sudo access. Please check /etc/sudoers manually."
fi
