#!/bin/sh
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

exec i3 -c $HOME/dotfiles/.i3/config -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
