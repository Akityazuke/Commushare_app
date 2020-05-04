class UsersController < ApplicationController

  before_action :store_location, only:[:mypage, :show, :notice, :favorrite, :new_favor]
  before_action :require_login, only:[:mypage, :show, :notice, :favorrite, :new_favor]

#ユーザーログイン情報
  def login_form

  end

  def sinup
  end

  def login
    @user = User.find_by(email: params[:email],password: params[:password])
    if @user
      session[:id] = @user.id
      if session[:previous_url] != nil
        flash[:previous_url] = nil
        redirect_to(session[:previous_url])
      else
        redirect_to("/")
      end
    else
      flash[:notice] = "ログインに失敗しました"
      @email = params[:email]
      render("login_form")
    end
  end

  def logout
    session[:id] = nil
    redirect_to("/")
  end

# ユーザーアクション情報
  def mypage

  end

  def show

  end

  def favorrite

  end

  def notice

  end

  def new_favor
    @favor = UserFavor.find_by(post_id:params[:id],user_id: session[:id])
    if @favor.nil?
      @favor = UserFavor.new(post_id:params[:id],user_id: session[:id])
      @favor.save
      @url = request.referer
      # redirect_to(@url)
      redirect_to(@url)
    else
      @favor.destroy
      @url = request.referer
      # redirect_to(@url)
      redirect_to(@url)
    end
  end

end
