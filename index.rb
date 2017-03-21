require 'sinatra'
require 'rest-client'
require 'json'
require 'dotenv'
Dotenv.load

get '/' do
  'Hello world'
end

post '/:uuid' do |uuid|
  url = "#{ENV['webhook_base_url']}/#{uuid}"
  puts request.body.read.to_s
  RestClient.post url, JSON.parse(request.body.read.to_s), headers
  'Post request forwarded'
end
