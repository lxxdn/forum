class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(*User::ACCESSABLE_ATTRS) }
  end

  def markdown(text)
    options = {
        :autolink => true,
        :space_after_headers => true,
        :fenced_code_blocks => true,
        :no_intra_emphasis => true,
        :hard_wrap => true,
        :strikethrough =>true
      }
    markdown = Redcarpet::Markdown.new(HTMLwithCodeRay,options)
    markdown.render((text))
  end

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:tab_width=>2)
    end
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to(new_user_session_path)
    end
  end
end
