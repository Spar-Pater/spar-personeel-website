#!/bin/bash
#

cd /home/dennis/github/spar-haccp-website
runuser -l dennis -c 'git pull origin main -key /home/dennis/.ssh/id_ed25519'
runuser -l dennis -c 'hugo'
runuser -l dennis -c 'git add .'
runuser -l dennis -c 'git commit -am "Run script"'
runuser -l dennis -c 'git push origin main -key /home/dennis/.ssh/id_ed25519'
rsync -avh --delete ./public/ /var/www/html/

