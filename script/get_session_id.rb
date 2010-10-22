require 'net/http'
require 'net/https'
require 'json'


#CONSUMER_KEY = CGI::escape("3MVG9WtWSKUDG.x460DyWrRcsAGygIX3064zLJZ.FEGF37Xs0Viv.2iMcqGYtu7fMi5drHw2cJLKHqUyCSMZC")
#CONSUMER_SECRET = "2697751937383528022"
#CALLBACK_URL = "https%3A%2F%2Fsalesforceplugin.dyndns.org%2Fsalesforce"

oauth_token = CGI::escape("00D20000000OIfH!AR4AQFKph6D0PiO0u80LMeeIbhKmuMAQpmc9nAfG9759iF7TsVSrI.hwRGd.TdipvErVyCLbaYRzChgTOy7iprCamoIsnkXO")
oauth_signature = CGI::escape("9W2o9n/Le+GRxw/zfKLCEPAtHKq0g2WF5MVn3wx7Avg=")
oauth_timestamp = "1287728082975"
oauth_nonce = Digest::SHA1.hexdigest("--#{Time.now.to_s}--")

http = Net::HTTP.new('login.salesforce.com', 443)
http.use_ssl = true
path = "/services/OAuth/u/20.0"

headers = {
        'Referer' => 'https://login.salesforce.com',
        'Content-Type' => 'text/xml'
}

data = {
        'oauth_consumer_key' => CONSUMER_KEY,
        'oauth_signature_method' => "HMAC-SHA1",
        'oauth_signature' => oauth_signature,
        'oauth_timestamp' => oauth_timestamp,
        'oauth_nonce' => oauth_nonce,
        'oauth_version' => '1.0',
        'oauth_token' => oauth_token
}

def hash_tos h
  r = ""
  h.each do |k, v|
    r += "#{k}=#{v}&"
  end
  r
end


resp, data = http.post(path, hash_tos(data), headers)
puts 'Code = ' + resp.code
puts 'Message = ' + resp.message
puts "----------------"
resp.each {|key, val| puts key + ' = ' + val}
puts data