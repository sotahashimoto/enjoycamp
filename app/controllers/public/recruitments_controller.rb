class Public::RecruitmentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @campsite = Campsite.find(params[:campsite_id])
    @recruitment = Recruitment.find(params[:id])
  end

  def index
    @campsite = Campsite.find(params[:campsite_id])
    @recruitment = Recruitment.new
    @recruitments = @campsite.recruitments.where("scheduled_start_date > ?", DateTime.now)
    @recruitments = @recruitments.where(is_active: "true").includes([:user])
  end

  def create
    @campsite = Campsite.find(params[:campsite_id])
    @recruitment = @campsite.recruitments.new(recruitment_params)
    @recruitment.user_id = current_user.id
    if @recruitment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  # キャンプ同行者募集を中止
  def activate
    @recruitment = Recruitment.find(params[:recruitment_id])
    if @recruitment.is_active == true
      @recruitment.update_attribute(:is_active, false)
      redirect_back(fallback_location: root_path)
    else
      @recruitment.update_attribute(:is_active, true)
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:image, :scheduled_start_date, :scheduled_end_date, :title, :content, :capacity, :is_active)
  end
end