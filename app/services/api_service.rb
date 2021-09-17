class ApiService
  class << self
    def render_request(base_url, query_params)
      JSON.parse(Faraday.get("#{base_url}#{reformat(query_params)}").body, symbolize_names: true)
    end

    def reformat(search_params)
      search_params.gsub(/,/, '').gsub(/ /, '+')
    end

    def base_urls
      {
        nrel: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel']}&fuel_type=ELEC&limit=1&location=",
        mapquest: "http://www.mapquestapi.com/directions/v2/route?key=#{ENV['mq']}&from="
      }
    end
  end
end
