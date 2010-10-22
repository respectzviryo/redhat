#require 'net/http'
#require 'net/https'
#
#http = Net::HTTP.new('redhat.heroku.com', 80)
#http.use_ssl = false
#
#data = "login=eugene&password=1"
#path = "/sessions/create"
#headers = {
#  'Referer' => 'http://redhat.heroku.com/sessions/create',
#  'Content-Type' => 'application/x-www-form-urlencoded'
#}
#
#resp, data = http.post(path, data, headers)         
#
#puts 'Code = ' + resp.code
#puts 'Message = ' + resp.message
#resp.each {|key, val| puts key + ' = ' + val}
#puts data


require 'net/http'
require 'net/https'
require 'json'

#CONSUMER_KEY = "3MVG9WtWSKUDG.x460DyWrRcsAGygIX3064zLJZ.FEGF37Xs0Viv.2iMcqGYtu7fMi5drHw2cJLKHqUyCSMZC"
#CONSUMER_SECRET = "2697751937383528022"
#CALLBACK_URL = "https%3A%2F%2Fsalesforceplugin.dyndns.org%2Fsalesforce"


authorization_code = "aPrxDtC6R2ZDACGRUMBJs4CsK3lhmMRgfmxRailZ0Os3y2aYf_o0qrttpQjWARM%3D"


http = Net::HTTP.new('login.salesforce.com', 443)
http.use_ssl = true

data = "grant_type=authorization_code&client_id=#{CONSUMER_KEY}&client_secret=#{CONSUMER_SECRET}&redirect_uri=#{CALLBACK_URL}" +
        "&code=#{authorization_code}"
path = "/services/oauth2/token"

headers = {
  'Referer' => 'https://login.salesforce.com/services/oauth2/token',
  'Content-Type' => 'application/x-www-form-urlencoded'
}

resp, data = http.post(path, data, headers)

puts 'Code = ' + resp.code
puts 'Message = ' + resp.message
puts "----------------"
resp.each {|key, val| puts key + ' = ' + val}
puts data


# ------------------- identity url part -------
http = Net::HTTP.new("emea.salesforce.com", 443)
http.use_ssl = true

access_token = "00D20000000OIfH!AR4AQO32omegy2y9LYirpcJKvgfIoUmOxh4MgYh3hq6DAbYv0FOjvcwAR4PmTkCIdu7sf1xCkqMmqpFQrdkRWUBFOKBEHV.w"

#data = "oauth_token=#{access_token}"

# GET request -> so the host can set his cookies
resp, data = http.get("/id/00D20000000OIfH/00520000001cWbE?oauth_token=#{access_token}", nil)

puts 'Code = ' + resp.code
puts 'Message = ' + resp.message
puts "----------------"
resp.each {|key, val| puts key + ' = ' + val}
puts data


#------------------------ data part ------------