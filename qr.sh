#!/bin/bash

rm -rf temp

mkdir temp

cd temp

gm convert ../qr.gif +adjoin frame%d.png

for a in {0..35} ; do

       FLAG="$FLAG$(zbarimg -q frame$a.png | awk -F ":" '/^QR/ { print $2 }')"

done

echo $FLAG
