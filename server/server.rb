require 'sinatra'
require 'json'

post '/' do
  postParams = JSON.parse(request.body.read)
  "I got some JSON: #{postParams.inspect}"
end

get '/' do
  getParams = request.params
  "You have params :  #{getParams.inspect}"
end
