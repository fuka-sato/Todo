class PostsController < ApplicationController
  before_action :set_post,only: [:show, :destroy,:edit, :update]

  def index
    @posts = Post.all.includes(:tags).order("updated_at DESC").page(params[:page]).per(10)
    if params[:tag_name]
      @posts = Post.tagged_with("#{params[:tag_name]}").order("updated_at DESC").page(params[:page]).per(10)
    end
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

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path,notice: '編集が完了しました'
    else
      flash.now[:notice] = '編集できませんでした'
      render :edit
      return
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      redirect_to posts_path,notice: '削除できました'
    else
      flash.now[:notice] = '削除できませんでした'
      render :index
      return
    end
  end

  def set_post
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :body,:url, :tag_list).merge(user_id: current_user.id)
  end
end
