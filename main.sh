#!/bin/bash

cd modules
./00-initial_setup.sh
source 01-create_user.sh
su - "$username"
./02-install_packages.sh
./03-enable_sddm.sh
