class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @participations = @user.participations.includes([:campsite])
    @recruitments = @user.recruitments.includes([:campsite])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to public_user_path(current_user)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def user_params
    params.require(:user).permit(:image, :name, :favorite_place, :introduction)
  end
end