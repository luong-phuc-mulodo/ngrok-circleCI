require 'sinatra'
require 'json'

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
end

get '/' do
  "<H1>This is page of Minh Phuc<H1>"
end
