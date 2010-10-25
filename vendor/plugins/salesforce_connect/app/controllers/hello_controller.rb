class HelloController < ActionController::Base
  def hello
    render :text => "hello"
  end
end