class NumberPlate < ActiveRecord::Base
  belongs_to :bus

  before_validation :check_case

  validates :series, presence: true
  validates :number, presence: true
  validates :region, presence: true, length: { in: 2..3 }

  def display
    "#{series.first}#{number}#{series[1..-1]} #{region}"
  end

  protected

  def check_case
    self.series = series.mb_chars.upcase.to_s
  end
end
