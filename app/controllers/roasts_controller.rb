class RoastsController < ApplicationController
  before_action :authorize

  def index
    @roasts = Roast.all
  end

  def new
  end

  def create
  end

  def show
    @roast = Roast.find(params[:id])
    @post = Post.new
  end

  def edit
  end

  def update

  end

  def destroy
  end
end
