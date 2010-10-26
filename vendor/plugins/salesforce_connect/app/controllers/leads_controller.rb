class LeadsController < GeneralController
  before_filter :set_access_creditians

  include SslRequirement
  include SalesforceConstants

  SALERSFORCE_AUTHORIZATION_EDNPOINT = "https://login.salesforce.com/services/oauth2/authorize"

  ssl_required :index, :new, :create, :destroy, :edit, :update

  def index
    if @access_token
      @data = Salesforce::GetLeadsCmd.new(@access_token, @endpoint_url).execute
    else
      puts current_user.refresh_token
      if defined?(current_user) && defined?(current_user.refresh_token) && current_user["refresh_token"]
        retrive_access_token(current_user["refresh_token"], REFRESH_TOKEN_TYPE)
        @data = Salesforce::GetLeadsCmd.new(session[:access_token], session[:endpoint_url]).execute
      else
        redirect_to salesforce_url
      end
    end
  end

  def new
  end

  def create
    elements = {}
    ["firstName", "lastName", "company", "status", "title", "phone", "email", "rating"].each { |e| elements[e] = params[e] }
    create_cmd = Salesforce::CreateLeadCmd.new(@access_token, @endpoint_url, elements)
    created = create_cmd.execute
    flash[:info] = created ? "Lead was successfully created" : "Could not create lead due to some error"
    redirect_to :action => :index
  end

  def destroy
    delete_cmd = Salesforce::DeleteLeadCmd.new(params[:lead_id], @access_token, @endpoint_url)
    deleted = delete_cmd.execute
    flash[:info] = deleted ? "Lead was successfully deleted" : "Could not delete lead due to some error"
    redirect_to :action => :index
  end

  def edit
    @lead_id = params[:lead_id]
    @lead = Salesforce::RetrieveLeadCmd.new(@lead_id, @access_token, @endpoint_url).execute
  end

  def update
    elements = {}
    ["firstName", "lastName", "company", "status", "title", "phone", "email"].each { |e| elements[e] = params[e] }
    update_cmd = Salesforce::UpdateLeadCmd.new(@access_token, @endpoint_url, params[:lead_id], elements)
    updated = update_cmd.execute
    flash[:info] = updated ? "Lead was successfully updated" : "Could not update lead due to some error"
    redirect_to :action => :index
  end


  private

  def salesforce_url
    params = {
            "response_type" => "code",
            "client_id" => CONSUMER_KEY,
            "redirect_uri" => CALLBACK_URL,
            "state" => "OK"
    }

    SALERSFORCE_AUTHORIZATION_EDNPOINT + convert_hash_to_string_params(params)
  end


  def convert_hash_to_string_params params
    result = ""
    params.each { |k, v| result += "&#{k}=#{v}" }
    result[0] = "?"
    return result
  end

  def set_access_creditians
    @access_token = session[:access_token]
    @endpoint_url = session[:endpoint_url]
  end

end
