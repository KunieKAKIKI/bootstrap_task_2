class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #redirect_to user_path(@user.id)
      redirect_to new_session_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @favorite_blogs = @user.favorite_blogs
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image, :image_cache)
  end
  
end
