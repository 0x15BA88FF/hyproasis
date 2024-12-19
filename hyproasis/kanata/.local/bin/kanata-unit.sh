#!/usr/bin/env bash

install() {
    sudo groupadd uinput
    sudo usermod -aG input $USER
    sudo usermod -aG uinput $USER
    echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' | sudo tee /etc/udev/rules.d/99-input.rules > /dev/null
    sudo udevadm control --reload && udevadm trigger --verbose --sysname-match=uniput
    sudo modprobe uinput

    systemctl --user enable kanata.service
    systemctl --user start kanata.service
}

uninstall() {
    systemctl --user stop kanata.service
    systemctl --user disable kanata.service

    sudo modprobe -r uinput
    sudo rm /etc/udev/rules.d/99-input.rules
    sudo udevadm control --reload-rules && sudo udevadm trigger
    sudo gpasswd -d $USER input
    sudo gpasswd -d $USER uinput
    sudo groupdel uinput
    groups $USER
}

case "$1" in
  install)    install ;;
  uninstall)  uninstall ;;
  *) echo "kanata-unit [install | uninstall]" ;;
esac
