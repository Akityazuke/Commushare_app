class ApplicationController < ActionController::Base

  def require_login
    if session[:id]==nil
      flash[:notice] = "指定したURLにアクセスするにはログインが必要です"
      render("users/login_form")
    end
  end

  def store_location
    session[:previous_url] = request.url
  end

end
