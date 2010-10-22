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
    access_token = result["access_token"]
    current_user.request_token = access_token
    current_user.save

    @data = Salesforce::GetLeadsCmd.new(access_token).execute

  end
end