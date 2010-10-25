require 'oauth'
class LeadsController < ApplicationController
  before_filter :set_access_token

  include SslRequirement

  ssl_required :index

  def show_all_leads
  end

  def index
    if @access_token
      @data = Salesforce::GetLeadsCmd.new(@access_token).execute
    else
#      redirect_user_for_verification # used in OAuth 1.0
      redirect_to salesforce_url
    end
  end

  def new
  end

  def create
    elements = {}
    ["firstName", "lastName", "company"].each { |e| elements[e] = params[e] }
    create_cmd = Salesforce::CreateLeadCmd.new(@access_token, elements)
    created = create_cmd.execute
    flash[:info] = created ? "Lead was successfully created" : "Could not create lead due to some error"
    redirect_to :action => :index
  end

  def destroy
    delete_cmd = Salesforce::DeleteLeadCmd.new(params[:lead_id], @access_token)
    deleted = delete_cmd.execute
    flash[:info] = deleted ? "Lead was successfully deleted" : "Could not delete lead due to some error"
    redirect_to :action => :index
  end

  def edit
    @lead_id = params[:lead_id]
    @lead = Salesforce::RetrieveLeadCmd.new(@lead_id, @access_token).execute
  end

  def update
    elements = {}
    ["firstName", "lastName", "company", "status"].each { |e| elements[e] = params[e] }
    update_cmd = Salesforce::UpdateLeadCmd.new(@access_token, params[:lead_id], elements)
    updated = update_cmd.execute
    flash[:info] = updated ? "Lead was successfully updated" : "Could not update lead due to some error"
    redirect_to :action => :index
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

  def set_access_token
    @access_token = session[:access_token]
  end

end
