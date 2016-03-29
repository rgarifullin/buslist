class Bus < ActiveRecord::Base
  has_one :number_plate, dependent: :destroy
  has_one :vehicle_licence, dependent: :destroy

  validates :name, presence: true
end
