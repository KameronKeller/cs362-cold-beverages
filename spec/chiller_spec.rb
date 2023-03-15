require_relative '../lib/chiller'

describe 'A chiller' do

	before :each do
		@chiller = Chiller.new()
	end

	it 'has a capacity, temperature, and power setting' do
		expect(@chiller.capacity).to eq 100
		expect(@chiller.temperature).to eq 70
		expect(@chiller.power).to eq :off
	end

	it 'can turn power on' do
		@chiller.turn_on
		expect(@chiller.power).to eq :on
	end

	it 'can turn power off' do
		@chiller.turn_off
		expect(@chiller.power).to eq :off
	end

	it 'can add items' do
		@chiller.add('item')
		expect(@chiller.contents).to include('item')
	end

	it 'can return remaining capacity' do
		item = Item.new('test', 1)
		@chiller.add(item)
		expect(@chiller.remaining_capacity).to eq 99
	end

	it 'can set temperature level' do
		@chiller.set_level(1)
		expect(@chiller.temperature).to eq 65
	end

end
