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
      redirect_to user_path
    else
      render :edit
    end
  end

  def follow
    @current_user.follow(params[:id])
    # redirect_to
  end

  def unfollow
    @current_user.unfollow(params[:id])
    # same
  end



private
  def user_params
    params.require(:user).permit(:pref_name, :email, :profile_img, :password, :password_confirmation)
  end
end
