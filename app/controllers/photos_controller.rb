class PhotosController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create 
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(place: @place))
      redirect_to place_path(@place), notice: "Photo successfully added" 
  end

private

  def photo_params
    params.require(:photo).permit(:caption)
  end
end