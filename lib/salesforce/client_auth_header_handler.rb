module Salesforce
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