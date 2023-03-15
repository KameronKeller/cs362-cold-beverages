class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    vessel.fill
    if reservoir.current_water_volume < vessel.volume
      reservoir.drain(reservoir.current_water_volume)
    else
      reservoir.drain(vessel.volume)
    end
  end

end
