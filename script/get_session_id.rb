require 'net/http'
require 'net/https'
require 'json'


CONSUMER_KEY = CGI::escape("3MVG9WtWSKUDG.x460DyWrRcsAGygIX3064zLJZ.FEGF37Xs0Viv.2iMcqGYtu7fMi5drHw2cJLKHqUyCSMZC")
CONSUMER_SECRET = "2697751937383528022"
CALLBACK_URL = "https%3A%2F%2Fsalesforceplugin.dyndns.org%2Fsalesforce"

oauth_token = CGI::escape("00D20000000OIfH!AR4AQJUczvzTWNRI8tqTvmC_TAIJALPpNdYM7hlMQNHrUlAFw_I_oy2xTCquNeQLum0bDZhSeTrrS5KpDbgMd8eURYEBEgrG")
oauth_signature = CGI::escape("JhGOZcpAu/Ub8H/SW4a1Tu4xaH9TSqn9KOtjit14ShY=")
oauth_timestamp = "1287584418805"
oauth_signature_method = CGI::escape("HMAC-SHA1")
oauth_nonce = Digest::SHA1.hexdigest("--#{Time.now.to_s}--")

http = Net::HTTP.new('emea.salesforce.com', 443)
http.use_ssl = true

path = "/"

headers = {
        'Referer' => 'https://emea.salesforce.com',
        'Content-Type' => 'application/x-www-form-urlencoded'
}

data = {
        'oauth_consumer_key' => CONSUMER_KEY,
        'oauth_token' => oauth_token,
        'oauth_signature_method' => oauth_signature_method,
        'oauth_signature' => oauth_signature,
        'oauth_timestamp' => oauth_timestamp,
        'oauth_nonce' => oauth_nonce,
        'oauth_version' => '1.0'
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