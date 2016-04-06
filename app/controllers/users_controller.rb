class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @photo = Photo.new
  end

  private

  def photo_params
    if params[:photo].present?
      params.require(:photo).permit(:caption, :picture)
    end
  end

end
