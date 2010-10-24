module Salesforce

  class RetrieveLeadCmd

    attr_accessor :lead_id, :access_token

    def initialize lead_id, access_token
      @lead_id = lead_id
      @access_token = access_token
    end

    def execute
      driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver

      driver.wiredump_dev = STDERR
      driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
      driver.endpoint_url = ENDPOINT_URL

      params = {"fieldList" => "FirstName, LastName, Id, Company, Status", "sObjectType" => "Lead", "ids" => lead_id}

      res = driver.retrieve(params)
      return res.result
    end
  end
end