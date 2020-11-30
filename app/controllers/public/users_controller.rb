class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  # require 'date'
  def show
    @user = User.find(params[:id])
    @participations = @user.participations.includes([:campsite])
    # キャンプ募集の開始部日が今日より前で募集中の時に表示
    @recruitments = @user.recruitments.where("scheduled_start_date > ?", DateTime.now)
    @recruitments = @recruitments.where(is_active: "true").includes([:campsite])
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to public_user_path(current_user)
    end
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
    params.require(:user).permit(:image, :name, :email, :favorite_place, :introduction)
  end
end