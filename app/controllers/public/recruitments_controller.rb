class Public::RecruitmentsController < ApplicationController
  def show
    @campsite = Campsite.find(params[:campsite_id])
    @recruitment = Recruitment.find(params[:id])
  end

  def index
    @campsite = Campsite.find(params[:campsite_id])
    @recruitment = Recruitment.new
    @recruitments = @campsite.recruitments
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
    if @recruitment.update_attribute(:is_active, false)
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:scheduled_start_date, :scheduled_end_date, :title, :content, :is_active)
  end
end