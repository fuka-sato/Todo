class UsersController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts.order("updated_at DESC").page(params[:page]).per(10)
  end
end
