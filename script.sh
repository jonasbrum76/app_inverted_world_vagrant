#!/bin/bash

echo "Updating the server, please wait"
echo "....................."
sudo apt-get update
sudo apa-get upgrade -y

echo "Installing Apache, please wait"
echo "....................."
sudo apt-get install apache2 -y

echo "Copying the application, please wait"
echo "...................."
sudo git clone https://github.com/jonasbrum76/mundo-invertido.git
cd mundo-invertido 
cp cp -R * /var/www/html

echo "Server address"
echo "..................."
ip a 
