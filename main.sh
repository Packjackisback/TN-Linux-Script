#!/bin/bash
BASE_DIR=$(pwd)

cd "$BASE_DIR/modules"
./00-initial_setup.sh
source 01-create_user.sh
su - "$username" -c "$BASE_DIR/modules/02-install_packages.sh"
su - "$username" -c "$BASE_DIR/modules/03-enable_sddm.sh"

echo "Setup Complete! Reboot"
