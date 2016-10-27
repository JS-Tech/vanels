module PagesHelper
  PAGES = %w(visit details agenda contact)

  def render_page
    render "pages/#{current_page}"
  end

  def current_page
    params[:page] ||= "visit"
    if params[:page].in? PAGES
      return params[:page]
    end
  end

end
