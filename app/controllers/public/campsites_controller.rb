class Public::CampsitesController < ApplicationController
  def top
    @campsites = Campsite.all
  end

  def index
    @campsites = Campsite.all
  end

  def show
    @campsite = Campsite.find(params[:id])
  end
end