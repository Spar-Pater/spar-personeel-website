#!/bin/bash
#

git pull origin main
cd /home/dennis/github/spar-haccp-website
hugo
git push origin main
rsync -avh --delete ./public/ /var/www/html/

