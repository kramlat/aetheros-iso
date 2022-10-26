#!/bin/bash

rm  mirror.*

echo "repo-add"
repo-add -n -R mirror.db.tar.zst *.pkg.tar.zst
sleep 5

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
