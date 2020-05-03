class HomeController < ApplicationController

  def top
    if session[:id] != nil
      redirect_to("/index")
    # else
    #   redirect_to("/")
    end
  end

end
