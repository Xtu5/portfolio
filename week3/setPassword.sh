#!/bin/bash

read -p "Please choose a folder" folderName

mkdir $folderName

read -sp "Please type your password" setPassword

echo $setPassword | sha256sum > ./$folderName/secret.txt

exit 0
