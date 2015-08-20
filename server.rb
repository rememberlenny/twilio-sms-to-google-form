require 'rubygems'
require 'bundler'

require 'httparty'
require 'etc'
require 'socket'

Bundler.require

get '/' do
  "Working."
end

class Partay
  include HTTParty
  base_uri 'http://localhost:3000'
end

def post_to_google from, message
  HTTParty.post(ENV['GOOGLE_FORM_URL'],
  {
    :body => [ { "entry.1988909797" => Time.now, "entry.187171525" => from, "entry.1929834757" => message } ].to_json,
  })
end

post '/sms' do
  from = params['From']
  body = params['Body']
  post_to_google(from, message)

  "<Response></Response>"
end

