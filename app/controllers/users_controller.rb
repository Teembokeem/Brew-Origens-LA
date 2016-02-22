class UsersController < ApplicationController
  before_action :authorize, except: [:landing, :new, :create]

  def landing

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
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def user_params
    params.require(:user).permit(:pref_name, :email, :profile_img, :password, :password_confirmation)
  end
end
