class SessionsController < ApplicationController

def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to roasts_path
    else
      flash.now.alert = 'Invalid credentials, try again :('
      render :template => 'users/landing'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out"
  end

end
