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
      wsdl_url = 'http://salesforceplugin.dyndns.org/wsdl/partner.wsdl'
      driver = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver
      driver.wiredump_dev = STDERR

      driver.headerhandler << ClientAuthHeaderHandler.new(access_token)
      driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"
      my_query = Query.new("select FirstName, LastName, Id from Lead")
      leads = driver.query(my_query).result
      return leads
    end
  end


  class ClientAuthHeaderHandler < SOAP::Header::SimpleHandler
    MyHeaderName = XSD::QName.new("urn:partner.soap.sforce.com", "SessionHeader")
    attr_accessor :sessionid

    def initialize sessionid
      super(MyHeaderName)
      @sessionid = sessionid
    end

    def on_simple_outbound
      if @sessionid
        {"sessionId" => @sessionid}
      end
    end

    def on_simple_inbound(my_header, mustunderstand)
      @sessionid = my_header["sessionid"]
    end
  end


end