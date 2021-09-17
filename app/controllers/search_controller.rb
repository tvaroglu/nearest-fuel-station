class SearchController < ApplicationController
  def index
    @station = ApiFacade.nearest_station(params[:location]).first
    @directions = ApiFacade.directions_from(params[:location], @station.address)
  end
end
