#!/bin/bash

cd modules
./00-initial_setup.sh
source 01-create_user.sh
su - "$username" -c ./02-install_packages.sh
su - "$username" -c ./03-enable_sddm.sh
