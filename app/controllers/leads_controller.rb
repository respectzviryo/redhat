require 'oauth'
class LeadsController < ApplicationController

  include SslRequirement

  ssl_required :index

  def index
  end

  def show_all_leads
    if current_user.request_token
      @data = Salesforce::GetLeadsCmd.new(current_user.request_token).execute
      render :template => "salesforce/index"
    else
#      redirect_user_for_verification # used in OAuth 1.0
      redirect_to salesforce_url
    end

  end

  def destroy
    access_token = current_user.request_token
    delete_cmd = Salesforce::DeleteLeadCmd.new(params[:lead_id], access_token)
    deleted = delete_cmd.execute
    flash[:info] = deleted ? "Lead was successfully deleted" : "Could not delete lead due to some error"
    redirect_to :action => :show_all_leads
  end

  def edit
    @lead_id = params[:lead_id]
    @lead = Salesforce::DescribeLeadCmd.new(@lead_id, current_user.request_token).execute
  end

  def update
    elements = {}
    ["firstName", "lastName", "company", "status"].each{|e| elements[e] = params[e]}
    access_token = current_user.request_token
    update_cmd = Salesforce::UpdateLeadCmd.new(access_token, params[:lead_id], elements)
    updated = update_cmd.execute
    flash[:info] = updated ? "Lead was successfully updated" : "Could not update lead due to some error"
    redirect_to :action => :show_all_leads
  end
  

  private

  def salesforce_url
    params = {
            "response_type" => "code",
            "client_id" => consumer_key,
            "redirect_uri" => callback_url,
            "state" => "OK"
    }

    Constants::SALERSFORCE_AUTHORIZATION_EDNPOINT + convert_hash_to_string_params(params)
  end


  def convert_hash_to_string_params params
    result = ""
    params.each { |k, v| result += "&#{k}=#{v}" }
    result[0] = "?"
    return result
  end

  private

  def redirect_user_for_verification
    oauth_options = {
            :site => 'https://login.salesforce.com',
            :scheme => :body,
            :request_token_path => '/_nc_external/system/security/oauth/RequestTokenHandler',
            :authorize_path => '/setup/secur/RemoteAccessAuthorizationPage.apexp',
            :access_token_path => '/_nc_external/system/security/oauth/AccessTokenHandler',
            }
    consumer = OAuth::Consumer.new consumer_key, consumer_secret, oauth_options
    consumer.http.set_debug_output STDERR
    request = consumer.get_request_token
    session[:request] = request 
    # set request to user to be able to use it in other controllers
    authorize_url = request.authorize_url :oauth_consumer_key => consumer_key
    redirect_to authorize_url 
  end

end
