# Create symlinks to conf files in default configuration directories
#!/usr/bin/env bash
WD=$(pwd)
I3_PATH="$HOME/.i3/config"
BASH_PATH="$HOME/.bashrc"
TMUX_PATH="$HOME/.tmux.conf"


if [ -f "$I3_PATH" ]; then
    mv $I3_PATH "$I3_PATH".bk
fi

ln -s $WD/i3/config $I3_PATH

if [ -f "$BASH_PATH" ]; then
    mv $BASH_PATH "$BASH_PATH".bk
fi

ln -s $WD/bash/bashrc $I3_PATH

if [ -f "$TMUX_PATH" ]; then
    mv $TMUX_PATH "$TMUX_PATH"
fi

ln -s $WD/tmux/tmux.conf $TMUX_PATH