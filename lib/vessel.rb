class Vessel
  attr_reader :volume, :name

  def initialize(name='FAKE', volume=100)
    @name = name
    @volume = volume
  end

end
