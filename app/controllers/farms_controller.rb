class FarmsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
# same as: before_action(:authenticate_user!, { only: [:new, :create, :edit, :update, :destroy]})

  def index
    @farms = Farm.all.paginate(:page => params[:page], :per_page => 4)
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = current_user.farms.create(farm_params)
    if @farm.valid?
      redirect_to farm_path(@farm)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @farm = Farm.find(params[:id])
    @amenities = Amenity.all
    @photo = Photo.new
    @comment = Comment.new
    @comments = @farm.comments.paginate(:page => params[:page], :per_page => 4)
  end

  def edit
    @photo = Photo.new
    @farm = Farm.find(params[:id])

    if @farm.user != current_user
      return render text: 'You can only edit your own farm', status: :forbidden
    end
  end

  def update
    @farm = Farm.find(params[:id])

    if @farm.user != current_user
      return render text: 'You can only update your own farm', status: :forbidden
    end

    @farm.update_attributes(farm_params)
    if @farm.valid?
      redirect_to edit_farm_path(@farm)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @farm = Farm.find(params[:id])

    if @farm.user != current_user
      return render text: 'You can only delete your own farm', status: :forbidden
    end

    @farm.destroy
    redirect_to farms_path
  end

  def credits
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :description, :address, amenity_ids: [])
  end

end
