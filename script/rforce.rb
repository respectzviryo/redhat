require "rubygems"
require 'oauth'
consumer_key = "3MVG9WtWSKUDG.x460DyWrRcsAM4ugu_KXeJ3JtK7b5KRnnFu0ESTSHPtX1L5sVY.xb3qhORxgF0xbVzUTIvo" # from SalesForce
consumer_secret = "6822479612909946941" # from SalesForce

oauth_options = {
        :site => 'https://login.salesforce.com',
        :scheme => :body,
        :request_token_path => '/_nc_external/system/security/oauth/RequestTokenHandler',
        :authorize_path => '/setup/secur/RemoteAccessAuthorizationPage.apexp',
        :access_token_path => '/_nc_external/system/security/oauth/AccessTokenHandler',
        }
consumer = OAuth::Consumer.new consumer_key, consumer_secret, oauth_options
consumer.http.set_debug_output STDERR # optional
request = consumer.get_request_token
authorize_url = request.authorize_url :oauth_consumer_key => consumer_key

puts authorize_url