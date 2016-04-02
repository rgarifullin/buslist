class Bus < ActiveRecord::Base
  has_one :number_plate, dependent: :destroy
  has_one :vehicle_licence, dependent: :destroy

  has_many :photos, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :number_plate
  accepts_nested_attributes_for :vehicle_licence
  accepts_nested_attributes_for :photos, reject_if: proc { |attrs| attrs['image'].blank? }, allow_destroy: true

  paginates_per 10
end
