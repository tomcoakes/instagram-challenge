class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_parameters)
    if @post.save
      redirect_to root_path  
    else
      flash[:notice] = "You must upload a photo"
      redirect_to :back
    end
  end

  def post_parameters
    params.require(:post).permit(:caption, :image)
  end

end
