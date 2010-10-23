module Salesforce

#  class Delete
#    attr_accessor :ids
#
#    def initialize(ids = nil)
#      puts "--------- inside Delete -----------"
#      @ids = ids
#    end
#  end

  class DeleteLeadCmd

    attr_accessor :lead_id, :access_token

    def initialize lead_id, access_token
      @lead_id = lead_id
      @access_token = access_token
    end

    def execute
      # TODO: find lead from all records
      begin
        driver = SOAP::WSDLDriverFactory.new(SALESFORCE_WSDL).create_rpc_driver
        driver.wiredump_dev = STDERR
        driver.headerhandler << ClientAuthHeaderHandler.new(access_token)
        driver.endpoint_url = "https://eu0-api.salesforce.com/services/Soap/u/20.0/00D20000000OIfH"

#        delete = Delete.new.push(lead_id)
#        delete.push(lead_id)
        res = driver.delete([lead_id])
        puts "--------------"
        puts res.inspect
        true
      rescue Exception => ex
        false
      end
    end

  end

end