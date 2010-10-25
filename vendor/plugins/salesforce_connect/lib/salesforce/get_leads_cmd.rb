module Salesforce
  class GetLeadsCmd < SalesforceCmd

    def initialize access_token, endpoint_url
      super(access_token, endpoint_url)
    end

    def execute
      my_query = Query.new("select FirstName, LastName, Id, Company, Status from Lead")
      leads = driver.query(my_query).result
      return leads
    end
  end

end