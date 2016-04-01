require 'rails_helper'

RSpec.describe VehicleLicence, type: :model do
  let(:vehicle_licence1) { FactoryGirl.create(:vehicle_licence1) }
  let(:vehicle_licence2) { FactoryGirl.create(:vehicle_licence2) }

  #it 'dont save empty vehicle_licence' do
  #  empty_vehicle_licence = VehicleLicence.new()

  #  expect(empty_vehicle_licence.valid?).to eq false
  #end
end
