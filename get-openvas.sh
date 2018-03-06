#!/bin/sh
# install & setup OpenVAS script
# (c) Thom Hastings 2018 GNU GPLv3
#
apt install -y openvas
openvas-setup
# we want to be Super Admin not Admin, with easy pass
openvasmd --delete-user=admin
openvasmd --create-user=admin --role="Super Admin"
openvasmd --user=admin --new-password=admin
echo "Super Admin 'admin' created with password 'admin'."
# the openvas-setup script should already open firefox
#firefox https://127.0.0.1:9392