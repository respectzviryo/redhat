module Salesforce

  class CreateLeadCmd < SalesforceCmd

    attr_accessor :elements

    def initialize access_token, endpoint_url, elements
      super(access_token, endpoint_url)
      @elements = elements
    end

    def execute
      begin
        s = SObject.new
        s.type = "Lead"
        s.set_any(elements)
        driver.create({"sObjects" => [s]})
        true
      rescue Exception => ex
        false
      end

    end

  end
end