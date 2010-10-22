require 'json'
require 'net/http'
require 'net/https'
require 'soap/rpc/driver'
require 'soap/wsdlDriver'
require 'soap/header/simplehandler'
class SalesforceController < ActionController::Base
  include SslRequirement
  include Salesforce

  ssl_required :index

  def index  
    authorization_code = params["code"]
    http = Net::HTTP.new('login.salesforce.com', 443)
    http.use_ssl = true
    data = "grant_type=authorization_code&client_id=#{CONSUMER_KEY}&client_secret=#{CONSUMER_SECRET}&redirect_uri=#{CALLBACK_URL}" +
            "&code=#{authorization_code}"
    path = "/services/oauth2/token"
    headers = {
            'Referer' => 'https://emea.salesforce.com/services/oauth2/token',
            'Content-Type' => 'application/x-www-form-urlencoded'
    }
    resp, data = http.post(path, data, headers)
    puts 'Code = ' + resp.code

    result = JSON.parse(data)
    access_token = result["access_token"]

    # soap settings
    wsdl_url = 'http://salesforceplugin.dyndns.org/wsdl/partner.wsdl'
    driver = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver
    driver.wiredump_dev = STDERR

    driver.headerhandler << ClientAuthHeaderHandler.new(access_token)
    driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"
    my_query = Query.new("select FirstName, LastName, Id from Lead")
    @data = driver.query(my_query).result;

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
