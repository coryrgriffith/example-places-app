class Api::PlacesController < ApplicationController
  def index
    @places = Place.all
    render "index.json.jbuilder"
  end

  def show
    place_id = params[:id]
    @place = Place.find_by(id: place_id)
    render "show.json.jbuilder"
  end

  def create
    place_params = {
      name: params[:name],
      address: params[:address]
    }
    place = Place.new(place_params)
    if place.save
      @place = place
      render "show.json.jbuilder"
    else
      render json: "You did bad"
    end
  end
end
