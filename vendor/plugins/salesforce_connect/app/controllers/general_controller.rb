class GeneralController < ApplicationController

  include Salesforce
  include SalesforceConstants

  
  LOGIN_PAGE_URL = "login.salesforce.com"
  ENDPOINT_URL = "https://eu0-api.salesforce.com/services/Soap/u/20.0/"
  NEW_TOKEN_TYPE = "code"
  REFRESH_TOKEN_TYPE = "refresh_token"

  class IdentityFailed < StandardError;
  end
  class InvalidSecret < StandardError;
  end;

  private

  def retrive_access_token code, type
    begin

      instance_url, identity_url, access_token = retrieve_access_token(code, type)
      session[:access_token] = access_token

      raise IdentityFailed unless instance_url

      # using identity url to get correct callback url
      prepare_endpoint_url identity_url, instance_url, access_token

      redirect_to :controller => :leads, :action => :index
    rescue IdentityFailed
      render :text => "There was some problem with connection, pleas try again <a href='/leads'>try</a>"
    rescue InvalidSecret
      render :text => "Invalid Consumer Credentials"
    rescue Exception
      render :text => "unhandled exception"

    end
  end

  private

  def retrieve_access_token request_token, type
    http = Net::HTTP.new(LOGIN_PAGE_URL, 443)
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.use_ssl = true

    grant_type = "authorization_code"
    grant_type = "refresh_token" if type == REFRESH_TOKEN_TYPE


    data = "grant_type=#{grant_type}&client_id=#{CONSUMER_KEY}&client_secret=#{CONSUMER_SECRET}&redirect_uri=#{CALLBACK_URL}&#{type}=#{request_token}"
    path = "/services/oauth2/token"
    headers = {
            'Referer' => 'https://login.salesforce.com/services/oauth2/token',
            'Content-Type' => 'application/x-www-form-urlencoded'
    }
    resp, data = http.post(path, data, headers)

    result = JSON.parse(data)
    raise InvalidSecret if result["error"] && result["error"] == "invalid_client_credentials"

    if defined?(current_user) && defined?(current_user.refresh_token) && current_user.refresh_token.nil? && type == NEW_TOKEN_TYPE
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