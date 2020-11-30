class Admin::CampsitesController < ApplicationController
  def new
    @campsite = Campsite.new
  end

  def index
    @campsites = Campsite.all
  end

  # def show
  #   @campsite = campsite.find(params[:id])
  #   @medical_departments = @campsite.medical_departments.sort
  #   @consultation_times = @campsite.consultation_times
  # end

  # def edit
  #   @campsite = campsite.find(params[:id])
  # end

  # def update
  #   campsite = campsite.find(params[:id])
  #   if campsite.update(campsite_params)
  #     redirect_to admin_campsites_path
  #   else
  #     render "edit"
  #   end
  # end

  def create
    campsite = Campsite.new(campsite_params)
    if campsite.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  # def destroy
  #   campsite = campsite.find(params[:id])
  #   campsite.destroy
  #   redirect_back(fallback_location: admin_campsites_path)
  # end

  private
  def campsite_params
    params.require(:campsite).permit(:name, :image, :postcode, :address)
  end
end
