#/bin/sh
ls -alph &
perl 256color.pl &
sleep 9
clear &
sudo dpkg -i respin*.deb -y &
perl 256color.pl &
wait 9
ls -alph &
ln -s `which firefox` .
"echo running a12oxcart.sh ..."
./a12oxcart.sh
exit 0
