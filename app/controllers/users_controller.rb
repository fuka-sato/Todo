class UsersController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts.order("updated_at DESC").page(params[:page]).per(10)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end

  private 
  def user_params
    params.require(:user).permit(:nickname, :email)
  end
end
