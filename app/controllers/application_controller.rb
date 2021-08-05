class ApplicationController < ActionController::Base
  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  def default_url_options
    if Rails.env.development?
      # Rails uses the hostname from the request as the base for URL helpers. To match the URL
      # registered with Stytch, we want to use `localhost` instead of `127.0.0.1` or `[::1]`.
      { host: 'localhost' }
    else
      {}
    end
  end
end
