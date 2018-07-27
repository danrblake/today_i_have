class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post
      redirect_to posts_index_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :tag)
  end
end
