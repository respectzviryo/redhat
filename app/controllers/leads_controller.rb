class LeadsController < ApplicationController

  include SslRequirement

  ssl_required :index

  def index

  end

end
