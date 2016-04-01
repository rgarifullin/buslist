FactoryGirl.define do
  factory :vehicle_licence1, class: VehicleLicence do
    digit_code 70
    letter_code 'тт'
    number 123123
    release_date Date.new
  end

  factory :vehicle_licence2, class: VehicleLicence do
    digit_code 78
    letter_code 'то'
    number 123771
    release_date Date.new
  end
end
