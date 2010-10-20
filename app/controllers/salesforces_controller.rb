class SalesforcesController < ApplicationController
  # GET /salesforces
  # GET /salesforces.xml
  def index
    @salesforces = Salesforce.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforces }
    end
  end

  # GET /salesforces/1
  # GET /salesforces/1.xml
  def show
    @salesforce = Salesforce.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @salesforce }
    end
  end

  # GET /salesforces/new
  # GET /salesforces/new.xml
  def new
    @salesforce = Salesforce.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @salesforce }
    end
  end

  # GET /salesforces/1/edit
  def edit
    @salesforce = Salesforce.find(params[:id])
  end

  # POST /salesforces
  # POST /salesforces.xml
  def create
    @salesforce = Salesforce.new(params[:salesforce])

    respond_to do |format|
      if @salesforce.save
        flash[:notice] = 'Salesforce was successfully created.'
        format.html { redirect_to(@salesforce) }
        format.xml  { render :xml => @salesforce, :status => :created, :location => @salesforce }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @salesforce.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforces/1
  # PUT /salesforces/1.xml
  def update
    @salesforce = Salesforce.find(params[:id])

    respond_to do |format|
      if @salesforce.update_attributes(params[:salesforce])
        flash[:notice] = 'Salesforce was successfully updated.'
        format.html { redirect_to(@salesforce) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @salesforce.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforces/1
  # DELETE /salesforces/1.xml
  def destroy
    @salesforce = Salesforce.find(params[:id])
    @salesforce.destroy

    respond_to do |format|
      format.html { redirect_to(salesforces_url) }
      format.xml  { head :ok }
    end
  end
end
