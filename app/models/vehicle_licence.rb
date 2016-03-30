class VehicleLicence < ActiveRecord::Base
  belongs_to :bus

  validates :digit_code, presence: true, length: { is: 2 }, numericality: { only_integer: true }
  validates :letter_code, presence: true, length: { is: 2 }
  validates :number, presence: true, length: { is: 6 }, numericality: { only_integer: true }
  validates :release_date, presence: true

  def display
    "#{digit_code} #{letter_code} #{number}"
  end
end
