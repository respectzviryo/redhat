require 'net/http'
require 'net/https'
require "rubygems"
require 'soap/rpc/driver'
require 'soap/wsdlDriver'
require 'soap/header/simplehandler'
require "json"
require "sales_classes"


CONSUMER_KEY = "3MVG9WtWSKUDG.x460DyWrRcsAK.jkN_cUQu9sf_EsH6n5BpQCbDbWsRYG.tc1yRHl8sEVsIzNLb5USxxeCr3"
CONSUMER_SECRET = "2707751437165795615"
CALLBACK_URL = "https%3A%2F%2Fsalesforceplugin.dyndns.org%2Fsalesforce"

oauth_token = "aPrxDtC6R2ZDACGRUMBJs4CsK40Z8nomUaZfSp0J8gh0UYd49TrQqyxdwatFUxpbbfVZLuABDg=="
oauth_signature = "+Gbij9JpCpdauhjsh6iNRjhQYDVT+rQiiSv8ZyLYG3U="
oauth_timestamp = "1287755286656"
oauth_nonce = Digest::SHA1.hexdigest("--#{Time.now.to_s}--")

headers = {
        'oauth_consumer_key' => CONSUMER_KEY,
        'oauth_signature_method' => "HMAC-SHA1",
        'oauth_signature' => oauth_signature,
        'oauth_timestamp' => oauth_timestamp,
        'oauth_nonce' => oauth_nonce,
        'oauth_version' => '1.0',
        'oauth_token' => oauth_token
}


class ClientAuthHeaderHandler < SOAP::Header::SimpleHandler

  def initialize elem, value
    header_name = XSD::QName.new("urn:partner.soap.sforce.com", elem)
    super(header_name)
    @value = value 
  end

  def on_simple_outbound
    @value
  end

  def on_simple_inbound(my_header, mustunderstand)
    nil
  end
  
end

endpoint_url = "https://login.salesforce.com/services/OAuth/u/20.0" 
driver = SOAP::RPC::Driver.new(endpoint_url)
driver.options['protocol.http.ssl_config.verify_mode'] = OpenSSL::SSL::VERIFY_NONE
driver.wiredump_dev = STDERR
driver.add_method('send_request')

headers.each do |k, v|
  driver.headerhandler << ClientAuthHeaderHandler.new(k, v)
end


driver.send_request