class RoastsController < ApplicationController
  before_action :authorize

  def index
    @roasts = Roast.all
  end

  def new
    @roast = Roast.new
  end

  def create
    @roast = Roast.new(roast_params)
    if @roast.save
      flash[:notice] = "Roast Added!"
      redirect_to roasts_path
    else
      render 'new'
    end
  end

  def show
    @roast = Roast.find(params[:id])
    @post = Post.new
  end

  def edit
    @roast = Roast.find(params[:id])
  end

  def update
    @roast = Roast.find(params[:id])
    if @roast.update_attributes(roast_params)
      flash[:notice] = 'Roast was successfully updated.'
      redirect_to adminindex_roasts_path
    else
      render :edit
    end
  end

  def destroy
    @roast = Roast.find(params[:id])
    @posts = Post.where(roast_id: params[:id])
    @posts.each do |f|
      f.destroy
    end
    @roast.destroy
    redirect_to adminindex_roasts_path
  end

  def adminindex
    @roasts = Roast.all
  end

private
  def roast_params
    params.require(:roast).permit(:name, :roaster, :brand_icon_img, :content_img, :price)
  end
end
