#!/bin/bash

# Author : Eshan Roy
# Author URI : https://github.com/eshanized

rm hawkeye*

echo "Repo Adding..."
repo-add -s -n -R hawkeye.db.tar.gz *.pkg.tar.zst

sleep 1

rm hawkeye.db
rm hawkeye.db.sig

rm hawkeye.files
rm hawkeye.files.sig

mv hawkeye.db.tar.gz hawkeye.db
mv hawkeye.db.tar.gz.sig hawkeye.db.sig

mv hawkeye.files.tar.gz hawkeye.files
mv hawkeye.files.tar.gz.sig hawkeye.files.sig


echo "Repo Updated..."