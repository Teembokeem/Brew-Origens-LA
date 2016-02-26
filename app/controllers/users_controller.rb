class UsersController < ApplicationController
  before_action :authorize, except: [:landing, :new, :create]

  def landing
  end

  def index
    @users = User.all
    @user = @current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to roasts_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      session[:user_id] = @user.id
      flash[:notice] = 'Post was successfully updated.'
      @user.activities.create(action: "updated their profile")
      redirect_to user_path
    else
      render :edit
    end
  end

  def follow
    @target = User.find(params[:id])
    @current_user.follow(@target)
    flash[:notice] = "Following #{@target.pref_name}!"
    @current_user.activities.create(action: "followed #{@target.pref_name}")
    redirect_to users_path
  end

  def unfollow
    @target = User.find(params[:id])
    @current_user.unfollow(@target)
    flash[:notice] = "well... #{@target.pref_name} wasnt cool enough anyways...."
    @current_user.activities.create(action: "unfollowed #{@target.pref_name}")
    redirect_to user_path(@current_user)
  end



private
  def user_params
    params.require(:user).permit(:pref_name, :email, :profile_img, :password, :password_confirmation)
  end
end
