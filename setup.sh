#!/bin/bash
NUMBER=7

echo "Welecome to the YStem and Chess Setup Installer"
echo "-----------------------------------------------"
echo "(1/$NUMBER) Updating the apt"
sudo apt-get update
echo "::Done"

echo "(2/$NUMBER) Installing npm"
sudo apt-get install npm
echo "::Done"

echo "(3/$NUMBER) Installing Node.js..."
sudo apt-get install -y nodejs > /dev/null
echo "::Done"

echo "(4/$NUMBER) Installing Angular CLI..."
sudo npm install -g @angular/cli > /dev/null
sudo npm install -g @angular-devkit/build-angular > /dev/null
echo "::Done"

echo "(5/$NUMBER) Installing php"
sudo apt-get install -y php > /dev/null
echo "::Done"

echo "(6/$NUMBER) Installing mongodb driver"
sudo apt-get install -y php-pear php-dev > /dev/null
sudo pecl install mongodb > /dev/null
echo "extension=mongodb.so" | sudo tee -a $(php -i | grep "Loaded Configuration File" | awk '{print $5}') > /dev/null
echo "::Done"

echo "(7/$NUMBER) Installing nodemon"
sudo npm isntall -g nodemon > /dev/null
echo "::Done"

echo "(8/$NUMBER) Installing express"
sudo npm install -g express > /dev/null
echo "::Done"

echo "(9/$NUMBER) Installing socket.io"
sudo npm install -g socket.io > /dev/null
echo "::Done"

echo "Setup Complete"
