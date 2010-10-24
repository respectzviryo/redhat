
module Salesforce

  class CreateLeadCmd

    attr_accessor :sobjects, :access_token

    def initialize
      @access_token = access_token
      @sobjects = sobjects

    end

    def execute
      driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver
      driver.wiredump_dev = STDERR
      driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
      driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"

      sobject = SObject.new
      sobject.type = "Lead"
      sobject.fieldsToNull = ["LastName", "Company", "Status"]

      opt = {"FirstName" => "Eugene", "LastName" => "Korpan", "Company" => "Svitla", "Status" => "Open"}

      driver.create("eugenekorpan")


    end

  end
end