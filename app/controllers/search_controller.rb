class SearchController < ApplicationController
  def index
    station = ApiFacade.nearest_station(params[:location]).first
    directions = ApiFacade.directions_from(params[:location], station.address)
    # require "pry"; binding.pry
  end

  def example_params_REMOVE
    {"location"=>"5224 W 25th Ave, Denver, CO 80214",
      "commit"=>"Find Nearest Station",
      "controller"=>"search",
      "action"=>"index"}
  end
end
