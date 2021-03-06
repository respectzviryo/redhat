class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.xml
  include Constants

  def index
    @categories = current_user.categories
    if params[:category_id]
      @tasks = current_user.tasks.by_category(params[:category_id])
    end
    if (params[:category_id] == "all") || (params[:category_id] ==nil)
      @tasks = current_user.tasks
    end

    @tasks_finished = @tasks.finished
    @tasks_started = @tasks.started

  end


  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @task = Task.new
    @categories = Category.all
    @endcategories = []
    @categories.each do |t|
      @endcategories.push [t.category_name, t.id]
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @categories = Category.all
    @endcategories = []
    @categories.each do |t|
      @endcategories.push [t.category_name, t.id]
    end
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @task = Task.new(params[:task])
    @task.user_id = current_user.id
    respond_to do |format|
      if @task.save
        flash[:notice] = 'Task was successfully created.'
        format.html { redirect_to(@task) }
        format.xml { render :xml => @task, :status => :created, :location => @task }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.xml
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        flash[:notice] = 'Task was successfully updated.'
        format.html { redirect_to(@task) }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.xml
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render :update do |page|
      page.remove "tr_#{@task.id}"
    end

  end
end
