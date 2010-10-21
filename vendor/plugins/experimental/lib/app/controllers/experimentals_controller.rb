class ExperimentalsController < ApplicationController
  # GET /experimentals
  # GET /experimentals.xml
  def index
    @experimentals = Experimental.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @experimentals }
    end
  end

  # GET /experimentals/1
  # GET /experimentals/1.xml
  def show
    @experimental = Experimental.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @experimental }
    end
  end

  # GET /experimentals/new
  # GET /experimentals/new.xml
  def new
    @experimental = Experimental.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @experimental }
    end
  end

  # GET /experimentals/1/edit
  def edit
    @experimental = Experimental.find(params[:id])
  end

  # POST /experimentals
  # POST /experimentals.xml
  def create
    @experimental = Experimental.new(params[:experimental])

    respond_to do |format|
      if @experimental.save
        flash[:notice] = 'Experimental was successfully created.'
        format.html { redirect_to(@experimental) }
        format.xml  { render :xml => @experimental, :status => :created, :location => @experimental }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @experimental.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /experimentals/1
  # PUT /experimentals/1.xml
  def update
    @experimental = Experimental.find(params[:id])

    respond_to do |format|
      if @experimental.update_attributes(params[:experimental])
        flash[:notice] = 'Experimental was successfully updated.'
        format.html { redirect_to(@experimental) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @experimental.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /experimentals/1
  # DELETE /experimentals/1.xml
  def destroy
    @experimental = Experimental.find(params[:id])
    @experimental.destroy

    respond_to do |format|
      format.html { redirect_to(experimentals_url) }
      format.xml  { head :ok }
    end
  end
end
