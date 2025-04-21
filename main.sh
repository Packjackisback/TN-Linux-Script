#!/bin/bash
BASE_DIR=$(pwd)

cd "$BASE_DIR/modules"
./00-initial_setup.sh
./01-create_user.sh
./02-install_packages.sh
./03-enable_sddm.sh"
./04-add_repo.sh
./05-install_packages_2.sh
echo "Setup Complete! Reboot"
