module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Myshaadi.com"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    logo = image_tag("logo.png", :alt => "Myshaadi.com", :class => "round")
  end
end
