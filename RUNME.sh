#/bin/sh
ls -alph &
perl 256color.pl &
sleep 9
clear &
sudo dpkg -i respin*.deb -y &
perl 256color.pl &
wait 9
ls -alph &
exit 0