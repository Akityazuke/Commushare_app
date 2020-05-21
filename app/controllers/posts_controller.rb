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

  def share
    @postID = CommuPost.last
    if params[:image].blank?
      image_name = nil
    else
      id = @postID.id
      image = params[:image]
      image_name = "#{id + 1}.jpg"
      File.binwrite("/home/akityazuke/Maiking_app/commushare_app/public/post_image/#{image_name}", image.read)
    end

    @post = CommuPost.new(
      content: params[:new_content],
      commu_id: params[:id],
      user_id: session[:id],
      protect: 0,
      image_name: image_name
    )

    @post.save

  end

end
