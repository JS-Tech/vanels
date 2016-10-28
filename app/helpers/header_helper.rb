module HeaderHelper

  def nav_class(url)
    css_class = "new"
    css_class += " current" if current_page == url
    return css_class
  end

end
