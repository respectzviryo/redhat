require 'json'
require 'net/http'
require 'net/https'

http = Net::HTTP.new('emea.salesforce.com', 443)
http.use_ssl = true

access_token = CGI::escape("00D20000000OIfH!AR4AQIuZ6oQTDTWTy__1KohRCZUlxXBHbEowzIJmhV45roiZdzB5sjcDmTuLG7_g86Z7kRAXGtbBdZT0x53sjOZvmXS2W6DM")
data = "oauth_token=#{access_token}" 
path = "/services/Soap/c/20/00D20000000OIfH"
 headers = {
            'Referer' => 'https://emea.salesforce.com/00520000001cWbE',
            'Content-Type' => 'text/xml',
            'SOAPAction' => 'URI'
    }


resp, data = http.post(path, data, headers)

puts data 