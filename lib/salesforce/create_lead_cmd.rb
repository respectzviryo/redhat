module Salesforce

  class CreateLeadCmd

    attr_accessor :elements, :access_token

    def initialize access_token, elements 
      @access_token = access_token
      @elements = elements
    end

    def execute
      begin
        driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver

        driver.wiredump_dev = STDERR
        driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
        driver.endpoint_url = ENDPOINT_URL

        s = SObject.new
        s.type = "Lead"
        s.set_any(elements)
        driver.create({"sObjects" => [s]})
        true
      rescue Exception => ex
        false
      end

    end

  end
end