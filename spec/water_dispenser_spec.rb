require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

	before :each do

	end

	it 'has a reservoir' do
		reservoir = WaterReservoir.new()
		dispenser = WaterDispenser.new(reservoir)
		expect(dispenser.reservoir).to be_an_instance_of WaterReservoir
	end

	it 'can dispense into a vessel' do
		reservoir = WaterReservoir.new(10, 10)
		dispenser = WaterDispenser.new(reservoir)
		vessel = Vessel.new('TestVessel', 5)
		expect(dispenser.dispense(vessel)).to eq 5
	end


end
