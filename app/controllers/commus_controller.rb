class CommusController < ApplicationController

def show
  @commu = CommuIndex.find_by(id: params[:id])
  @commu_post = CommuPost.where(commu_id: @commu.id).order("created_at DESC")
  # @favor = UserFavor.where(user_id: session[:id])
  @users = CommuUser.where(commu_id: @commu.id).order("created_at ASC")
end

def away
  @commu = CommuUser.find_by(commu_id: params[:id],user_id: session[:id])
  @commu.destroy
end

def join
  @commu = CommuUser.new(commu_id: params[:id],user_id: session[:id])
  @commu.save
  flash[:notice] = "コミュニティーに参加しました"
  redirect_to("/commus/#{params[:id]}")
end

end
