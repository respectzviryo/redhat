class CheckedStatusController < ApplicationController
  def change
    @tasks = Task.find(params[:task_id])
    @tasks.status = "finished"
    @tasks.save
    render :nothing => true
  end

end