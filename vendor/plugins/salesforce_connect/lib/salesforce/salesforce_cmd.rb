require "salesforce/sforce_objects"
require 'soap/wsdlDriver'

require 'wsdl/info'
require 'xsd/namedelements'


module WSDL
  module XMLSchema

    class SimpleRestriction < Info
      # redefining method as native method doesn't allow values to be nil
      # but while creating new lead his id value should be nil
      def valid?(value)
        return true
      end
    end

  end
end



module Salesforce

  class SalesforceCmd
    include SalesforceConstants

    attr_accessor :access_token, :endpoint_url, :driver

    def initialize access_token, endpoint_url
      @access_token = access_token
      @endpoint_url = endpoint_url
      @driver = setup_salesforce_driver
    end

    def execute
    end

    def setup_salesforce_driver
      binding = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver
      binding.wiredump_dev = STDERR
      binding.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
      binding.endpoint_url = endpoint_url
      binding
    end

  end
end             