class LidsController < ApplicationController
  #layout "lids"
  
  # GET /lids
  # GET /lids.xml
  def index
    @lids = Lid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lids }
    end
  end

  # GET /lids/1
  # GET /lids/1.xml
  def show
    @lid = Lid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lid }
    end
  end

  # GET /lids/new
  # GET /lids/new.xml
  def new
    @lid = Lid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lid }
    end
  end

  # GET /lids/1/edit
  def edit
    @lid = Lid.find(params[:id])
  end

  # POST /lids
  # POST /lids.xml
  def create
    @lid = Lid.new(params[:lid])

    respond_to do |format|
      if @lid.save
        flash[:notice] = 'Lid was successfully created.'
        format.html { redirect_to(@lid) }
        format.xml  { render :xml => @lid, :status => :created, :location => @lid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lids/1
  # PUT /lids/1.xml
  def update
    @lid = Lid.find(params[:id])

    respond_to do |format|
      if @lid.update_attributes(params[:lid])
        flash[:notice] = 'Lid was successfully updated.'
        format.html { redirect_to(@lid) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lids/1
  # DELETE /lids/1.xml
  def destroy
    @lid = Lid.find(params[:id])
    @lid.destroy

    respond_to do |format|
      format.html { redirect_to(lids_url) }
      format.xml  { head :ok }
    end
  end
end
