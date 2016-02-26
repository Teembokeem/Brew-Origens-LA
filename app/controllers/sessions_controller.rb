class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      user.activities.create(action: "logged in")
      if user.admin
        redirect_to adminindex_roasts_path
      else
        redirect_to roasts_path
      end
    else
      flash.now.alert = 'NEW?'
      render :template => 'users/landing'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "DEUCES"
  end

end
