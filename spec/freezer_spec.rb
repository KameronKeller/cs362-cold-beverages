require_relative '../lib/freezer'

describe 'A freezer' do

	before :each do
		@freezer = Freezer.new()
	end

	it 'has a capacity, temperature, and power setting' do
		expect(@freezer.capacity).to eq 100
		expect(@freezer.temperature).to eq 70
		expect(@freezer.power).to eq :off
	end

	it 'can turn power on' do
		@freezer.turn_on
		expect(@freezer.power).to eq :on
	end

	it 'can turn power off' do
		@freezer.turn_off
		expect(@freezer.power).to eq :off
	end

	it 'can add items' do
		@freezer.add('item')
		expect(@freezer.contents).to include('item')
	end


end
