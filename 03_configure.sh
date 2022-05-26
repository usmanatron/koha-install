#!/bin/bash

LIB_NAME=$0

# Setup DB
sudo koha-create --create-db "$LIB_NAME"

# Setup Plack
sudo koha-plack --enable "$LIB_NAME"
sudo koha-plack --start "$LIB_NAME"

sudo service apache2 restart

BE_USER="koha_$(LIB_NAME)"
BE_PASS=$(sudo koha-passwd libraryname)

echo "Koha setup complete! Yiou should now be able"
echo "to access the backend."
echo "Username $BE_USER"
echo "Password: ${BE_PASS}"