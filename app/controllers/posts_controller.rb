class PostsController < ApplicationController
  def index
    @posts = Post.order("updated_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path and return
    else
      render :new and return
    end 
  end

  def confirm
  end

  private
  def post_params
    params.require(:post).permit(:title, :body,:url, :tag_list).merge(user_id: current_user.id)
  end
end
