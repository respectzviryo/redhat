module Salesforce

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
        driver.headerhandler << Salesforce::ClientAuthHeaderHandler.new(access_token)
        driver.endpoint_url = ENDPOINT_URL

        delete = Delete.new.push(lead_id)

        res = driver.delete("ids" => delete)
        puts res.inspect
        true
      rescue Exception => ex
        puts ex.message
      end
    end

  end

end