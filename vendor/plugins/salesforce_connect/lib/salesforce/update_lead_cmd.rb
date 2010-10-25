module Salesforce

  class UpdateLeadCmd < SalesforceCmd

    attr_accessor :elements, :lead_id

    def initialize access_token, endpoint_url, lead_id, elements
      @elements = elements
      @lead_id = lead_id
      super(access_token, endpoint_url)
    end

    def execute
      begin
        s = SObject.new
        s.type = "Lead"
        s.id = lead_id
        s.set_any(elements)

        b = {"sObjects" => [s]}

        res = driver.update(b)
        res
      rescue Exception => ex
        false
      end
    end

  end
end