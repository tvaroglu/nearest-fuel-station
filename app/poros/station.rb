class Station
  attr_reader :name, :address, :fuel_type, :access_times

  def initialize(station_attributes)
    @name = station_attributes[:station_name]
    @address = full_address(station_attributes)
    @fuel_type = full_fuel_type(station_attributes)
    @access_times = station_attributes[:access_days_time]
  end

  def full_address(station_attributes)
    ("#{station_attributes[:street_address]}, #{station_attributes[:city]}, #{station_attributes[:state]}")
  end

  def full_fuel_type(station_attributes)
    ("#{station_attributes[:fuel_type_code].downcase}tric").capitalize
  end
end
