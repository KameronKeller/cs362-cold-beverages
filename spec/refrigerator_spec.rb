require_relative '../lib/refrigerator'

describe 'A refrigerator' do

	before :each do
		@item = Item.new('FAKE', 10)
		@chiller = Chiller.new(100)
		@freezer = Freezer.new(100)
		@water_reservoir = WaterReservoir.new
		@water_dispenser = WaterDispenser.new(@water_reservoir)
		@refrigerator = Refrigerator.new(@chiller, @freezer, @water_dispenser, @water_reservoir)
	end

	it 'can chill an item' do
		@refrigerator.chill(@item)
		expect(@refrigerator.chiller.contents).to include(@item)
	end

	it 'can freeze an item' do
		@refrigerator.freeze(@item)
		expect(@refrigerator.freezer.contents).to include(@item)
	end

	it 'can return the total capacity' do
		expect(@refrigerator.total_capacity).to eq 200
	end

	it 'can return the remaining capacity' do
		expect(@refrigerator.total_capacity).to eq 200
	end

	it 'can be plugged in' do
		@refrigerator.plug_in
		expect(@refrigerator.power).to eq :on
		expect(@refrigerator.chiller.power).to eq :on
		expect(@refrigerator.freezer.power).to eq :on
	end

	it 'can be unplugged' do
		@refrigerator.unplug
		expect(@refrigerator.power).to eq :off
		expect(@refrigerator.chiller.power).to eq :off
		expect(@refrigerator.freezer.power).to eq :off
	end

	it 'can set the chiller level' do
		@refrigerator.set_chiller_level(1)
		expect(@refrigerator.chiller.temperature).to eq 65
	end

	it 'can set the freezer level' do
		@refrigerator.set_freezer_level(1)
		expect(@refrigerator.freezer.temperature).to eq 60
	end

end
