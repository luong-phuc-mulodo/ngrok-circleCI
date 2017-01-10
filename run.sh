#!/bin/bash
cd server
gem install bundler
bundle install
cd ../
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok.zip
ruby server/server.rb > server/log.txt 2>&1 &
./ngrok http 4567
