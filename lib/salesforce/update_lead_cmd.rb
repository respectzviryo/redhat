module Salesforce

  class UpdateLeadCmd

    attr_accessor :elements, :access_token, :lead_id

    def initialize access_token, lead_id, elements
      @access_token = access_token
      @elements = elements
      @lead_id = lead_id
    end

    def execute
      begin
        driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver

        driver.wiredump_dev = STDERR
        driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
        driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"

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