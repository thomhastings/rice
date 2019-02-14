echo "Mirroring Tails' git index..."
git clone https://git-tails.immerda.ch/tails
echo "Attempting to update tails..."
cd tails
git pull
echo ""
echo "Attempting to checkout devel branch..."
git checkout devel
echo "\e[37mUpdating sumodules\e[0m..."
git submodule update --init
echo ""
echo "Checking for remote live-build branch..."
git branch --list --remotes --all | grep live-build
for REMOTE in `git branch --list --remotes --all | grep live-build`
do
echo "Found:" $REMOTE
sleep 0.1
done
sleep 9
echo
echo "Forking latest live-build branch to build T.A.N.T.O..."
git checkout --track $REMOTE
echo
sleep 0.5
echo "Creating new branch \"Tanto\" for T.A.N.T.O. Linux..."
git branch tanto
echo "Done working with the \`tails\` repo!"
git status
echo
git branch
cd ..
sleep 9
echo
echo "   -==============================================-   "
echo "T.A.N.T.O. is The Amnesic Network Toolkit for Offense."
echo "   -==============================================-   "
echo
sleep 9
echo
echo "Checking dependencies..."
echo
sdmem
sleep 1
sudo apt install secure-delete -y
which sdmem
echo
sleep 1
echo "..."
echo 
sleep 3
echo "<Insert Confetti Party Emojis Here>"
sleep 1
echo ""
echo "Moving on to Kali..." && sleep 1
echo "CTRL+C now before it tries to mirror all of Kali's repos."
sleep 1
echo "9..."
sleep 1
echo "8..."
sleep 1
echo "7..."
sleep 1
echo "6..."
sleep 1
echo "5..."
sleep 1
echo "4..."
sleep 1
echo "3..." && sleep 1 && echo "2..." && sleep 1 && echo "1..."
sleep 1
mkdir kali
echo "Mirroring or updating all Kali packages via git..."
cd kali
for LINE in `curl http://git.kali.org/gitweb/?a=project_index | sort | cut -d " " -f 1`
do
	if [ ! -e "kali/`echo $LINE | awk -F. '{print $1}'`" ]
	then
		git clone git://git.kali.org/$LINE
	else
		cd $LINE
		git pull
		cd ..
	fi
done
