require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

	it 'has a capacity and initial water volume' do
		reservoir = WaterReservoir.new()
		expect(reservoir.capacity).to eq 10
		expect(reservoir.current_water_volume).to eq 0
	end

end
