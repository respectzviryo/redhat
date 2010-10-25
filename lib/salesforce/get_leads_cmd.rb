module Salesforce
  class GetLeadsCmd

    attr_accessor :access_token, :endpoint_url

    def initialize access_token, endpoint_url
      @access_token = access_token
      @endpoint_url = endpoint_url
    end


    def execute
      # soap settings
      driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver
      driver.wiredump_dev = STDERR

      driver.headerhandler << ClientAuthHeaderHandler.new(access_token)
      driver.endpoint_url = endpoint_url
      my_query = Query.new("select FirstName, LastName, Id, Company, Status from Lead")
      leads = driver.query(my_query).result
      return leads
    end
  end

end