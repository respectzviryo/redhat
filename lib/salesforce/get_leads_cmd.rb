require 'json'
require 'net/http'
require 'net/https'
require 'soap/rpc/driver'
require 'soap/wsdlDriver'
require 'soap/header/simplehandler'

module Salesforce
  class GetLeadsCmd

    attr_accessor :access_token

    def initialize access_token
      @access_token = access_token
    end


    def execute
      # soap settings
      driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver
      driver.wiredump_dev = STDERR

      driver.headerhandler << ClientAuthHeaderHandler.new(access_token)
      driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"
      my_query = Query.new("select FirstName, LastName, Id, Company, Status from Lead")
      leads = driver.query(my_query).result
      return leads
    end
  end

end