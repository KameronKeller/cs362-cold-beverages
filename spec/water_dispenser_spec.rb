require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

	before :each do

	end

	it 'has a reservoir' do
		reservoir = WaterReservoir.new()
		dispenser = WaterDispenser.new(reservoir)
		expect(dispenser.reservoir).to be_an_instance_of WaterReservoir
	end

	it 'will only despense up to the available amount of water in the reservoir' do
		reservoir = WaterReservoir.new(10, 0)
		dispenser = WaterDispenser.new(reservoir)
		vessel = Vessel.new('TestVessel', 5)
		expect(dispenser.dispense(vessel)).to eq 0
	end

	it 'will fill a vessel with dispense if the reservoir has enough water' do
		reservoir = WaterReservoir.new(10, 10)
		dispenser = WaterDispenser.new(reservoir)
		vessel = Vessel.new('TestVessel', 5)
		expect(dispenser.dispense(vessel)).to eq 5
	end


end
