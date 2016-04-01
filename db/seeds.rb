# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
number_plate = NumberPlate.new(series: 'ааа', number: 123, region: 116)
vehicle_licence = VehicleLicence.new(digit_code: 77,
                                     letter_code: 'то',
                                     number: 123456,
                                     release_date: '2016-01-01'
)
bus = Bus.create(name: 'Higer',
                  number_plate: number_plate,
                  vehicle_licence: vehicle_licence
)

number_plate2 = NumberPlate.new(series: 'нон', number: 623, region: 116)
vehicle_licence2 = VehicleLicence.new(digit_code: 78,
                                      letter_code: 'тт',
                                      number: 123987,
                                      release_date: '2016-03-02'
)
bus2 = Bus.create(name: 'Paz',
                  number_plate: number_plate2,
                  vehicle_licence: vehicle_licence2
)
