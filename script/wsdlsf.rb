require 'soap/rpc/driver'
require 'soap/wsdlDriver'
require 'soap/header/simplehandler'




def get_soap_driver
  wsdl_url = 'http://salesforceplugin.dyndns.org/wsdl/partner.wsdl'
  driver = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver
  driver
end

@driver = get_soap_driver

header = SOAP::Header::SimpleHandler.new("00D20000000OIfH!AR4AQIlAtUR2aXERjYsgBHOHfFr6BhR5xrCV7JuT9klanOaD.5ISbnT_9CVZMn1.s2AUp2Y.zV1j1QOyxCQ1EQrJeRw_GdYU")
@driver.headerhandler << header
puts @driver.inspect

@driver.retrieve("Id, AccountNumber, Name, Website", "Account",)
#puts @driver.describeSObjects(["account", "contact", "lead"])