class Directions
  attr_reader :distance, :travel_time, :directions

  def initialize(station_attributes)
    @distance = station_attributes[:distance]
    @travel_time = station_attributes[:formattedTime]
    @directions = formatted_directions(station_attributes[:legs].first[:maneuvers])
  end

  def formatted_directions(maneuvers)
    maneuvers.map { |maneuver| maneuver[:narrative] }
  end
end
