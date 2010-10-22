require 'json'
require 'net/http'
require 'net/https'
class SalesforceController < ActionController::Base
  include SslRequirement

  ssl_required :index

  def index  
    authorization_code = params["code"]
    http = Net::HTTP.new('login.salesforce.com', 443)
    http.use_ssl = true
    data = "grant_type=authorization_code&client_id=#{CONSUMER_KEY}&client_secret=#{CONSUMER_SECRET}&redirect_uri=#{CALLBACK_URL}" +
            "&code=#{authorization_code}"
    path = "/services/oauth2/token"
    headers = {
            'Referer' => 'https://emea.salesforce.com/services/oauth2/token',
            'Content-Type' => 'application/x-www-form-urlencoded'
    }
    resp, data = http.post(path, data, headers)
    puts 'Code = ' + resp.code

    @result = JSON.parse(data)
#    instance_url = result["instance_url"]
#    refresh_token = result["refresh_token"]
    @access_token = @result["access_token"]
    identity_url = @result["id"]
    identity_url=identity_url.gsub("login", "emea")

    http = Net::HTTP.new("emea.salesforce.com", 443)
    http.use_ssl = true
    resp, data = http.get(identity_url + "?oauth_token=#{@access_token}&version=17.0", nil)
    @result_from_identity_url = JSON.parse(data)


#    resp, data = http.get(path + "?oauth_token=#{access_token}", nil)

#    render :text => access_token + "<br/>"  + authorization_code
  end
end
