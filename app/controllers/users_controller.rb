class UsersController < ApplicationController

  before_filter :set_action

  # render new.rhtml
  def new
    @user = User.new
  end

  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
      display_notification "Thanks for signing up!  We're sending you an email with your activation code."
    else
      display_notification "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
    end
  end

  def edit
    @user = current_user
    render :action => 'new'
  end

  def update
    @user = current_user
    @user.update_attributes(params['user'])

    display_notification "user was succesfuly updated"

  end

  def activate
    logout_keeping_session!
    user = User.find_by_activation_code(params[:activation_code]) unless params[:activation_code].blank?
    case
    when (!params[:activation_code].blank?) && user && !user.active?
      user.activate!
      flash[:notice] = "Signup complete! Please sign in to continue."
      redirect_to '/login'
    when params[:activation_code].blank?
      flash[:error] = "The activation code was missing.  Please follow the URL from your email."
      redirect_back_or_default('/')
    else
      flash[:error]  = "We couldn't find a user with that activation code -- check your email? Or maybe you've already activated -- try signing in."
      redirect_back_or_default('/')
    end
  end

  private
  def set_action
    map = {
            "new"=> "create",
            "create" => "create",
            "edit" => "update",
            "update" => "update"
    }
    @action = "/users/#{map[params[:action]]}"

  end

  def display_notification message
    render :update do |page|
      if @user.valid?
        page.replace_html "1234", message

      else
        page.replace_html "1234", error_messages_for(:user)
      end
    end

  end

end




