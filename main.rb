require 'sinatra'
require 'net/https'
require 'url'
require 'uri'
require 'rubygems'
require 'json'
#require 'text2voice'

get '/' do
    @title = "fffff"
    erb :index
end


post '/sendtext' do
  uri = URI.parse("https://dev-com.sys.apigw.net/v1/webhook/triggers")
  https = Net::HTTP.new(uri.host, uri.port)
  https.use_ssl = true 
  https.verify_mode = OpenSSL::SSL::VERIFY_NONE
  req = Net::HTTP::Post.new(uri.request_uri)
  req["Content-Type"] = "application/json" 
  payload = {
       "serviceName" => params[:serviceName],
       "eventName" => params[:eventName],
       "status" => params[:status],
       "pushUrl" => params[:pushUrl]
    }.to_json
  req.body = payload 
  res = https.request(req)

#  voice = TextToVoice.new("jdd58fkejgh09lyb")

#  voice.speak("テストです")
#     .speaker("haruka")
#  voice.save_as("test.wav")

    @title = params[:message]
    erb :index
end
