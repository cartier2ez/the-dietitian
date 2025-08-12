#!/bin/bash

# Exit script if any command fails
set -e

echo "Welcome to the Dietitian install script!"

# --- Prompt for MySQL Credentials ---
read -r -p "Enter your MySQL username: " MYSQL_USER
read -r -s -p "Enter your MySQL password: " MYSQL_PASSWORD
echo  # Newline after password input
MYSQL_DATABASE="dietitian"

# --- Run MySQL Commands ---
echo "Setting up MySQL database"
cd /expo-app/data/database || { echo "Directory not found!"; exit 1; }
mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" "$MYSQL_DATABASE" -e "source user.sql;source item.sql;source Paul.sql;source WTRMLNWTR.sql;"

# --- Set up server ---
echo "Installing server packages"
cd ../../../server
npm install

# --- Set up app ---
echo "Installing app packages"
cd ../expo-app
npm install

# --- Done ---
echo "Done installing Dietitian!"
echo "Make sure to check out the README for info on how to run the project."