class SalesforceController < ApplicationController
  include SslRequirement
  include Salesforce
  include SalesforceConstants
  LOGIN_PAGE_URL = "login.salesforce.com"
  ENDPOINT_URL = "https://eu0-api.salesforce.com/services/Soap/u/20.0/" 

  ssl_required :index

  def index
    instance_url, identity_url, access_token = retrieve_access_token params["code"]
    session[:access_token] = access_token

    # using identity url to get correct callback url
    prepare_endpoint_url identity_url, instance_url, access_token

    redirect_to :controller => :leads, :action => :index
  end

  private

  def retrieve_access_token request_token
    http = Net::HTTP.new(LOGIN_PAGE_URL, 443)
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.use_ssl = true
    data = "grant_type=authorization_code&client_id=#{CONSUMER_KEY}&client_secret=#{CONSUMER_SECRET}&redirect_uri=#{CALLBACK_URL}&code=#{request_token}"
    path = "/services/oauth2/token"
    headers = {
            'Referer' => 'https://login.salesforce.com/services/oauth2/token',
            'Content-Type' => 'application/x-www-form-urlencoded'
    }
    resp, data = http.post(path, data, headers)

    result = JSON.parse(data)
    if current_user && current_user.try(:refresh_token)
      #TODO: implement functionality corresponding for using refresh token to get new access token
      current_user.refresh_token = result["refresh_token"]
      current_user.save
    end
    return result["instance_url"], result["id"], result["access_token"]
  end

  def prepare_endpoint_url identity_url, instance_url, access_token

    prefix = "https://"
    insturl_without_prefix = instance_url.gsub(prefix, "")

    identity_url = fix_identity_url(identity_url, insturl_without_prefix)

    http = Net::HTTP.new(insturl_without_prefix, 443)
    http.use_ssl = true
    resp, data = http.get(identity_url + "?oauth_token=#{access_token}&version=17.0", nil)
    user_info = JSON.parse(data)
    session[:endpoint_url] = ENDPOINT_URL + user_info["organization_id"]
  end

  def fix_identity_url idurl, insturl
    idurl.gsub(LOGIN_PAGE_URL, insturl)
  end
end