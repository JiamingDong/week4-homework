class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
  end

  def create
    Place.create title: params[:title],
                 price: (params[:price].to_f * 100).to_i,
                 photo_url: params[:url],
                 desc: params[:desc]

    redirect_to root_path
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update title: params[:title],
                 price: (params[:price].to_f * 100).to_i,
                 photo_url: params[:url],
                 desc: params[:desc]

    redirect_to "/places/#{@place.id}"
  end

  def destroy
    Place.delete(params[:id])
    redirect_to root_path
  end


end
