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
      redirect_to salesforce_url 
    end

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
    params.each{|k, v| result += "&#{k}=#{v}" }
    result[0] = "?"
    return result
  end

end
