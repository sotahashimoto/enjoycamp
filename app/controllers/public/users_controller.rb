class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @recruitments = @user.recruitments.includes([:campsite])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render "show"
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end