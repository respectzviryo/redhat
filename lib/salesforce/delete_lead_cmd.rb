module Salesforce

  class DeleteLeadCmd < SalesforceCmd

    attr_accessor :lead_id

    def initialize lead_id, access_token, endpoint_url
      super(access_token, endpoint_url)
      @lead_id = lead_id
    end

    def execute
      # TODO: find lead from all records
      begin
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