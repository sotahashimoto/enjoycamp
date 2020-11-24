class Public::RecruitmentsController < ApplicationController
  def show
    @campsite = Campsite.find(params[:id])
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

  private
  def recruitment_params
    params.require(:recruitment).permit(:title, :content, :scheduled_start_date, :scheduled_end_date)
  end
end