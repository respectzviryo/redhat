module LeadsHelper
  def line_color i
      i.modulo(2) == 0 ? "leads_container_grey" : "leads_container_white"
  end

end
