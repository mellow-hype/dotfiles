OWD=$(pwd)
cd /tmp/
git clone https://github.com/banga/powerline-shell
cd powerline-shell
sudo python setup.py install
cd $OWD
cp powerline-shell.json $HOME/.powerline-shell.json
cat powerline_bash.txt >> ~/.bashrc

