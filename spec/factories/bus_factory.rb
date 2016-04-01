FactoryGirl.define do
  factory :bus1, class: Bus do
    name 'Higer'

    after(:create) do |bus|
      bus.number_plate = FactoryGirl.build(:number_plate1)
      bus.vehicle_licence = FactoryGirl.build(:vehicle_licence1)
    end
  end

  factory :bus2, class: Bus do
    name 'Nefaz'

    after(:create) do |bus|
      bus.number_plate = FactoryGirl.build(:number_plate2)
      bus.vehicle_licence = FactoryGirl.build(:vehicle_licence2)
    end
  end
end
