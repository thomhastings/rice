#/bin/sh
ls -alph &
perl 256color.pl &
sleep 9
clear &
#sudo dpkg -i respin*.deb -y &
echo "Testing Colour Palette..."
perl 256color.pl &
wait 9
ls -alph &
echo "Launching game!"
ln -s `which firefox` .
./firefox https://archive.org/details/msdos_Super_Solvers_Operation_Neptune_1990
echo "running a12oxcart.sh ..."
ln -s `which sh` .
sh a12oxcart.sh
exit 0
