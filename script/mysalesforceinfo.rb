require "rubygems"
require 'soap/rpc/driver'
require 'soap/wsdlDriver'
require 'soap/header/simplehandler'
require "json"
require "sales_classes"




wsdl_url = 'http://salesforceplugin.dyndns.org/wsdl/partner.wsdl'
driver = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver
driver.wiredump_dev = STDERR
res = driver.login("username" => "korpan.ievgenii@gmail.com", "password" => "Password2fBI6dhDP3OmYEiQbBJ6ewnvf")
puts "--------------------------------------------------------------------------------------------" 

data = res.result

puts "sessionId: " + data.sessionId.to_s
puts "sandbox: " + data.sandbox.to_s
puts "metadataServerUrl: " + data.metadataServerUrl.to_s
puts "serverUrl: " + data.serverUrl.to_s

#puts "---User Info-----"
#methods = ['accessibilityMode', 'currencySymbol', 'orgDefaultCurrencyIsoCode', 'orgDisallowHtmlAttachments', 'orgHasPersonAccounts',
#           'organizationId', 'organizationMultiCurrency', 'organizationName', 'profileId', 'roleId', 'userDefaultCurrencyIsoCode',
#           'userEmail', 'userFullName', 'userId', 'userLanguage', 'userLocale', 'userName', 'userTimeZone', 'userType', 'userUiSkin'
#]
#methods.each do |method|
#  puts method + ":  " + res.result.userInfo[method].to_s
#end


puts "---------------------- next step is get user info with logged in user-------------"
puts "---------------------- for this session id should be in header -------------"

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


driver.headerhandler << ClientAuthHeaderHandler.new(data.sessionId.to_s)
driver.endpoint_url = data.serverUrl.to_s 


res = driver.getUserInfo('')
puts res

puts "*************** get some data *******************"

my_query = Query.new("select FirstName, LastName, Id from Lead")

res = driver.query(my_query);

data = res.result

data.records.each do |record|
  puts record.firstName.to_s + " " + record.lastName.to_s  
end


#
#
#puts "----------------------- get actually leads ---------------"
#
#
#res = driver.convertLead('');
#
