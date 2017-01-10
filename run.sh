#!/bin/bash
cd server
gem install bundler
bundle install
cd ../
ruby server/server.rb > server/log.txt 2>&1 &
./ngrok http 4567
