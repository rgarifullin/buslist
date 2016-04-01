require 'rails_helper'

RSpec.describe NumberPlate, type: :model do
  let(:number_plate1) { FactoryGirl.create(:number_plate1) }
  let(:number_plate2) { FactoryGirl.create(:number_plate2) }

  #it 'dont save empty number_plate' do
  #  empty_number_plate = NumberPlate.new()

  #  expect(empty_number_plate.valid?).to eq false
  #end
end
