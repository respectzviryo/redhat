module Salesforce

  class UpdateLeadCmd

    attr_accessor :elements, :access_token, :lead_id, :endpoint_url

    def initialize access_token, endpoint_url, lead_id, elements
      @access_token = access_token
      @elements = elements
      @lead_id = lead_id
      @endpoint_url = endpoint_url
    end

    def execute
      begin
        driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver

        driver.wiredump_dev = STDERR
        driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
        driver.endpoint_url = endpoint_url

        s = SObject.new
        s.type = "Lead"
        s.id = lead_id
        s.set_any(elements)

        b = {"sObjects" => [s]}

        res = driver.update(b)
        res
      rescue Exception => ex
        false
      end
    end

  end
end