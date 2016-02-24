class PostsController < ApplicationController
  def new
  end

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

  def destroy
  end

  def edit

  end

  def update

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
