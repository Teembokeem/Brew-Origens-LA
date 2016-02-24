class PostsController < ApplicationController

  def create
    @roast = Roast.find(params[:roast_id])
    @user = current_user
    @post = @roast.posts.build post_params
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "posted!"
      redirect_to roast_path(@roast)
    end
  end

  def edit
    @post = Post.find(params[:id])
    @roast = Roast.find(params[:roast_id])
  end

  def update
    @post = Post.find(params[:id])
    @roast = Roast.find(params[:roast_id])
    if @post.update_attributes(post_params)
      flash[:notice] = 'Post was successfully updated.'
      redirect_to roast_path(@roast.roast_id)
    else
      render :edit
    end
  end

  def destroy
    @roast = Roast.find(params[:roast_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to roast_path(@roast.id)
  end



private
  def post_params
    params.require(:post).permit(:tldr,
                                 :content,
                                 :user_rating,
                                 :flavor_rating,
                                 :originality_rating,
                                 :aroma_rating,
                                 :roast_rating,
                                 :roast_id,
                                 :user_id
                                )
  end

end
