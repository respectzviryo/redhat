# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController
  include Salesforce
#  ssl_required :new

  # render new.erb.html
  def new
    if current_user
       redirect_to :controller => "leads", :action => "index"
     end
  end

  def create
    logout_keeping_session!
    user = User.authenticate(params[:login], params[:password])
    if user && user.active?
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_user = user
      new_cookie_flag = (params[:remember_me] == "1")
      handle_remember_cookie! new_cookie_flag
 #     redirect_back_or_default('/')
      flash[:notice] = "Logged in successfully"
      redirect_to :controller => 'leads', :action => 'index'
    else
      note_failed_signin user
      @login       = params[:login]
      @remember_me = params[:remember_me]
      render :action => 'new'
    end
  end

  def destroy
    logout_killing_session!
    flash[:notice] = "You have been logged out."
    redirect_back_or_default('/')
  end
                                 
protected
  # Track failed login attempts
  def note_failed_signin user
    unless user
      flash[:error] = "Couldn't log you in as '#{params[:login]}'"
    else
      flash[:error] = "Your account is not activated"
    end
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
end