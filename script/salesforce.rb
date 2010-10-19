gem 'oauth'
require 'oauth/consumer'

@consumer=OAuth::Consumer.new("3MVG9yZ.WNe6byQDV0Ozy0RVunmj0bOSocQSblmyCkpwT4L05ZdIoqA3CLTGoCbq9Z38TaKFapR7kR28oSgYE",
                              "2963559643723208073", {
      :site=>"https://login.salesforce.com/",
      :http_method        => :post,
      :request_token_path => "/services/OAuth/u/20.0"
    })

puts @consumer.inspect