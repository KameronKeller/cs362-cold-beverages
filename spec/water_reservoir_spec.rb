require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

	it 'has a capacity and initial water volume' do
		reservoir = WaterReservoir.new()
		expect(reservoir.capacity).to eq 10
		expect(reservoir.current_water_volume).to eq 0
	end

	it 'is empty when current_water_volume is 0' do
		reservoir = WaterReservoir.new(0, 0)
		expect(reservoir).to be_empty
	end

end
