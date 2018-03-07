#!/bin/sh
# install & setup OpenVAS script
# (c) Thom Hastings 2018 GNU GPLv3
#
# install OpenVAS
apt install -y openvas
# setup OpenVAS
openvas-setup
# we want to be Super Admin not Admin, with easy pass
openvasmd --delete-user=admin
openvasmd --create-user=admin --role="Super Admin"
openvasmd --user=admin --new-password=admin
echo "Super Admin 'admin' created with password 'admin'"
# the openvas-setup script should already open firefox
#firefox https://127.0.0.1:9392
echo "Configuration > Scan Configs > Import Scan Config"
echo "and choose OpenVAS-PTES-V2-ScanConfig.xml in repo"