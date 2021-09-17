class ApiFacade
  class << self
    def nearest_station(search_params)
      results = ApiService.render_request(ApiService.base_urls[:nrel], search_params)
      if !results[:errors]
        results[:fuel_stations].map { |station| Station.new(station) }
      end
    end

    def directions_from(current_location, station_address)
      results = ApiService.render_request(ApiService.base_urls[:mapquest], "#{current_location}&to=#{station_address}")
      if results[:route].present?
        Directions.new(results[:route])
      end
    end
  end
end
