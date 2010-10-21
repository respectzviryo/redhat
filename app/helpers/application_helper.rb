# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def salesforce_url
    params = {
            "response_type" => "code",
            "client_id" => consumer_key,
            "redirect_uri" => callback_url,
            "state" => "OK"
            }

    Constants::SALERSFORCE_AUTHORIZATION_EDNPOINT + convert_hash_to_string_params(params)
  end

  private
  def convert_hash_to_string_params params
    result = ""
    params.each{|k, v| result += "&#{k}=#{v}" }
    result[0] = "?"
    return result 
  end
end
