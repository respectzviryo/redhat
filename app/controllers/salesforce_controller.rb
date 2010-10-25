class SalesforceController < ApplicationController
  include SslRequirement
  include Salesforce

  ssl_required :index

  def index
    request_token = params["code"]
    http = Net::HTTP.new('login.salesforce.com', 443)
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.use_ssl = true
    data = "grant_type=authorization_code&client_id=#{CONSUMER_KEY}&client_secret=#{CONSUMER_SECRET}&redirect_uri=#{CALLBACK_URL}&code=#{request_token}"
    path = "/services/oauth2/token"
    headers = {
            'Referer' => 'https://emea.salesforce.com/services/oauth2/token',
            'Content-Type' => 'application/x-www-form-urlencoded'
    }
    resp, data = http.post(path, data, headers)

    result = JSON.parse(data)
    session[:access_token] = result["access_token"]
    current_user.request_token = result["refresh_token"]
    current_user.save


    # using identity url to get correct callback url
    identity_url = result["id"]
    identity_url=identity_url.gsub("login", "emea")

    http = Net::HTTP.new("emea.salesforce.com", 443)
    http.use_ssl = true
    resp, data = http.get(identity_url + "?oauth_token=#{result["access_token"]}&version=17.0", nil)
    user_info = JSON.parse(data)
    session[:endpoint_url] = ENDPOINT_URL + user_info["organization_id"] 
    
    redirect_to :controller => :leads, :action => :index
  end
end