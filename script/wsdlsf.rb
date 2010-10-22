require 'soap/rpc/driver'
require 'soap/wsdlDriver'
require 'soap/header/simplehandler'
class ClientAuthHeaderHandler < SOAP::Header::SimpleHandler
  MyHeaderName = XSD::QName.new("urn:partner.soap.sforce.com",
                                "sessionId")
  attr_accessor :sessionid

  def initialize
    puts "_________________"
    super(MyHeaderName)
    @sessionid = nil
  end

  def on_simple_outbound
    if @sessionid
      {"sessionid" => @sessionid}
    end
  end

  def on_simple_inbound(my_header, mustunderstand)
    @sessionid = my_header["sessionid"]
  end
end

wsdl_url = 'http://salesforceplugin.dyndns.org/wsdl/partner.wsdl'
driver = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver

#driver.headerhandler << ClientAuthHeaderHandler.new
driver.wiredump_dev = STDERR

driver.login("username" => "korpan.ievgenii@gmail.com", "password" => "Password2fBI6dhDP3OmYEiQbBJ6ewnvf")
#
#def post_xml(path, xml)
#  http = Net::HTTP.new('login.salesforce.com', 443)
#  http.set_debug_output $stderr
#  http.use_ssl = true
#  resp = http.post(path, xml, { 'Content-Type' => 'application/soap+xml; charset=utf-8' })
#  return resp.body
#end
#
#xml = "<?xml version='1.0' encoding='utf-8'?>
#         <soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'
#xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:xsd='http://
#www.w3.org/2001/XMLSchema'>
#            <soap:Header>
#               <SessionHeader xmlns='urn:enterprise.soap.sforce.com'>
#
#<sessionId>
#00D20000000OIfH!AR4AQFKph6D0PiO0u80LMeeIbhKmuMAQpmc9nAfG9759iF7TsVSrI.hwRGd.TdipvErVyCLbaYRzChgTOy7iprCamoIsnkXO
#</sessionId>
#               </SessionHeader>
#            </soap:Header>
#            <soap:Body>
#               <getUserInfo xmlns='urn:enterprise.soap.sforce.com' />
#            </soap:Body>
#         </soap:Envelope> "
#
#res = post_xml("/services/Soap/u/20.0", xml)