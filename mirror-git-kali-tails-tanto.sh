echo "Mirroring Tails' git index..."
git clone https://git-tails.immerda.ch/tails
echo "Attempting to update tails..."
cd tails
git pull
cd ..
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
