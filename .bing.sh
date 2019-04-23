#! /bin/bash

today=$(date +%Y:%m:%d)
x="$HOME/.bing-wallpapers/$today.jpg"
url=$(curl "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1" | jq .images[0].url | tr -d '",')

wget -O $x "https://bing.com$url"

feh --bg-scale $x
