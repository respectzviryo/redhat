# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
#  protect_from_forgery # See ActionController::RequestForgeryProtection for details


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password


  include AuthenticatedSystem
  include SslRequirement

  helper_method :consumer_key, :consumer_secret, :callback_url

  def consumer_key
    CONSUMER_KEY
  end

  def consumer_secret
    CONSUMER_SECRET
  end

  def callback_url
    CALLBACK_URL
  end
  
end
