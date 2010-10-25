module Salesforce

  class RetrieveLeadCmd

    attr_accessor :lead_id, :access_token, :endpoint_url

    def initialize lead_id, access_token, endpoint_url
      @lead_id = lead_id
      @access_token = access_token
      @endpoint_url = endpoint_url
    end

    def execute
      driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver

      driver.wiredump_dev = STDERR
      driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
      driver.endpoint_url = endpoint_url

      params = {"fieldList" => "FirstName, LastName, Id, Company, Status", "sObjectType" => "Lead", "ids" => lead_id}

      res = driver.retrieve(params)
      return res.result
    end
  end
end