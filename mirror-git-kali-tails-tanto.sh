echo "Mirroring Tails' git index..."
git clone https://git-tails.immerda.ch/tails
input "CTRL+C now before it tries to mirror all of Kali's repos."
mkdir kali
cd kali
echo "Mirroring all Kali packages via git..."
for LINE in `curl http://git.kali.org/gitweb/?a=project_index | sort`
do
	if [ ! -e "tails/kali/`echo $LINE | awk -F. '{print $1}'`" ]
	then
		git clone git://git.kali.org/$LINE
	else
		cd $LINE
		git pull
		cd ..
	fi
done
