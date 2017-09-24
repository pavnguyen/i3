#!/bin/sh
case "$1" in
    lock)
        i3lock --fuzzy
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        sudo suspend
        ;;
    hibernate)
        sudo hibernate
        ;;
    reboot)
        sudo reboot
        ;;
    shutdown)
        sudo poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
