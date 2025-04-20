#!/bin/bash
timedatectl set-ntp true
reflector
sudo pacman -Syu --noconfirm
