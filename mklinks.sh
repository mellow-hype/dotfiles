# Create symlinks to conf files in default configuration directories
#!/usr/bin/env bash
WD=$(pwd)
I3_PATH="$HOME/.i3/config"
BASH_PATH="$HOME/.bashrc"
TMUX_PATH="$HOME/.tmux.conf"

mv $BASH_PATH $BASH_PATH-bk
mv $I3_PATH $I3_PATH-bk
mv $TMUX_PATH $TMUX_PATH-bk

ln -s $WD/i3/config $I3_PATH
ln -s $WD/bash/bashrc $I3_PATH
ln -s $WD/tmux/tmux.conf $TMUX_PATH
