require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

	before :each do
		@reservoir = WaterReservoir.new(10, 0)
	end

	it 'has a capacity and initial water volume' do
		expect(@reservoir.capacity).to eq 10
		expect(@reservoir.current_water_volume).to eq 0
	end

	it 'is empty when current_water_volume is 0' do
		expect(@reservoir).to be_empty
	end

	it 'can fill the current_water_volume to capacity' do
		@reservoir.fill
		expect(@reservoir.current_water_volume).to eq 10
	end

	it 'can drain a given volume' do
		@reservoir.current_water_volume = 10
		@reservoir.drain(5)
		expect(@reservoir.current_water_volume).to eq 5
	end

end
