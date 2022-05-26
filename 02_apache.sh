#!/bin/bash

# Enable a load of Apache modules
sudo a2enmod rewrite 
sudo a2enmod cgi 
sudo a2enmod headers
sudo a2enmod proxy_http

sudo service apache2 restart

echo "Apache configured"
echo "The nex script needs a single argument for"
echo "the library name"