require 'rforce'
module Salesforce
  class GetLeadByRforce

    attr_accessor :access_token

    def initialize access_token
      @access_token = access_token
    end

    def execute
#      verification_code = params['oauth_verifier'].strip
#
#      request = session[:request]
#      session[:request] = nil
#
#      access = request.get_access_token :oauth_verifier => verification_code
#
#
#      oauth = {
#              :consumer_key => CONSUMER_KEY, # from SalesForce
#              :consumer_secret => CONSUMER_SECRET, # from SalesForce
#              :access_token => access.token, # from the previous step
#              :access_secret => access.secret, # from the previous step
#              :login_url => 'https://login.salesforce.com/services/OAuth/u/17.0',
#              }

      binding = RForce::Binding.new('https://www.salesforce.com/services/Soap/u/17.0', access_token)

#      res = binding.login_with_oauth(oauth)

      leads = binding.search :searchString => 'select FirstName, LastName, Id from Lead'
      return leads

    end
  end
end