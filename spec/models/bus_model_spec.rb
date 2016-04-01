require 'rails_helper'

RSpec.describe Bus, type: :model do
  let(:bus1) { FactoryGirl.create(:bus1) }
  let(:bus2) { FactoryGirl.create(:bus2) }

  it 'orders by name' do
    expect(Bus.order(:name)). to eq [bus1, bus2]
  end

  it 'dont save empty bus' do
    empty_bus = Bus.new()

    expect(empty_bus.valid?).to eq false
  end
end
