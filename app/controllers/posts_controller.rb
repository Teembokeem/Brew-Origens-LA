class PostsController < ApplicationController

  def create
    @roast = Roast.find(params[:roast_id])
    @user = current_user
    @post = @roast.posts.build post_params
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "posted!"
      @user.activities.create(action: "posted on #{@roast.name}...'#{@post.tldr}'")
      redirect_to roast_path(@roast)
    end
  end

  def edit
    @post = Post.find(params[:id])
    @roast = Roast.find(params[:roast_id])
  end

  def update
    @user = current_user
    @post = Post.find(params[:id])
    @roast = Roast.find(params[:roast_id])
    if @post.update_attributes(post_params)
      flash[:notice] = 'Post was successfully updated.'
      @user.activities.create(action: "edited their post")
      redirect_to roast_path(@roast)
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @roast = Roast.find(params[:roast_id])
    @post = Post.find(params[:id])
    @user.activities.create(action: "deleted their post: #{@post.tldr}")
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
