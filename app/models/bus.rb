class Bus < ActiveRecord::Base
  has_one :number_plate, dependent: :destroy
  has_one :vehicle_licence, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :number_plate
  accepts_nested_attributes_for :vehicle_licence

  mount_uploaders :photos, PhotoUploader
end
