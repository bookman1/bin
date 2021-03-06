#!/bin/sh
# get all content from a instagram account
if [ $# -eq 0 ]
then echo "ig [install, get]"
fi

case "$1" in
install)
if command -v  pacman >/dev/null ; then 
sudo pacman -S python-pip
sudo pip install instagram-scraper
elif command -v apt >/dev/null ; then 
sudo sudo apt-get install python3-pip
pip3 install instagram-scraper ; fi
;;

get)
mkdir -p $photopath/"$2"
instagram_scraper "$2" --media-metadata -d $photopath/"$2"/
fi
;;
esac