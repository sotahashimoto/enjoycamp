class Public::ParticipationsController < ApplicationController
  def index
    recruitment = Recruitment.find(params[:recruitment_id])
    @participations = recruitment.participations
  end

  def create
    @participation = current_user.participations.create(recruitment_id: params[:recruitment_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @recruitment = Recruitment.find(params[:recruitment_id])
    @participation = current_user.participations.find_by(recruitment_id: @recruitment.id)
    @participation.destroy
    redirect_back(fallback_location: root_path)
  end
end