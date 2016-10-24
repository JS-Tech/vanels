module PagesHelper
  PAGES = %w(visit details agenda contact)

  def render_page
    params[:page] ||= "visit"
    if params[:page].in? PAGES
      render "pages/#{params[:page]}"
    end
  end

end
