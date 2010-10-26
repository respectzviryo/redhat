class SalesforceController < GeneralController
  include SslRequirement
  ssl_required :index

  def index

    retrive_access_token params[:code], NEW_TOKEN_TYPE

  end
end