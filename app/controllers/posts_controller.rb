class PostsController < ApplicationController
  before_action :store_location
  before_action :require_login

  def index
    @commus_for_user = CommuUser.find_by(user_id: session[:id])
    if @commus_for_user
      @posts_for_user = CommuPost.where(commu_id: @commus_for_user).order("created_at DESC")
    end
    @favor_for_user = UserFavor.where(user_id: @commus_for_user)
  end

  def show

  end
end
