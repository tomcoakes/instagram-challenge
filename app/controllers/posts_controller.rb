class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_parameters)
    redirect_to root_path
  end

  def post_parameters
    params.require(:post).permit(:caption)
  end

end
