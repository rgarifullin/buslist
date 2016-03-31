class NumberPlate < ActiveRecord::Base
  belongs_to :bus

  validates :series, presence: true
  validates :number, presence: true
  validates :region, presence: true, length: { in: 2..3 }

  def display
    "#{series.first.mb_chars.upcase}#{number}#{series[1..-1].mb_chars.upcase} #{region}"
  end
end
