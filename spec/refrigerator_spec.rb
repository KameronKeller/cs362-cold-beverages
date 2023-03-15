require_relative '../lib/refrigerator'

describe 'A refrigerator' do

	before :each do
		@item = Item.new('FAKE', 10)
		@chiller = Chiller.new
		@freezer = Freezer.new
		@water_reservoir = WaterReservoir.new
		@water_dispenser = WaterDispenser.new(@water_reservoir)
		@refrigerator = Refrigerator.new(@chiller, @freezer, @water_dispenser, @water_reservoir)
	end

	it 'can chill an item' do
		@refrigerator.chill(@item)
		expect(@refrigerator.chiller.contents).to include(@item)
	end

	it 'can freeze an item' do

	end

end
