class NumberPlate < ActiveRecord::Base
  belongs_to :bus

  validates :series, presence: true
  validates :number, presence: true
  validates :region, presence: true, length: { in: 2..3 }
end
