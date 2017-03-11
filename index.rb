require 'sinatra'
require 'rest-client'
require 'json'
require 'dotenv'
Dotenv.load

post '/:uuid' do |uuid|
  url = "#{ENV['webhook_base_url']}/#{uuid}"
  RestClient.post url, JSON.parse(request.body.read.to_s), headers
  'Post request forwarded'
end
