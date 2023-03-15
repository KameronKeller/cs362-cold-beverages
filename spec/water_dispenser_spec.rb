require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

	it 'has a reservoir' do
		reservoir = WaterReservoir.new()
		dispenser = WaterDispenser.new(reservoir)
		expect(dispenser.reservoir).to be_an_instance_of WaterReservoir
	end




end
