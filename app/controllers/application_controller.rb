require 'http_accept_language'

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :set_locale
  before_filter :configure_permitted_parameters, if: :devise_controller?

  private
  def set_locale
    I18n.locale = extract_locale_from_accept_language_header || I18n.default_locale
  end

  def extract_locale_from_accept_language_header
    if request.env['HTTP_ACCEPT_LANGUAGE']
      http_accept_language.compatible_language_from(I18n.available_locales)
    end
  end

  def http_accept_language
    HttpAcceptLanguage::Parser.new request.env['HTTP_ACCEPT_LANGUAGE']
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
    # devise_parameter_sanitizer.for(:account_update){ |u| u.permit(:name, :username, :about, :email, :password, :password_confirmation) }
  end
end
