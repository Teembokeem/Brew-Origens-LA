class FollowersController < ApplicationController
  before_action :logged_in_user

  def create
    user = User.find(params[:id])
    current_user.follow(user)
    redirect_to user
  end

end
