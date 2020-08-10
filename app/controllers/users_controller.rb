class UsersController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts.order("updated_at DESC").page(params[:page]).per(10)
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("updated_at DESC").page(params[:page]).per(10)
  end

  def update
    if current_user.update(user_params)
      redirect_to users_path,notice: '編集が完了しました'
    else
      flash.now[:notice] = '編集できませんでした'
      render :edit
    end
  end

  private 
  def user_params
    params.require(:user).permit(:nickname, :email)
  end
end
