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