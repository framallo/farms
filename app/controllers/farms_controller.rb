class FarmsController < ApplicationController

  def index
    @farms = Farm.all
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.create(farm_params)
    redirect_to farms_path
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def edit
    @farm = Farm.find(params[:id])
  end

  def update
    @farm = Farm.find(params[:id])
    @farm.update_attributes(farm_params)
    redirect_to farm_path(@farm)
  end

  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy
    redirect_to farms_path
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :description, :address)
  end

end
