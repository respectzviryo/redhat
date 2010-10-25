module Salesforce

  class RetrieveLeadCmd < SalesforceCmd

    attr_accessor :lead_id

    def initialize lead_id, access_token, endpoint_url
      @lead_id = lead_id
      super(access_token, endpoint_url)
    end

    def execute
      params = {"fieldList" => "FirstName, LastName, Id, Company, Status", "sObjectType" => "Lead", "ids" => lead_id}
      res = driver.retrieve(params)
      return res.result
    end
  end
end