class PhotosController < ApplicationController
  before_action :authenticate_user!


  def create
    @farm = Farm.find(params[:farm_id])
    @farm.photos.create(photo_params)

    if params[:redirect_action] == "show"
      redirect_to farm_path(@farm)
    else
      redirect_to edit_farm_path(@farm)
    end
  end

  def destroy
    @farm = Farm.find(params[:farm_id])
    @farm.photos.find(params[:id]).destroy
    redirect_to edit_farm_path(@farm)
  end

    private

    def photo_params
      if params[:photo].present?
        params.require(:photo).permit(:caption, :picture)
      end
    end

  end
