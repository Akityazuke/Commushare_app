class CommusController < ApplicationController

def show
  @commu = CommuIndex.find_by(id: params[:id])
  @commu_post = CommuPost.where(commu_id: @commu.id).order("created_at DESC")
  # @favor = UserFavor.where(user_id: session[:id])
  @users = CommuUser.where(commu_id: @commu.id).order("created_at ASC")
end

end
