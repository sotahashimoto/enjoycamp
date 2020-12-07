class Public::CampsitesController < ApplicationController
  before_action :authenticate_user!

  def top
    @campsites = Campsite.limit(6)
  end

  def index
    @campsites = Campsite.all.page(params[:page]).per(9)
  end

  def show
    @campsite = Campsite.find(params[:id])
  end

  def search
    @campsites = Campsite.search(params[:search]).page(params[:page]).per(9)
    render "index"
  end
end