require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

	before :each do
		@reservoir = WaterReservoir.new(10, 10)
		@dispenser = WaterDispenser.new(@reservoir)
	end

	it 'has a reservoir' do
		expect(@dispenser.reservoir).to be_an_instance_of WaterReservoir
	end

	it 'will only despense up to the available amount of water in the reservoir' do
		@reservoir.current_water_volume = 0
		vessel = Vessel.new('TestVessel', 5)
		expect(@dispenser.dispense(vessel)).to eq 0
	end

	it 'will fill a vessel with dispense if the reservoir has enough water' do
		vessel = Vessel.new('TestVessel', 5)
		expect(@dispenser.dispense(vessel)).to eq 5
	end

	it 'a vessel is filled when it is dispensed into' do
		vessel = Vessel.new('TestVessel', 5)
		@dispenser.dispense(vessel)
		expect(vessel).to_not be_empty
	end


end
