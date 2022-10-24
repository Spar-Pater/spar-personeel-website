#!/bin/bash
#

cd /home/dennis/github/spar-haccp-website
runuser -l dennis -c 'git pull origin main'
runuser -l dennis -c 'hugo'
runuser -l dennis -c 'git add .'
runuser -l dennis -c 'git commit -am "Run script"'
runuser -l dennis -c 'git push origin main'
rsync -avh --delete ./public/ /var/www/html/

