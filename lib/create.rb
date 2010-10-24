require "rubygems"
gem "soap4r"

require 'soap/header/simplehandler'
require 'soap/WSDLDriver'

require 'xsd/qname'

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


class SObject
  attr_accessor :type
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(type = nil, fieldsToNull = [], id = nil)
    @type = type
    @fieldsToNull = fieldsToNull
    @id = id
    @__xmlele_any = nil
  end
end




#SObject = Struct.new(:type, :id, :fieldsToNull, :targetNamespace)
SALESFORCE_WSDL = "http://salesforceplugin.dyndns.org/wsdl/partner.wsdl"

driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver


class SimpleRestriction
  def valid?(value)
     true
  end
end


access_token = "00D20000000OIfH!AR4AQBK0KQk5urtAK5LeDrKbfzQB8nVB4B_N1iTLB2tOAmk88muCOuDz4RU3YMUMg3ZP8_EqGGu.duoQR2Vpbig3gGn3R4Wn"
driver.wiredump_dev = STDERR
driver.headerhandler << ClientAuthHeaderHandler.new(access_token)
driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"

s = SObject.new
s.type = "Lead"
#s.id = ID.new
s.set_any({"firstName" => "Hello5", "lastName" => "Korpan", "company" => "svitla", "status" => "Open"})

b = {"sObjects" => [s]}

driver.create(b)

