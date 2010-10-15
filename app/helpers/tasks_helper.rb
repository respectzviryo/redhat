module TasksHelper

  def look_on_click task
    "window.location='/tasks?order=#{@order_by}&field_name=#{task}'"
  end

  def checked task
    unless task.status == "finished"
        result = check_box_tag("ck_#{task.id}", 1, false, {:onclick => "finish_task(#{task.id})"})
        result += image_tag("ajax-loader.gif", :style => "display: none")
      
    end
  end

  def destroy_link  task_id
    link_to_remote 'Destroy', :confirm => 'Are you sure?', :method => :delete, :url => {:controller => "tasks", :action => "destroy", :id => task_id}
  end

  def through_name task_status
    task_status == "finished" ? "line_through" : "wrapper"
  end


end
