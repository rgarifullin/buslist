FactoryGirl.define do
  factory :number_plate1, class: NumberPlate do
    series 'ааа'
    number 123
    region 116
  end

  factory :number_plate2, class: NumberPlate do
    series 'ано'
    number 133
    region 116
  end
end
