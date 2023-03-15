class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    if reservoir.current_water_volume < vessel.volume
      reservoir.drain(reservoir.current_water_volume)
    else
      reservoir.drain(vessel.volume)
    end
  end

end
